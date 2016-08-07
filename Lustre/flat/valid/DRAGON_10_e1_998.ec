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
  V66_exclusive: int;
  V67_shared: int;
  V68_shared_dirty: int;
  V69_dirty: int;
  V70_invalid: int;
  V71_erreur: bool;
  V72_env: bool;
  V132_g01: bool;
  V133_g02: bool;
  V134_g03: bool;
  V135_g04: bool;
  V136_g05: bool;
  V137_g06: bool;
  V138_g07: bool;
  V139_g08: bool;
  V140_g09: bool;
  V141_g10: bool;
  V142_g11: bool;
  V143_g12: bool;
  V144_mem_init: int;
  V165_X: bool;

let
  OK = (V72_env => (V70_invalid >= 0));
  V66_exclusive = (0 -> (if e01 then (if V132_g01 then ((pre V66_exclusive) + 1
  ) else (pre V66_exclusive)) else (if e02 then (if V133_g02 then 0 else (pre 
  V66_exclusive)) else (if e03 then (if V134_g03 then ((pre V66_exclusive) - 1) 
  else (pre V66_exclusive)) else (if e08 then (if V139_g08 then 0 else (pre 
  V66_exclusive)) else (if e12 then (if V143_g12 then ((pre V66_exclusive) - 1) 
  else (pre V66_exclusive)) else (pre V66_exclusive)))))));
  V67_shared = (0 -> (if e02 then (if V133_g02 then (((pre V67_shared) + (pre 
  V66_exclusive)) + 1) else (pre V67_shared)) else (if e05 then (if V136_g05 
  then 0 else (pre V67_shared)) else (if e06 then (if V137_g06 then (((pre 
  V67_shared) + (pre V68_shared_dirty)) - 1) else (pre V67_shared)) else (if 
  e08 then (if V139_g08 then ((((pre V67_shared) + (pre V66_exclusive)) + (pre 
  V68_shared_dirty)) + (pre V69_dirty)) else (pre V67_shared)) else (if e10 
  then (if V141_g10 then ((pre V67_shared) - 1) else (pre V67_shared)) else 
  (pre V67_shared)))))));
  V68_shared_dirty = (0 -> (if e02 then (if V133_g02 then ((pre 
  V68_shared_dirty) + (pre V69_dirty)) else (pre V68_shared_dirty)) else (if 
  e04 then (if V135_g04 then 0 else (pre V68_shared_dirty)) else (if e06 then 
  (if V137_g06 then 1 else (pre V68_shared_dirty)) else (if e08 then (if 
  V139_g08 then 1 else (pre V68_shared_dirty)) else (if e11 then (if V142_g11 
  then ((pre V68_shared_dirty) - 1) else (pre V68_shared_dirty)) else (pre 
  V68_shared_dirty)))))));
  V69_dirty = (0 -> (if e02 then (if V133_g02 then 0 else (pre V69_dirty)) else 
  (if e03 then (if V134_g03 then ((pre V69_dirty) + 1) else (pre V69_dirty)) 
  else (if e04 then (if V135_g04 then ((pre V69_dirty) + 1) else (pre V69_dirty
  )) else (if e05 then (if V136_g05 then ((pre V69_dirty) + 1) else (pre 
  V69_dirty)) else (if e07 then (if V138_g07 then ((pre V69_dirty) + 1) else 
  (pre V69_dirty)) else (if e08 then (if V139_g08 then 0 else (pre V69_dirty)) 
  else (if e09 then (if V140_g09 then ((pre V69_dirty) - 1) else (pre V69_dirty
  )) else (pre V69_dirty)))))))));
  V70_invalid = (V144_mem_init -> (if e01 then (if V132_g01 then ((pre 
  V70_invalid) - 1) else (pre V70_invalid)) else (if e02 then (if V133_g02 then 
  ((pre V70_invalid) - 1) else (pre V70_invalid)) else (if e07 then (if 
  V138_g07 then ((pre V70_invalid) - 1) else (pre V70_invalid)) else (if e08 
  then (if V139_g08 then ((pre V70_invalid) - 1) else (pre V70_invalid)) else 
  (if e09 then (if V140_g09 then ((pre V70_invalid) + 1) else (pre V70_invalid)
  ) else (if e10 then (if V141_g10 then ((pre V70_invalid) + 1) else (pre 
  V70_invalid)) else (if e11 then (if V142_g11 then ((pre V70_invalid) + 1) 
  else (pre V70_invalid)) else (if e12 then (if V143_g12 then ((pre V70_invalid
  ) + 1) else (pre V70_invalid)) else (pre V70_invalid))))))))));
  V71_erreur = (if (V66_exclusive >= 2) then true else false);
  V72_env = (V165_X -> (V165_X and (pre V72_env)));
  V132_g01 = ((((((pre V70_invalid) >= 1) and ((pre V69_dirty) = 0)) and ((pre 
  V67_shared) = 0)) and ((pre V66_exclusive) = 0)) and ((pre V68_shared_dirty) 
  = 0));
  V133_g02 = (((pre V70_invalid) >= 1) and ((((((pre V69_dirty) + 1) + (pre 
  V67_shared)) + (pre V66_exclusive)) + (pre V68_shared_dirty)) >= 1));
  V134_g03 = ((pre V66_exclusive) >= 1);
  V135_g04 = (((pre V68_shared_dirty) = 1) and ((pre V67_shared) = 0));
  V136_g05 = (((pre V68_shared_dirty) = 0) and ((pre V67_shared) = 1));
  V137_g06 = (((pre V68_shared_dirty) + (pre V67_shared)) >= 2);
  V138_g07 = ((((((pre V70_invalid) >= 1) and ((pre V69_dirty) = 0)) and ((pre 
  V67_shared) = 0)) and ((pre V66_exclusive) = 0)) and ((pre V68_shared_dirty) 
  = 0));
  V139_g08 = (((pre V70_invalid) >= 1) and (((((pre V69_dirty) + (pre 
  V67_shared)) + (pre V66_exclusive)) + (pre V68_shared_dirty)) >= 1));
  V140_g09 = ((pre V69_dirty) >= 1);
  V141_g10 = ((pre V67_shared) >= 1);
  V142_g11 = ((pre V68_shared_dirty) >= 1);
  V143_g12 = ((pre V66_exclusive) >= 1);
  V144_mem_init = (init_invalid -> (pre V144_mem_init));
  V165_X = (((((((((((((((((((((((((not e01) and (not e02)) and (not e03)) and 
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
  --%PROPERTY OK;


tel.

