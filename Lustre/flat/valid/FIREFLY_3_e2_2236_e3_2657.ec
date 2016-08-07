node top
  (e1: bool;
  e2: bool;
  e3: bool;
  e4: bool;
  e5: bool;
  e6: bool;
  e7: bool;
  e8: bool;
  i_invalid: int)
returns
  (OK: bool);

var
  V51_invalid: int;
  V52_dirty: int;
  V53_exclusive: int;
  V54_shared: int;
  V55_env: bool;
  V56_procs: int;
  V112_garde1: bool;
  V113_garde2: bool;
  V114_garde3: bool;
  V115_garde4: bool;
  V116_garde5: bool;
  V117_garde6: bool;
  V118_garde7: bool;
  V119_garde8: bool;
  V120_mem_invalid: int;
  V139_X: bool;

let
  OK = (V55_env => (V54_shared >= 0));
  V51_invalid = (V120_mem_invalid -> (if e1 then (if V112_garde1 then ((pre 
  V51_invalid) - 1) else (pre V51_invalid)) else (if e2 then (if V113_garde2 
  then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if 
  V114_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 
  then (if V117_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) 
  else (if e7 then (if V118_garde7 then ((pre V51_invalid) - 1) else (pre 
  V51_invalid)) else (if e8 then (if V119_garde8 then ((pre V51_invalid) - 1) 
  else (pre V51_invalid)) else (pre V51_invalid))))))));
  V52_dirty = (0 -> (if e2 then (if V113_garde2 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (if e4 then (if V115_garde4 then ((pre V52_dirty) + 1) 
  else (pre V52_dirty)) else (if e6 then (if V117_garde6 then 1 else (pre 
  V52_dirty)) else (if e7 then (if V118_garde7 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (pre V52_dirty))))));
  V53_exclusive = (0 -> (if e1 then (if V112_garde1 then ((pre V53_exclusive) + 
  1) else (pre V53_exclusive)) else (if e3 then (if V114_garde3 then 0 else 
  (pre V53_exclusive)) else (if e4 then (if V115_garde4 then ((pre 
  V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if 
  V116_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if 
  e8 then (if V119_garde8 then 0 else (pre V53_exclusive)) else (pre 
  V53_exclusive)))))));
  V54_shared = (0 -> (if e2 then (if V113_garde2 then ((pre V54_shared) + 2) 
  else (pre V54_shared)) else (if e3 then (if V114_garde3 then ((((pre 
  V54_shared) - 1) + (pre V53_exclusive)) - 1) else (pre V54_shared)) else (if 
  e5 then (if V116_garde5 then (pre 0) else (pre V54_shared)) else (if e7 then 
  (if V118_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if 
  e8 then (if V119_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) 
  else (pre V54_shared)) else (pre V54_shared)))))));
  V55_env = (V139_X -> (V139_X and (pre V55_env)));
  V56_procs = (i_invalid -> (pre V56_procs));
  V112_garde1 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V113_garde2 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V114_garde3 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V115_garde4 = ((pre V53_exclusive) >= 1);
  V116_garde5 = ((pre V54_shared) = 1);
  V117_garde6 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V118_garde7 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V119_garde8 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V120_mem_invalid = (i_invalid -> (pre V120_mem_invalid));
  V139_X = ((((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
  and (not e5)) and (not e6)) and (not e7)) and (not e8)) or (((((((e1 and (not 
  e2)) and (not e3)) and (not e4)) and (not e5)) and (not e6)) and (not e7)) 
  and (not e8))) or ((((((((not e1) and e2) and (not e3)) and (not e4)) and 
  (not e5)) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and 
  (not e2)) and e3) and (not e4)) and (not e5)) and (not e6)) and (not e7)) and 
  (not e8))) or ((((((((not e1) and (not e2)) and (not e3)) and e4) and (not e5
  )) and (not e6)) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)
  ) and (not e3)) and (not e4)) and e5) and (not e6)) and (not e7)) and (not e8
  ))) or ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)
  ) and e6) and (not e7)) and (not e8))) or ((((((((not e1) and (not e2)) and 
  (not e3)) and (not e4)) and (not e5)) and (not e6)) and e7) and (not e8))) or 
  ((((((((not e1) and (not e2)) and (not e3)) and (not e4)) and (not e5)) and 
  (not e6)) and (not e7)) and e8)) and (i_invalid >= 0)) and (i_invalid < 5));
  --%PROPERTY OK;


tel.

