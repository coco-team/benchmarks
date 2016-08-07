node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  e9: bool;
  init_invalid: int)
returns
  (OK: bool);

var
  V51_invalid: int;
  V52_dirty: int;
  V53_exclusive: int;
  V54_shared: int;
  V55_env: bool;
  V107_g1: bool;
  V108_g2: bool;
  V109_g3: bool;
  V110_g4: bool;
  V111_g5: bool;
  V112_g6: bool;
  V113_g7: bool;
  V114_g8: bool;
  V115_g9: bool;
  V134_X: bool;

let
  OK = (V55_env => (true -> (((((V51_invalid + 1) + V52_dirty) + V53_exclusive) 
  + V54_shared) = (pre (((V51_invalid + V52_dirty) + V53_exclusive) + 
  V54_shared)))));
  V51_invalid = ((if (init_invalid > 0) then init_invalid else (1 - 
  init_invalid)) -> (if e1 then (if V107_g1 then ((pre V51_invalid) - 1) else 
  (pre V51_invalid)) else (if e2 then (if V108_g2 then ((pre V51_invalid) - 1) 
  else (pre V51_invalid)) else (if e3 then (if V109_g3 then ((pre V51_invalid) 
  - 1) else (pre V51_invalid)) else (if e5 then (if V111_g5 then (((pre 
  V51_invalid) + (pre V54_shared)) - 1) else (pre V51_invalid)) else (if e6 
  then (if V112_g6 then (((((pre V51_invalid) + (pre V52_dirty)) + (pre 
  V54_shared)) + (pre V53_exclusive)) - 1) else (pre V51_invalid)) else (if e7 
  then (if V113_g7 then ((pre V51_invalid) + 1) else (pre V51_invalid)) else 
  (if e8 then (if V114_g8 then ((pre V51_invalid) + 1) else (pre V51_invalid)) 
  else (if e9 then (if V115_g9 then ((pre V51_invalid) + 1) else (pre 
  V51_invalid)) else (pre V51_invalid))))))))));
  V52_dirty = (0 -> (if e2 then (if V108_g2 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (if e4 then (if V110_g4 then ((pre V52_dirty) + 1) else 
  (pre V52_dirty)) else (if e5 then (if V111_g5 then ((pre V52_dirty) + 1) else 
  (pre V52_dirty)) else (if e6 then (if V112_g6 then 1 else (pre V52_dirty)) 
  else (if e7 then (if V113_g7 then ((pre V52_dirty) - 1) else (pre V52_dirty)) 
  else (pre V52_dirty)))))));
  V53_exclusive = (0 -> (if e1 then (if V107_g1 then ((pre V53_exclusive) + 1) 
  else (pre V53_exclusive)) else (if e3 then (if V109_g3 then (pre 0) else (pre 
  V53_exclusive)) else (if e4 then (if V110_g4 then ((pre V53_exclusive) - 1) 
  else (pre V53_exclusive)) else (if e6 then (if V112_g6 then 0 else (pre 
  V53_exclusive)) else (if e9 then (if V115_g9 then ((pre V53_exclusive) - 1) 
  else (pre V53_exclusive)) else (pre V53_exclusive)))))));
  V54_shared = (0 -> (if e2 then (if V108_g2 then ((pre V54_shared) + 2) else 
  (pre V54_shared)) else (if e3 then (if V109_g3 then (((pre V54_shared) + (pre 
  V53_exclusive)) + 1) else (pre V54_shared)) else (if e5 then (if V111_g5 then 
  0 else (pre V54_shared)) else (if e6 then (if V112_g6 then 0 else (pre 
  V54_shared)) else (if e8 then (if V114_g8 then ((pre V54_shared) - 1) else 
  (pre V54_shared)) else (pre V54_shared)))))));
  V55_env = (V134_X -> (V134_X and (pre V55_env)));
  V107_g1 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and ((pre 
  V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V108_g2 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V109_g3 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V110_g4 = ((pre V53_exclusive) >= 1);
  V111_g5 = ((pre V54_shared) >= 1);
  V112_g6 = ((pre V51_invalid) >= 1);
  V113_g7 = ((pre V52_dirty) >= 1);
  V114_g8 = ((pre V54_shared) >= 1);
  V115_g9 = ((pre V53_exclusive) >= 1);
  V134_X = ((((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9)) or ((((
  ((((e1 and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) 
  and (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and e2) and 
  (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and (not e8
  )) and (not e9))) or (((((((((not e1) and (not e2)) and e3) and (not e4)) and 
  (not e5)) and (not e6)) and (not e7)) and (not e8)) and (not e9))) or (((((((
  ((not e1) and (not e2)) and (not e3)) and e4) and (not e5)) and (not e6)) and 
  (not e7)) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and 
  (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8)) and 
  (not e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and 
  (not e5)) and e6) and (not e7)) and (not e8)) and (not e9))) or (((((((((not 
  e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and 
  e7) and (not e8)) and (not e9))) or (((((((((not e1) and (not e2)) and (not 
  e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and e8) and (not 
  e9))) or (((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not 
  e5)) and (not e6)) and (not e7)) and (not e8)) and e9));
  --%PROPERTY OK;


tel.

