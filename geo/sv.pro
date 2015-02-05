Group {
    cylin_vol    = Region[103];
    T_01         = Region[104];
    T_02         = Region[105];
    T_03         = Region[106];
    T_04         = Region[107];
    T_05         = Region[108];
    T_06         = Region[109];
    T_07         = Region[110];
    T_08         = Region[111];
    T_09         = Region[112];
    T_10         = Region[113];
    T_11         = Region[114];
    T_12         = Region[115];
    T_13         = Region[116];
    T_14         = Region[117];
    gas_sur     = Region[102]; 
                       
    start_vol   = Region[{ cylin_vol
                           , gas_sur
      }] ;
} 

Function {

  //    k[start_vol]    = 0.15;            // W / cm*K W-Leitfaehigkeit (Stahl z. B. X5CrNi18-10)
    k[start_vol]    = 2.0;                 // W / cm*K W-Leitfaehigkeit (Aluminiumlegierungen 	75…235)
    //   rhoc[start_vol] = 7.9e3/1e6 * 477 ;    // kg/cm^3 x J / kg*K Dichte x W-Kapazität (Stahl V2A 	20 	477 	8000)
    rhoc[start_vol] = 2.8e3/1e6 * 896 ;    // kg/cm^3 x J / kg*K Dichte x W-Kapazität (Aluminium 	20 	896 	2800)

    TimeFct[] = $Time;
    t0        = 0;
    t1        = 240;
    dt        = 10;
}

Constraint {
    { Name Dyn_T ; /*Type Assign;*/
        Case {
            { Region T_01; Type Assign; Value 293.15; }
            { Region T_02; Type Assign; Value 294.15; }
            { Region T_03; Type Assign; Value 293.15; }
            { Region T_04; Type Assign; Value 294.15; }
            { Region T_05; Type Assign; Value 293.15; }
            { Region T_06; Type Assign; Value 294.15; }
            { Region T_07; Type Assign; Value 293.15; }
            { Region T_08; Type Assign; Value 294.15; }
            { Region T_09; Type Assign; Value 293.15; }
            { Region T_10; Type Assign; Value 294.15; }
            { Region T_11; Type Assign; Value 293.15; }
            { Region cylin_vol; Type Init; Value 293.8; TimeFunction TimeFct[]; }
        }
    }
}

Jacobian {
    { Name CartVol;
        Case {
            { Region  cylin_vol  ; Jacobian Vol ; }
            { Region  gas_sur  ; Jacobian Vol ; }
            { Region  start_vol  ; Jacobian Vol ; }
        }
    }
}

Integration {
    { Name I1 ;
        Case {
            { Type Gauss ;
                Case {
                    { GeoElement Point       ; NumberOfPoints  1 ; }
                    { GeoElement Line        ; NumberOfPoints  3 ; }
                    { GeoElement Triangle    ; NumberOfPoints  4 ; }
                    { GeoElement Quadrangle  ; NumberOfPoints  4 ; }
                    { GeoElement Tetrahedron ; NumberOfPoints  4 ; }
                    { GeoElement Hexahedron  ; NumberOfPoints  6 ; }
                    { GeoElement Prism       ; NumberOfPoints  6 ; }
                    { GeoElement Pyramid     ; NumberOfPoints  8 ; } 
               }
            }
        }
    }
}

FunctionSpace {
    { Name Hgrad_T; Type Form0;
        BasisFunction{
            { Name wn; NameOfCoef vn; Function BF_Node;
                Support  Region[{cylin_vol, gas_sur}]; Entity NodesOf[All];}
        }
        Constraint {
            { NameOfCoef vn; EntityType NodesOf;
                NameOfConstraint Dyn_T; }
        }
    }
}

Formulation {
    { Name The_T ; Type FemEquation;
        Quantity {
            { Name T;  Type Local; NameOfSpace Hgrad_T; }
        }
        Equation {
	    Galerkin { [ k[] * Dof{d T} , {d T} ];
		In Region[{cylin_vol, gas_sur}]; Integration I1; Jacobian CartVol;  }
	    Galerkin { Dt [ rhoc[] * Dof{T} , {T} ];
                In Region[{cylin_vol, gas_sur}]; Integration I1; Jacobian CartVol;  }
        }
    }

}


Resolution {
    { Name linear;
        System {
            { Name T; NameOfFormulation The_T; }
        }
        Operation {
            InitSolution T ;
            TimeLoopTheta {
                Time0  t0 ; TimeMax t1 ; DTime dt ; Theta 1. ;
                Operation {
                    Generate T ; Solve T ; SaveSolution T;
                }
            }
        }
    }
}

PostProcessing {
    { Name The; NameOfFormulation The_T;
        Quantity {
            { Name T; Value{ Local{ [ {T} ] ; In start_vol; Jacobian CartVol; } } }
            { Name q; Value{ Local{ [ -k[]*{ Grad T} ] ; In start_vol; Jacobian CartVol;} } }
            { Name q_abs; Value{ Local{ [ -k[]*Norm[{ Grad T}] ] ; In start_vol; Jacobian CartVol;} } }
        }
    }

}



PostOperation{
    { Name both                     ; NameOfPostProcessing The;
        Operation {
            Print [ T , OnElementsOf  start_vol, File "smallVol.pos" ] ;
        }
    }
}
