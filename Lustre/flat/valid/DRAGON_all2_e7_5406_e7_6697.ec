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
  e12: bool;
  init_invalid: int)
returns
  (OK: bool);

var
  V69_exclusive: int;
  V70_shared: int;
  V71_shared_dirty: int;
  V72_dirty: int;
  V73_invalid: int;
  V74_R1: bool;
  V75_R2: bool;
  V76_R3: bool;
  V77_R4: bool;
  V78_R5: bool;
  V79_R6: bool;
  V80_R7: bool;
  V81_R8: bool;
  V82_R9: bool;
  V83_R10: bool;
  V84_R11: bool;
  V85_R12: bool;
  V86_R13: bool;
  V87_R14: bool;
  V88_erreur: bool;
  V89_env: bool;
  V158_g01: bool;
  V159_g02: bool;
  V160_g03: bool;
  V161_g04: bool;
  V162_g05: bool;
  V163_g06: bool;
  V164_g07: bool;
  V165_g08: bool;
  V166_g09: bool;
  V167_g10: bool;
  V168_g11: bool;
  V169_g12: bool;
  V170_mem_init: int;
  V191_X: bool;
  V203_First: int;
  V210_First: int;
  V217_First: int;
  V224_First: int;
  V231_First: int;

let
  OK = (((((((((((((V74_R1 and V75_R2) and V76_R3) and V77_R4) and V78_R5) and 
  V79_R6) and V80_R7) and V81_R8) and V82_R9) and V83_R10) and V84_R11) and 
  V85_R12) and V86_R13) and V87_R14);
  V69_exclusive = (0 -> (if e01 then (if V158_g01 then ((pre V69_exclusive) + 1
  ) else (pre V69_exclusive)) else (if e02 then (if V159_g02 then 0 else (pre 
  V69_exclusive)) else (if e03 then (if V160_g03 then ((pre V69_exclusive) - 1) 
  else (pre V69_exclusive)) else (if e08 then (if V165_g08 then 0 else (pre 
  V69_exclusive)) else (if e12 then (if V169_g12 then ((pre V69_exclusive) - 1) 
  else (pre V69_exclusive)) else (pre V69_exclusive)))))));
  V70_shared = (0 -> (if e02 then (if V159_g02 then (((pre V70_shared) + (pre 
  V69_exclusive)) + 1) else (pre V70_shared)) else (if e05 then (if V162_g05 
  then 0 else (pre V70_shared)) else (if e06 then (if V163_g06 then (((pre 
  V70_shared) + (pre V71_shared_dirty)) - 1) else (pre V70_shared)) else (if 
  e08 then (if V165_g08 then ((((pre V70_shared) + (pre V69_exclusive)) + (pre 
  V71_shared_dirty)) + (pre V72_dirty)) else (pre V70_shared)) else (if e10 
  then (if V167_g10 then ((pre V70_shared) - 1) else (pre V70_shared)) else 
  (pre V70_shared)))))));
  V71_shared_dirty = (0 -> (if e02 then (if V159_g02 then ((pre 
  V71_shared_dirty) + (pre V72_dirty)) else (pre V71_shared_dirty)) else (if 
  e04 then (if V161_g04 then 0 else (pre V71_shared_dirty)) else (if e06 then 
  (if V163_g06 then 1 else (pre V71_shared_dirty)) else (if e08 then (if 
  V165_g08 then 1 else (pre V71_shared_dirty)) else (if e11 then (if V168_g11 
  then ((pre V71_shared_dirty) - 1) else (pre V71_shared_dirty)) else (pre 
  V71_shared_dirty)))))));
  V72_dirty = (0 -> (if e02 then (if V159_g02 then 0 else (pre V72_dirty)) else 
  (if e03 then (if V160_g03 then ((pre V72_dirty) + 1) else (pre V72_dirty)) 
  else (if e04 then (if V161_g04 then ((pre V72_dirty) + 1) else (pre V72_dirty
  )) else (if e05 then (if V162_g05 then ((pre V72_dirty) + 1) else (pre 
  V72_dirty)) else (if e07 then (if V164_g07 then ((pre V72_dirty) + 1) else 
  (pre V72_dirty)) else (if e08 then (if V165_g08 then 0 else (pre V72_dirty)) 
  else (if e09 then (if V166_g09 then ((pre V72_dirty) - 1) else (pre V72_dirty
  )) else (pre V72_dirty)))))))));
  V73_invalid = (V170_mem_init -> (if e01 then (if V158_g01 then ((pre 
  V73_invalid) - 1) else (pre V73_invalid)) else (if e02 then (if V159_g02 then 
  ((pre V73_invalid) - 1) else (pre V73_invalid)) else (if e07 then (if 
  V164_g07 then ((pre V73_invalid) - 1) else (pre V73_invalid)) else (if e08 
  then (if V165_g08 then ((pre V73_invalid) - 1) else (pre V73_invalid)) else 
  (if e09 then (if V166_g09 then ((pre V73_invalid) + 1) else (pre V73_invalid)
  ) else (if e10 then (if V167_g10 then ((pre V73_invalid) + 1) else (pre 
  V73_invalid)) else (if e11 then (if V168_g11 then ((pre V73_invalid) + 1) 
  else (pre V73_invalid)) else (if e12 then (if V169_g12 then ((pre V73_invalid
  ) + 1) else (pre V73_invalid)) else (pre V73_invalid))))))))));
  V74_R1 = (V89_env => (not V88_erreur));
  V75_R2 = (V89_env => (true -> (((((V69_exclusive + V70_shared) + 
  V71_shared_dirty) + V72_dirty) + V73_invalid) = (pre ((((V69_exclusive + 
  V70_shared) + V71_shared_dirty) + V72_dirty) + V73_invalid)))));
  V76_R3 = (V89_env => (((((V69_exclusive + V70_shared) + V71_shared_dirty) + 
  V72_dirty) + V73_invalid) = V203_First));
  V77_R4 = (V89_env => (V72_dirty <= 1));
  V78_R5 = ((V89_env => (V72_dirty < 1)) or (V70_shared < 1));
  V79_R6 = (V89_env => (V70_shared >= 0));
  V80_R7 = (V89_env => (V69_exclusive >= 0));
  V81_R8 = (V89_env => (V71_shared_dirty >= 0));
  V82_R9 = (V89_env => (V72_dirty >= 0));
  V83_R10 = (V89_env => (V73_invalid >= 0));
  V84_R11 = (V89_env => (V70_shared <= V210_First));
  V85_R12 = (V89_env => (V71_shared_dirty <= V217_First));
  V86_R13 = (V89_env => (V72_dirty <= V224_First));
  V87_R14 = (V89_env => (V73_invalid <= V231_First));
  V88_erreur = (if (V69_exclusive >= 2) then true else false);
  V89_env = (V191_X -> (V191_X or (pre V89_env)));
  V158_g01 = ((((((pre V73_invalid) >= 1) and ((pre V72_dirty) = 0)) and ((pre 
  V70_shared) = 0)) and ((pre V69_exclusive) = 0)) and ((pre V71_shared_dirty) 
  = 0));
  V159_g02 = (((pre V73_invalid) >= 1) and (((((pre V72_dirty) + (pre 
  V70_shared)) + (pre V69_exclusive)) + (pre V71_shared_dirty)) >= 1));
  V160_g03 = ((pre V69_exclusive) >= 1);
  V161_g04 = (((pre V71_shared_dirty) = 1) and ((pre V70_shared) = 0));
  V162_g05 = (((pre V71_shared_dirty) = 0) and ((pre V70_shared) = 1));
  V163_g06 = (((pre V71_shared_dirty) + (pre V70_shared)) >= 2);
  V164_g07 = ((((((pre V73_invalid) >= 1) and ((pre V72_dirty) = 0)) and ((pre 
  V70_shared) = 0)) and ((pre V69_exclusive) = 0)) and ((pre V71_shared_dirty) 
  = 0));
  V165_g08 = (((pre V73_invalid) >= 1) and (((((pre V72_dirty) + (pre 
  V70_shared)) + (pre V69_exclusive)) + (pre V71_shared_dirty)) >= 1));
  V166_g09 = ((pre V72_dirty) >= 1);
  V167_g10 = ((pre V70_shared) >= 1);
  V168_g11 = ((pre V71_shared_dirty) >= 1);
  V169_g12 = ((pre V69_exclusive) >= 1);
  V170_mem_init = (init_invalid -> (pre V170_mem_init));
  V191_X = (((((((((((((((not e01) or (((((((((((not e02) and (not e03)) and 
  (not e04)) and (not e05)) and (not e06)) and (not e07)) and (not e08)) and 
  (not e09)) and (not e10)) and (not e11)) and (not e12))) or (((((((((((e01 
  and (not e02)) and (not e03)) and (not e04)) and (not e05)) and (not e06)) 
  and (not e07)) and (not e08)) and (not e09)) and (not e10)) and (not e11)) 
  and (not e12))) or ((((((((((((not e01) and e02) and (not e03)) and (not e04)
  ) and (not e05)) and (not e06)) and (not e07)) and (not e08)) and (not e09)) 
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
  and (not e09)) and (not e10)) and (not e11)) and e12)) and (init_invalid > 0)
  );
  V203_First = (init_invalid -> (pre V203_First));
  V210_First = (init_invalid -> (pre V210_First));
  V217_First = (init_invalid -> (pre V217_First));
  V224_First = (init_invalid -> (pre V224_First));
  V231_First = (init_invalid -> (pre V231_First));
    --%PROPERTY OK=true;


tel.

