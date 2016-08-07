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
  V76_R1: bool;
  V77_R2: bool;
  V78_R3: bool;
  V79_R4: bool;
  V80_erreur: bool;
  V81_env: bool;
  V144_g01: bool;
  V145_g02: bool;
  V146_g03: bool;
  V147_g04: bool;
  V148_g05: bool;
  V149_g06: bool;
  V150_g07: bool;
  V151_g08: bool;
  V152_g09: bool;
  V153_g10: bool;
  V154_g11: bool;
  V155_g12: bool;
  V175_X: bool;

let
  OK = (((V76_R1 and V77_R2) and V78_R3) and V79_R4);
  V67_X1 = (1 -> (if e01 then (if V144_g01 then ((pre V67_X1) - 1) else (pre 
  V67_X1)) else (pre V67_X1)));
  V68_X2 = (0 -> (if e01 then (if V144_g01 then ((pre V68_X2) + 1) else (pre 
  V68_X2)) else (if e02 then (if V145_g02 then ((pre V68_X2) - 1) else (pre 
  V68_X2)) else (if e12 then (if V155_g12 then ((pre V68_X2) + 1) else (pre 
  V68_X2)) else (pre V68_X2)))));
  V69_X3 = (0 -> (if e02 then (if V145_g02 then ((pre V69_X3) + 1) else (pre 
  V69_X3)) else (if e03 then (if V146_g03 then ((pre V69_X3) - 1) else (pre 
  V69_X3)) else (pre V69_X3))));
  V70_X4 = (0 -> (if e03 then (if V146_g03 then ((pre V70_X4) + 1) else (pre 
  V70_X4)) else (if e04 then (if V147_g04 then ((pre V70_X4) - 1) else (pre 
  V70_X4)) else (if e05 then (if V148_g05 then ((pre V70_X4) - 1) else (pre 
  V70_X4)) else (pre V70_X4)))));
  V71_X5 = (0 -> (if e04 then (if V147_g04 then ((pre V71_X5) + 1) else (pre 
  V71_X5)) else (if e06 then (if V149_g06 then ((pre V71_X5) - 1) else (pre 
  V71_X5)) else (pre V71_X5))));
  V72_X6 = (0 -> (if e06 then (if V149_g06 then ((pre V72_X6) + 1) else (pre 
  V72_X6)) else (if e07 then (if V150_g07 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (if e08 then (if V151_g08 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (if e09 then (if V152_g09 then ((pre V72_X6) - 1) else (pre 
  V72_X6)) else (pre V72_X6))))));
  V73_X7 = (0 -> (if e08 then (if V151_g08 then ((pre V73_X7) + 1) else (pre 
  V73_X7)) else (if e10 then (if V153_g10 then ((pre V73_X7) - 1) else (pre 
  V73_X7)) else (pre V73_X7))));
  V74_X8 = (0 -> (if e09 then (if V152_g09 then ((pre V74_X8) + 1) else (pre 
  V74_X8)) else (if e11 then (if V154_g11 then ((pre V74_X8) - 1) else (pre 
  V74_X8)) else (pre V74_X8))));
  V75_X9 = (0 -> (if e05 then (if V148_g05 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e07 then (if V150_g07 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e10 then (if V153_g10 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e11 then (if V154_g11 then ((pre V75_X9) + 1) else (pre 
  V75_X9)) else (if e12 then (if V155_g12 then ((pre V75_X9) - 1) else (pre 
  V75_X9)) else (pre V75_X9)))))));
  V76_R1 = (V81_env => (true -> (((pre V68_X2) >= 0) => (V68_X2 >= 0))));
  V77_R2 = (V81_env => (V68_X2 >= 0));
  V78_R3 = (V81_env => (true -> (((pre V68_X2) < 2) => (V68_X2 < 2))));
  V79_R4 = (V81_env => (V68_X2 < 2));
  V80_erreur = (if (V67_X1 >= 2) then true else false);
  V81_env = (V175_X -> (V175_X and (pre V81_env)));
  V144_g01 = ((pre V67_X1) >= 1);
  V145_g02 = ((pre V68_X2) >= 1);
  V146_g03 = ((pre V69_X3) >= 1);
  V147_g04 = ((pre V70_X4) >= 1);
  V148_g05 = ((pre V70_X4) >= 1);
  V149_g06 = ((pre V71_X5) >= 1);
  V150_g07 = ((pre V72_X6) >= 1);
  V151_g08 = ((pre V72_X6) >= 1);
  V152_g09 = ((pre V72_X6) >= 1);
  V153_g10 = ((pre V73_X7) >= 1);
  V154_g11 = ((pre V74_X8) >= 1);
  V155_g12 = ((pre V75_X9) >= 1);
  V175_X = ((((((((((((((((((((((((not e01) and (not e02)) and (not e03)) and 
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
  and (not e09)) and (not e10)) and (not e11)) and e12));
    --%PROPERTY OK=true;


tel.

