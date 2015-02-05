Group {
    cylin_vol   = Region[110];
    inner_sur   = Region[109];                        
    start_vol    = Region[{cylin_vol, inner_sur}] ;
} 

Function {

    k[cylin_vol]=0.15                ;               // W / cm*K W-Leitfaehigkeit
    rhoc[cylin_vol]= 9.9e3/1e6 * 700 ;    // kg/cm^3 x J / kg*K Dichte x W-Kapazität

    k[inner_sur]=0.15                ;               // W / cm*K W-Leitfaehigkeit
    rhoc[inner_sur]= 7.9e3/1e6 * 700 ;    // kg/cm^3 x J / kg*K Dichte x W-Kapazität


    TimeFct[] = ($Time < 10) ? 1 : 10 ;
    t0 = 0;
    t1 = 100;
    dt = 10.;
}

Constraint {
    { Name Dyn_T ; /*Type Assign;*/
        Case {
            { Region inner_sur; Type Init; Value 300.15; TimeFunction TimeFct[];}
        }
        Case {
            { Region cylin_vol; Type Init; Value 296.15; }
        }
    }
}

Jacobian {
    { Name CartVol;
        Case {
            { Region  cylin_vol  ; Jacobian Vol ; }
            { Region  inner_sur  ; Jacobian Sur ; }
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
                }
            }
        }
    }
}

FunctionSpace {
    { Name Hgrad_T; Type Form0;
        BasisFunction{
            { Name wn; NameOfCoef vn; Function BF_Node;
                Support  Region[{cylin_vol, inner_sur}]; Entity NodesOf[All];}
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
		In start_vol; Integration I1; Jacobian CartVol;  }
	    Galerkin { Dt [ rhoc[] * Dof{T} , {T} ];
                In start_vol; Integration I1; Jacobian CartVol;  }
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
