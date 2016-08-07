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
  V74_erreur: bool;
  V75_env: bool;
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
  V152_mem_init: int;
  V173_X: bool;
  V185_First: int;

let
  OK = (V75_env => (V71_shared_dirty <= V185_First));
  V69_exclusive = (0 -> (if e01 then (if V140_g01 then ((pre V69_exclusive) + 1
  ) else (pre V69_exclusive)) else (if e02 then (if V141_g02 then 0 else (pre 
  V69_exclusive)) else (if e03 then (if V142_g03 then ((pre V69_exclusive) - 1) 
  else (pre V69_exclusive)) else (if e08 then (if V147_g08 then 0 else (pre 
  V69_exclusive)) else (if e12 then (if V151_g12 then ((pre V69_exclusive) - 1) 
  else (pre V69_exclusive)) else (pre V69_exclusive)))))));
  V70_shared = (0 -> (if e02 then (if V141_g02 then (((pre V70_shared) + (pre 
  V69_exclusive)) + 1) else (pre V70_shared)) else (if e05 then (if V144_g05 
  then 0 else (pre V70_shared)) else (if e06 then (if V145_g06 then (((pre 
  V70_shared) + (pre V71_shared_dirty)) - 1) else (pre V70_shared)) else (if 
  e08 then (if V147_g08 then ((((pre V70_shared) + (pre V69_exclusive)) + (pre 
  V71_shared_dirty)) + (pre V72_dirty)) else (pre V70_shared)) else (if e10 
  then (if V149_g10 then ((pre V70_shared) - 1) else (pre V70_shared)) else 
  (pre V70_shared)))))));
  V71_shared_dirty = (0 -> (if e02 then (if V141_g02 then ((pre 
  V71_shared_dirty) + (pre V72_dirty)) else (pre V71_shared_dirty)) else (if 
  e04 then (if V143_g04 then 0 else (pre V71_shared_dirty)) else (if e06 then 
  (if V145_g06 then 1 else (pre V71_shared_dirty)) else (if e08 then (if 
  V147_g08 then 1 else (pre V71_shared_dirty)) else (if e11 then (if V150_g11 
  then ((pre V71_shared_dirty) - 1) else (pre V71_shared_dirty)) else (pre 
  V71_shared_dirty)))))));
  V72_dirty = (0 -> (if e02 then (if V141_g02 then 0 else (pre V72_dirty)) else 
  (if e03 then (if V142_g03 then ((pre V72_dirty) + 1) else (pre V72_dirty)) 
  else (if e04 then (if V143_g04 then ((pre V72_dirty) + 1) else (pre V72_dirty
  )) else (if e05 then (if V144_g05 then ((pre V72_dirty) + 1) else (pre 
  V72_dirty)) else (if e07 then (if V146_g07 then ((pre V72_dirty) + 1) else 
  (pre V72_dirty)) else (if e08 then (if V147_g08 then 0 else (pre V72_dirty)) 
  else (if e09 then (if V148_g09 then ((pre V72_dirty) - 1) else (pre V72_dirty
  )) else (pre V72_dirty)))))))));
  V73_invalid = (V152_mem_init -> (if e01 then (if V140_g01 then ((pre 
  V73_invalid) - 1) else (pre V73_invalid)) else (if e02 then (if V141_g02 then 
  ((pre V73_invalid) - 1) else (pre V73_invalid)) else (if e07 then (if 
  V146_g07 then ((pre V73_invalid) - 1) else (pre V73_invalid)) else (if e08 
  then (if V147_g08 then ((pre V73_invalid) - 1) else (pre V73_invalid)) else 
  (if e09 then (if V148_g09 then ((pre V73_invalid) + 1) else (pre V73_invalid)
  ) else (if e10 then (if V149_g10 then ((pre V73_invalid) + 1) else (pre 
  V73_invalid)) else (if e11 then (if V150_g11 then ((pre V73_invalid) + 1) 
  else (pre V73_invalid)) else (if e12 then (if V151_g12 then ((pre V73_invalid
  ) + 1) else (pre V73_invalid)) else (pre V73_invalid))))))))));
  V74_erreur = (if (V69_exclusive >= 2) then true else false);
  V75_env = (V173_X -> (V173_X and (pre V75_env)));
  V140_g01 = ((((((pre V73_invalid) >= 1) and ((pre V72_dirty) = 0)) and ((pre 
  V70_shared) = 0)) and ((pre V69_exclusive) = 0)) and ((pre V71_shared_dirty) 
  = 0));
  V141_g02 = (((pre V73_invalid) >= 1) and ((((((pre V72_dirty) - 1) + (pre 
  V70_shared)) - (pre V69_exclusive)) + (pre V71_shared_dirty)) >= 1));
  V142_g03 = ((pre V69_exclusive) >= 1);
  V143_g04 = (((pre V71_shared_dirty) = 1) and ((pre V70_shared) = 0));
  V144_g05 = (((pre V71_shared_dirty) = 0) and ((pre V70_shared) = 1));
  V145_g06 = (((pre V71_shared_dirty) + (pre V70_shared)) >= 2);
  V146_g07 = ((((((pre V73_invalid) >= 1) and ((pre V72_dirty) = 0)) and ((pre 
  V70_shared) = 0)) and ((pre V69_exclusive) = 0)) and ((pre V71_shared_dirty) 
  = 0));
  V147_g08 = (((pre V73_invalid) >= 1) and (((((pre V72_dirty) + (pre 
  V70_shared)) + (pre V69_exclusive)) + (pre V71_shared_dirty)) >= 1));
  V148_g09 = ((pre V72_dirty) >= 1);
  V149_g10 = ((pre V70_shared) >= 1);
  V150_g11 = ((pre V71_shared_dirty) >= 1);
  V151_g12 = ((pre V69_exclusive) >= 1);
  V152_mem_init = (init_invalid -> (pre V152_mem_init));
  V173_X = (((((((((((((((((((((((((not e01) and (not e02)) and (not e03)) and 
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
  and (not e09)) and (not e10)) and (not e11)) and e12)) and (init_invalid > 0)
  );
  V185_First = (init_invalid -> (pre V185_First));
  --%PROPERTY OK;


tel.

