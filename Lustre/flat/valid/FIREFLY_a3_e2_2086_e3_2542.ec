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
  V55_R4: bool;
  V56_A1: bool;
  V57_A2: bool;
  V58_A3: bool;
  V59_procs: int;
  V60_env: bool;
  V115_garde1: bool;
  V116_garde2: bool;
  V117_garde3: bool;
  V118_garde4: bool;
  V119_garde5: bool;
  V120_garde6: bool;
  V121_garde7: bool;
  V122_garde8: bool;
  V123_mem_invalid: int;
  V142_X: bool;

let
  OK = (((V56_A1 and V57_A2) and V58_A3) and V55_R4);
  V51_invalid = (V123_mem_invalid -> (if e1 then (if V115_garde1 then ((pre 
  V51_invalid) - 1) else (pre V51_invalid)) else (if e2 then (if V116_garde2 
  then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e3 then (if 
  V117_garde3 then ((pre V51_invalid) - 1) else (pre V51_invalid)) else (if e6 
  then (if V120_garde6 then ((pre V51_invalid) - 1) else (pre V51_invalid)) 
  else (if e7 then (if V121_garde7 then ((pre V51_invalid) - 1) else (pre 
  V51_invalid)) else (if e8 then (if V122_garde8 then ((pre V51_invalid) - 1) 
  else (pre V51_invalid)) else (pre V51_invalid))))))));
  V52_dirty = (0 -> (if e2 then (if V116_garde2 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (if e4 then (if V118_garde4 then ((pre V52_dirty) + 1) 
  else (pre V52_dirty)) else (if e6 then (if V120_garde6 then 1 else (pre 
  V52_dirty)) else (if e7 then (if V121_garde7 then ((pre V52_dirty) - 1) else 
  (pre V52_dirty)) else (pre V52_dirty))))));
  V53_exclusive = (0 -> (if e1 then (if V115_garde1 then ((pre V53_exclusive) + 
  1) else (pre V53_exclusive)) else (if e3 then (if V117_garde3 then 0 else 
  (pre V53_exclusive)) else (if e4 then (if V118_garde4 then ((pre 
  V53_exclusive) - 1) else (pre V53_exclusive)) else (if e5 then (if 
  V119_garde5 then ((pre V53_exclusive) + 1) else (pre V53_exclusive)) else (if 
  e8 then (if V122_garde8 then 0 else (pre V53_exclusive)) else (pre 
  V53_exclusive)))))));
  V54_shared = (0 -> (if e2 then (if V116_garde2 then ((pre V54_shared) + 2) 
  else (pre V54_shared)) else (if e3 then (if V117_garde3 then ((((pre 
  V54_shared) - 1) + (pre V53_exclusive)) - 1) else (pre V54_shared)) else (if 
  e5 then (if V119_garde5 then (pre 0) else (pre V54_shared)) else (if e7 then 
  (if V121_garde7 then ((pre V54_shared) + 2) else (pre V54_shared)) else (if 
  e8 then (if V122_garde8 then (((pre V54_shared) + (pre V53_exclusive)) + 1) 
  else (pre V54_shared)) else (pre V54_shared)))))));
  V55_R4 = (V60_env => (V54_shared <= V59_procs));
  V56_A1 = (V60_env => ((((V51_invalid + V52_dirty) + V53_exclusive) + 
  V54_shared) <= V59_procs));
  V57_A2 = (V60_env => (V52_dirty >= 0));
  V58_A3 = (V60_env => (V53_exclusive >= 0));
  V59_procs = (i_invalid -> (pre V59_procs));
  V60_env = (V142_X -> (V142_X and (pre V60_env)));
  V115_garde1 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V116_garde2 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V117_garde3 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V118_garde4 = ((pre V53_exclusive) >= 1);
  V119_garde5 = ((pre V54_shared) = 1);
  V120_garde6 = (((((pre V51_invalid) >= 1) and ((pre V52_dirty) = 0)) and (
  (pre V54_shared) = 0)) and ((pre V53_exclusive) = 0));
  V121_garde7 = (((pre V51_invalid) >= 1) and ((pre V52_dirty) >= 1));
  V122_garde8 = (((pre V51_invalid) >= 1) and (((pre V54_shared) + (pre 
  V53_exclusive)) >= 1));
  V123_mem_invalid = (i_invalid -> (pre V123_mem_invalid));
  V142_X = (((((((((((((((((not e1) and (not e2)) and (not e3)) and (not e4)) 
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
  (not e6)) and (not e7)) and e8)) and (i_invalid >= 0));
    --%PROPERTY OK=true;


tel.

