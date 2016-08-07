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
  V34_R1: bool;
  V35_R2: bool;
  V36_R3: bool;
  V37_env: bool;
  V81_garde_s1: bool;
  V82_garde_s2: bool;
  V83_garde_s3: bool;
  V95_X: bool;
  V108_First: int;

let
  OK = ((V35_R2 and V34_R1) and V36_R3);
  V30_invalid_s = (V33_mem_init_s -> (if e_s1 then (if V81_garde_s1 then (((pre 
  V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if 
  e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + 
  (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if 
  V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre 
  V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))));
  V31_valid_s = (0 -> (if e_s1 then (if V81_garde_s1 then ((pre V31_valid_s) + 
  1) else (pre V31_valid_s)) else (if e_s2 then (if V82_garde_s2 then 0 else 
  (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre 
  V31_valid_s)) else (pre V31_valid_s)))));
  V32_dirty_s = (0 -> (if e_s1 then (if V81_garde_s1 then 0 else (pre 
  V32_dirty_s)) else (if e_s2 then (if V82_garde_s2 then 1 else (pre 
  V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre 
  V32_dirty_s)) else (pre V32_dirty_s)))));
  V33_mem_init_s = (init_invalid_s -> (pre V33_mem_init_s));
  V34_R1 = (V37_env => (V32_dirty_s < 2));
  V35_R2 = (V37_env => (true -> (((V30_invalid_s + V31_valid_s) + V32_dirty_s) 
  = (pre ((V30_invalid_s + V31_valid_s) + V32_dirty_s)))));
  V36_R3 = (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = 
  V108_First));
  V37_env = (V95_X -> (V95_X or (pre V37_env)));
  V81_garde_s1 = ((pre V30_invalid_s) >= 1);
  V82_garde_s2 = ((pre V31_valid_s) >= 1);
  V83_garde_s3 = ((pre V30_invalid_s) >= 1);
  V95_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and 
  (init_invalid_s >= 0));
  V108_First = (init_invalid_s -> (pre V108_First));
    --%PROPERTY OK=true;


tel.

