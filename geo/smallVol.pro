Group {
  start_vol   = Region[28713];
  inner_surf  = Region[{28690,28611,28613,28615}];
  StartVol    =          Region[{start_vol, inner_surf}] ;
  }

Function {

  k[StartVol]=0.15                ;               // W / cm*K W-Leitfaehigkeit
  rhoc[StartVol]= 7.9e3/1e6 * 700 ;    // kg/cm^3 x J / kg*K Dichte x W-Kapazität
  
  TimeFct[] = ($Time < 10) ? 1 : 10 ;
              t0 = 0                ;
  t1 = 1000                         ;
  dt = 10                          ;
}

Constraint {

  { Name Dyn_T ; /*Type Assign;*/
    Case {
      { Region inner_surf; Type Assign; Value 296.15; TimeFunction TimeFct[]; }
      { Region start_vol; Type Init; Value 300.15 ;}
                // If you swap these two lines you get a stationary
                // solution with T(x) = 10 forever !!??
    }
  }
}
Jacobian {
{ Name CartVol;
    Case {
      { Region  start_vol       ; Jacobian Vol ; }
      { Region  inner_surf      ; Jacobian Sur ; }
      { Region  StartVol       ; Jacobian Vol ; }
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
    BasisFunction {
      { Name sn; NameOfCoef Tn; Function BF_Node; Support Region[{start_vol, inner_surf}];
        Entity NodesOf[StartVol]; }
    }
    Constraint {
      { NameOfCoef Tn; EntityType NodesOf ; NameOfConstraint Dyn_T; }
    }
  }

}

Function{
  DefineFunction[qVol];
}



Formulation {

  { Name The_T ; Type FemEquation;
    Quantity {
      { Name T;  Type Local; NameOfSpace Hgrad_T; }
    }
    Equation {
      Galerkin { [ k[] * Dof{d T} , {d T} ];
                 In StartVol; Integration I1; Jacobian CartVol;  }
      Galerkin { Dt [ rhoc[] * Dof{T} , {T} ];
                 In StartVol; Integration I1; Jacobian CartVol;  }
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
      { Name T; Value{ Local{ [ {T} ] ; In StartVol; Jacobian CartVol; } } }
      { Name q; Value{ Local{ [ -k[]*{ Grad T} ] ; In StartVol; Jacobian CartVol;} } }
      { Name q_abs; Value{ Local{ [ -k[]*Norm[{ Grad T}] ] ; In StartVol; Jacobian CartVol;} } }
    }
  }

}



PostOperation{
{ Name both                     ; NameOfPostProcessing The; 
Operation {
    Print [ T , OnElementsOf  StartVol, File "smalVol.pos" ] ;
    }
    } 
    }
    