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
  V71_x0: int;
  V72_x1: int;
  V73_x2: int;
  V74_x3: int;
  V75_x4: int;
  V76_x5: int;
  V77_x6: int;
  V78_x7: int;
  V79_x8: int;
  V80_x9: int;
  V81_x10: int;
  V82_x11: int;
  V83_x12: int;
  V84_x13: int;
  V85_env: bool;
  V150_g01: bool;
  V151_g02: bool;
  V152_g03: bool;
  V153_g04: bool;
  V154_g05: bool;
  V155_g06: bool;
  V156_g07: bool;
  V157_g08: bool;
  V158_g09: bool;
  V159_g10: bool;
  V160_g11: bool;
  V161_g12: bool;
  V183_X: bool;

let
  OK = (V85_env => (V74_x3 >= 0));
  V71_x0 = (1 -> (if e01 then (if V150_g01 then ((pre V71_x0) - 1) else (pre 
  V71_x0)) else (if e06 then (if V155_g06 then ((pre V71_x0) + 1) else (pre 
  V71_x0)) else (pre V71_x0))));
  V72_x1 = (0 -> (if e01 then (if V150_g01 then ((pre V72_x1) + 1) else (pre 
  V72_x1)) else (if e02 then (if V151_g02 then ((pre V72_x1) - 1) else (pre 
  V72_x1)) else (if e03 then (if V152_g03 then ((pre V72_x1) - 1) else (pre 
  V72_x1)) else (pre V72_x1)))));
  V73_x2 = (0 -> (if e02 then (if V151_g02 then ((pre V73_x2) + 1) else (pre 
  V73_x2)) else (if e03 then (if V152_g03 then ((pre V73_x2) + 1) else (pre 
  V73_x2)) else (if e04 then (if V153_g04 then ((pre V73_x2) - 1) else (pre 
  V73_x2)) else (if e05 then (if V154_g05 then ((pre V73_x2) - 1) else (pre 
  V73_x2)) else (pre V73_x2))))));
  V74_x3 = (0 -> (if e04 then (if V153_g04 then ((pre V74_x3) + 1) else (pre 
  V74_x3)) else (if e05 then (if V154_g05 then ((pre V74_x3) + 1) else (pre 
  V74_x3)) else (if e06 then (if V155_g06 then ((pre V74_x3) - 1) else (pre 
  V74_x3)) else (pre V74_x3)))));
  V75_x4 = (1 -> (if e01 then (if V150_g01 then ((pre V75_x4) - 1) else (pre 
  V75_x4)) else (if e06 then (if V155_g06 then ((pre V75_x4) + 1) else (pre 
  V75_x4)) else (pre V75_x4))));
  V76_x5 = (0 -> (if e01 then (if V150_g01 then ((pre V76_x5) + 1) else (pre 
  V76_x5)) else (if e06 then (if V155_g06 then ((pre V76_x5) - 1) else (pre 
  V76_x5)) else (pre V76_x5))));
  V77_x6 = (0 -> (if e02 then (if V151_g02 then ((pre V77_x6) - 1) else (pre 
  V77_x6)) else (if e08 then (if V157_g08 then ((pre V77_x6) + 1) else (pre 
  V77_x6)) else (pre V77_x6))));
  V78_x7 = (1 -> (if e02 then (if V151_g02 then ((pre V78_x7) + 1) else (pre 
  V78_x7)) else (if e08 then (if V157_g08 then ((pre V78_x7) - 1) else (pre 
  V78_x7)) else (pre V78_x7))));
  V79_x8 = (0 -> (if e07 then (if V156_g07 then ((pre V79_x8) + 1) else (pre 
  V79_x8)) else (if e12 then (if V161_g12 then ((pre V79_x8) - 1) else (pre 
  V79_x8)) else (pre V79_x8))));
  V80_x9 = (1 -> (if e07 then (if V156_g07 then ((pre V80_x9) - 1) else (pre 
  V80_x9)) else (if e12 then (if V161_g12 then ((pre V80_x9) + 1) else (pre 
  V80_x9)) else (pre V80_x9))));
  V81_x10 = (1 -> (if e07 then (if V156_g07 then ((pre V81_x10) - 1) else (pre 
  V81_x10)) else (if e12 then (if V161_g12 then ((pre V81_x10) + 1) else (pre 
  V81_x10)) else (pre V81_x10))));
  V82_x11 = (0 -> (if e07 then (if V156_g07 then ((pre V82_x11) + 1) else (pre 
  V82_x11)) else (if e08 then (if V157_g08 then ((pre V82_x11) - 1) else (pre 
  V82_x11)) else (if e09 then (if V158_g09 then ((pre V82_x11) - 1) else (pre 
  V82_x11)) else (pre V82_x11)))));
  V83_x12 = (0 -> (if e08 then (if V157_g08 then ((pre V83_x12) + 1) else (pre 
  V83_x12)) else (if e09 then (if V158_g09 then ((pre V83_x12) + 1) else (pre 
  V83_x12)) else (if e10 then (if V159_g10 then ((pre V83_x12) - 1) else (pre 
  V83_x12)) else (if e11 then (if V160_g11 then ((pre V83_x12) - 1) else (pre 
  V83_x12)) else (pre V83_x12))))));
  V84_x13 = (0 -> (if e10 then (if V159_g10 then ((pre V84_x13) + 1) else (pre 
  V84_x13)) else (if e11 then (if V160_g11 then ((pre V84_x13) + 1) else (pre 
  V84_x13)) else (if e12 then (if V161_g12 then ((pre V84_x13) - 1) else (pre 
  V84_x13)) else (pre V84_x13)))));
  V85_env = (V183_X -> (V183_X and (pre V85_env)));
  V150_g01 = (((pre V71_x0) >= 1) and ((pre V75_x4) >= 1));
  V151_g02 = (((pre V72_x1) >= 1) and ((pre V77_x6) >= 1));
  V152_g03 = (((pre V72_x1) >= 1) and ((pre V78_x7) >= 1));
  V153_g04 = (((pre V73_x2) >= 1) and ((pre V80_x9) >= 1));
  V154_g05 = (((pre V73_x2) >= 1) and ((pre V77_x6) >= 1));
  V155_g06 = (((pre V74_x3) >= 1) and ((pre V76_x5) >= 1));
  V156_g07 = (((pre V80_x9) >= 1) and ((pre V81_x10) >= 1));
  V157_g08 = (((pre V78_x7) >= 1) and ((pre V82_x11) >= 1));
  V158_g09 = (((pre V77_x6) >= 1) and ((pre V82_x11) >= 1));
  V159_g10 = (((pre V75_x4) >= 1) and ((pre V83_x12) >= 1));
  V160_g11 = (((pre V78_x7) >= 1) and ((pre V83_x12) >= 1));
  V161_g12 = (((pre V79_x8) >= 1) and ((pre V84_x13) >= 1));
  V183_X = (((((((((((((((((((((((((not e01) and (not e02)) and (not e03)) and 
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
  and (not e09)) and (not e10)) and (not e11)) and e12)) and (V74_x3 < 32767));
    --%PROPERTY OK=true;


tel.

