node top
  (e01: bool;
  e02: bool;
  e03: bool;
  e04: bool;
  e05: bool;
  e06: bool;
  e07: bool;
  e08: bool;
  e09: bool;
  e10: bool;
  e11: bool;
  e12: bool)
returns
  (OK: bool);

var
  V67_X1: int;
  V68_X2: int;
  V69_X3: int;
  V70_X4: int;
  V71_X5: int;
  V72_X6: int;
  V73_X7: int;
  V74_X8: int;
  V75_X9: int;
  V76_erreur: bool;
  V77_env: bool;
  V140_g01: bool;
  V141_g02: bool;
  V142_g03: bool;
  V143_g04: bool;
  V144_g05: bool;
  V145_g06: bool;
  V146_g07: bool;
  V147_g08: bool;
  V148_g09: bool;
  V149_g10: bool;
  V150_g11: bool;
  V151_g12: bool;
  V172_X: bool;

let
  OK = (V77_env => (V70_X4 >= 0));
  V67_X1 = (1 -> (if e01 then (if V140_g01 then ((pre V67_X1) - 1) else (pre 
  V67_X1)) else (pre V67_X1)));
  V68_X2 = (0 -> (if e01 then (if V140_g01 then ((pre V68_X2) + 1) else (pre 
  V68_X2)) else (if e02 then (if V141_g02 then ((pre V68_X2) - 1) else (pre 
  V68_X2)) else (if e12 then (if V151_g12 then ((pre V68_X2) + 1) else (pre 
  V68_X2)) else (pre V68_X2)))));
  V69_X3 = (0 -> (if e02 then (if V141_g02 then ((pre V69_X3) + 1) else (pre 
  V69_X3)) else (if e03 then (if V142_g03 then ((pre V69_X3) - 1) else (pre 
  V69_X3)) else (pre V69_X3))));
  V70_X4 = (0 -> (if e03 then (if V142_g03 then ((pre V70_X4) + 1) else (pre 
  V70_X4)) else (if e04 then (if V143_g04 then ((pre V70_X4) - 1) else (pre 
  V70_X4)) else (if e05 then (if V144_g05 then ((pre V70_X4) - 1) else (pre 
  V70_X4)) else (pre V70_X4)))));
  V71_X5 = (0 -> (if e04 then (if V143_g04 then ((pre V71_X5) + 1) else (pre 
  V71_X5)) else (if e06 then (if V145_g06 then ((pre V71_X5) - 1) else (pre 
  V71_X5)) else (pre V71_X5))));
  V72_X6 = (0 -> (if e06 then (if V145_g06 then ((pre V72_X6) + 1) else (pre 
  V72_X6)) else (if e07 then (if V146_g07 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (if e08 then (if V147_g08 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (if e09 then (if V148_g09 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (pre V72_X6))))));
  V73_X7 = (0 -> (if e08 then (if V147_g08 then ((pre V73_X7) + 1) else (pre 
  V73_X7)) else (if e10 then (if V149_g10 then ((pre V73_X7) - 1) else (pre 
  V73_X7)) else (pre V73_X7))));
  V74_X8 = (0 -> (if e09 then (if V148_g09 then ((pre V74_X8) + 1) else (pre 
  V74_X8)) else (if e11 then (if V150_g11 then ((pre V74_X8) - 1) else (pre 
  V74_X8)) else (pre V74_X8))));
  V75_X9 = (0 -> (if e05 then (if V144_g05 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e07 then (if V146_g07 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e10 then (if V149_g10 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e11 then (if V150_g11 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e12 then (if V151_g12 then ((pre V75_X9) - 1) else (pre 
  V75_X9)) else (pre V75_X9)))))));
  V76_erreur = (if (V67_X1 >= 2) then true else false);
  V77_env = (V172_X -> (V172_X and (pre V77_env)));
  V140_g01 = ((pre V67_X1) >= 1);
  V141_g02 = ((pre V68_X2) >= 1);
  V142_g03 = ((pre V69_X3) >= 1);
  V143_g04 = ((pre V70_X4) >= 1);
  V144_g05 = ((pre V70_X4) >= 1);
  V145_g06 = ((pre V71_X5) >= 1);
  V146_g07 = ((pre V72_X6) >= 1);
  V147_g08 = ((pre V72_X6) >= 1);
  V148_g09 = ((pre V72_X6) >= 1);
  V149_g10 = ((pre V73_X7) >= 1);
  V150_g11 = ((pre V74_X8) >= 1);
  V151_g12 = ((pre V75_X9) >= 1);
  V172_X = (((((((((((((((((((((((((not e01) and (not e02)) and (not e03)) and 
  (not e04)) and (not e05)) and (not e06)) and (not e07)) and (not e08)) and 
  (not e09)) and (not e10)) and (not e11)) and (not e12)) or (((((((((((e01 and 
  (not e02)) and (not e03)) and (not e04)) and (not e05)) and (not e06)) and 
  (not e07)) and (not e08)) and (not e09)) and (not e10)) and (not e11)) and 
  (not e12))) or ((((((((((((not e01) and e02) and (not e03)) and (not e04)) 
  and (not e05)) and (not e06)) and (not e07)) and (not e08)) and (not e09)) 
  and (not e10)) and (not e11)) and (not e12))) or ((((((((((((not e01) and 
  (not e02)) and e03) and (not e04)) and (not e05)) and (not e06)) and (not e07
  )) and (not e08)) and (not e09)) and (not e10)) and (not e11)) and (not e12))
  ) or ((((((((((((not e01) and (not e02)) and (not e03)) and e04) and (not e05
  )) and (not e06)) and (not e07)) and (not e08)) and (not e09)) and (not e10)) 
  and (not e11)) and (not e12))) or ((((((((((((not e01) and (not e02)) and 
  (not e03)) and (not e04)) and e05) and (not e06)) and (not e07)) and (not e08
  )) and (not e09)) and (not e10)) and (not e11)) and (not e12))) or ((((((((((
  ((not e01) and (not e02)) and (not e03)) and (not e04)) and (not e05)) and 
  e06) and (not e07)) and (not e08)) and (not e09)) and (not e10)) and (not e11
  )) and (not e12))) or ((((((((((((not e01) and (not e02)) and (not e03)) and 
  (not e04)) and (not e05)) and (not e06)) and e07) and (not e08)) and (not e09
  )) and (not e10)) and (not e11)) and (not e12))) or ((((((((((((not e01) and 
  (not e02)) and (not e03)) and (not e04)) and (not e05)) and (not e06)) and 
  (not e07)) and e08) and (not e09)) and (not e10)) and (not e11)) and (not e12
  ))) or ((((((((((((not e01) and (not e02)) and (not e03)) and (not e04)) and 
  (not e05)) and (not e06)) and (not e07)) and (not e08)) and e09) and (not e10
  )) and (not e11)) and (not e12))) or ((((((((((((not e01) and (not e02)) and 
  (not e03)) and (not e04)) and (not e05)) and (not e06)) and (not e07)) and 
  (not e08)) and (not e09)) and e10) and (not e11)) and (not e12))) or ((((((((
  ((((not e01) and (not e02)) and (not e03)) and (not e04)) and (not e05)) and 
  (not e06)) and (not e07)) and (not e08)) and (not e09)) and (not e10)) and 
  e11) and (not e12))) or ((((((((((((not e01) and (not e02)) and (not e03)) 
  and (not e04)) and (not e05)) and (not e06)) and (not e07)) and (not e08)) 
  and (not e09)) and (not e10)) and (not e11)) and e12)) and (V70_X4 < 32767));
    --%PROPERTY OK=true;


tel.

