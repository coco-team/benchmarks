node top
  (e_s1: bool;
  e_s2: bool;
  e_s3: bool;
  init_invalid_s: int)
returns
  (OK: bool);

var
  V30_invalid_s: int;
  V31_valid_s: int;
  V32_dirty_s: int;
  V33_mem_init_s: int;
  V34_env: bool;
  V77_garde_s1: bool;
  V78_garde_s2: bool;
  V79_garde_s3: bool;
  V92_X: bool;
  V106_First: int;

let
  OK = (V34_env => (V30_invalid_s <= V106_First));
  V30_invalid_s = (V33_mem_init_s -> (if e_s1 then (if V77_garde_s1 then (((
  (pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) 
  else (if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre 
  V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if 
  e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + 
  (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))
  );
  V31_valid_s = (0 -> (if e_s1 then (if V77_garde_s1 then ((pre V31_valid_s) + 
  1) else (pre V31_valid_s)) else (if e_s2 then (if V78_garde_s2 then 0 else 
  (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre 
  V31_valid_s)) else (pre V31_valid_s)))));
  V32_dirty_s = (0 -> (if e_s1 then (if V77_garde_s1 then 0 else (pre 
  V32_dirty_s)) else (if e_s2 then (if V78_garde_s2 then 1 else (pre 
  V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre 
  V32_dirty_s)) else (pre V32_dirty_s)))));
  V33_mem_init_s = (init_invalid_s -> (pre V33_mem_init_s));
  V34_env = (V92_X -> (V92_X or (pre V34_env)));
  V77_garde_s1 = ((pre V30_invalid_s) >= 1);
  V78_garde_s2 = ((pre V31_valid_s) >= 1);
  V79_garde_s3 = ((pre V30_invalid_s) >= 1);
  V92_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and 
  (init_invalid_s >= 0));
  V106_First = (init_invalid_s -> (pre V106_First));
  --%PROPERTY OK;


tel.

