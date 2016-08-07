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
  OK = (V34_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V106_First)
  );
  V30_invalid_s = (V33_mem_init_s -> (if e_s1 then (if V77_garde_s1 then (((pre 
  V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if 
  e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + 
  (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if 
  V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre 
  V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))));
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
  V92_X = ((not (((e_s1 or e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and (
  init_invalid_s >= 0));
  V106_First = (init_invalid_s -> (pre V106_First));
  --%PROPERTY  OK=true;



-- 105 implications. 
assert (true -> (((((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V106_First) = true) 
and (true = (V34_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V106_First))) 
and (V79_garde_s3 = V77_garde_s1) 
and (V77_garde_s1 = ((pre V30_invalid_s) >= 1)) 
and (V92_X = ((not (((e_s1 or e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and (init_invalid_s >= 0))) 
and (((e_s1 or e_s2) or (e_s1 and e_s3)) = (((e_s1 or e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((((e_s1 or e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)) = (e_s1 or e_s2)) 
and (V78_garde_s2 = ((pre V31_valid_s) >= 1)) 
and (V34_env => (V92_X or (pre V34_env))) 
and ((e_s2 and e_s3) => e_s2) 
and ((pre V34_env) => (V92_X or (pre V34_env))) 
and (e_s2 => ((e_s1 or e_s2) or (e_s1 and e_s3))) 
and ((e_s1 and e_s3) => e_s1) 
and (V92_X => V34_env) 
and (V92_X => (not (((e_s1 or e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)))) 
and (V92_X => (init_invalid_s >= 0)) 
and ((e_s1 and e_s3) => e_s3) 
and ((e_s1 and e_s3) => ((e_s1 or e_s2) or (e_s1 and e_s3))) 
and (e_s1 => ((e_s1 or e_s2) or (e_s1 and e_s3))) 
and ((e_s2 and e_s3) => e_s3) 
and (0 = (if V78_garde_s2 then 0 else (pre V31_valid_s))) 
and (V106_First = ((V30_invalid_s + V31_valid_s) + V32_dirty_s)) 
and ((pre V33_mem_init_s) = (pre V106_First)) 
and ((pre V106_First) = (((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and (0 <=(if V79_garde_s3 then 0 else (pre V31_valid_s))) 
and (0 <=(if V77_garde_s1 then 0 else (pre V32_dirty_s))) 
and (0 <=(pre V32_dirty_s)) 
and (0 <=(if V78_garde_s2 then 1 else (pre V32_dirty_s))) 
and (0 <=V31_valid_s) 
and (0 <=V32_dirty_s) 
and (0 <=(if e_s1 then (if V77_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and (0 <=(if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and (0 <=(if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) 
and (0 <=(if V79_garde_s3 then 1 else (pre V32_dirty_s))) 
and (0 <=1) 
and ((if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s1 then (if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if V77_garde_s1 then 0 else (pre V32_dirty_s)) <=(if e_s1 then (if V77_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((pre V32_dirty_s) <=(if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((pre V32_dirty_s) <=(if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) 
and ((pre V32_dirty_s) <=(if V79_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(if e_s1 then (if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=(pre V30_invalid_s)) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s1 then (if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(pre V30_invalid_s)) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and ((pre V30_invalid_s) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and (0 <=(if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) 
and ((if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((pre V31_valid_s) <=(if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and ((if V79_garde_s3 then 0 else (pre V31_valid_s)) <=(if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((pre V31_valid_s) <=(if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and ((if V77_garde_s1 then 0 else (pre V32_dirty_s)) <=(pre V32_dirty_s)) 
and ((pre V32_dirty_s) <=(if V78_garde_s2 then 1 else (pre V32_dirty_s))) 
and ((if V78_garde_s2 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and (V31_valid_s <=(if e_s1 then (if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if e_s1 then (if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V78_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V79_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) <=(if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V77_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and (V32_dirty_s <=(if e_s1 then (if V77_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((if e_s1 then (if V77_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) <=(if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((if e_s2 then (if V78_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and ((if e_s3 then (if V79_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)) <=(if V79_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V79_garde_s3 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) <=((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1)) 
and (((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) <=(if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(pre V33_mem_init_s)) 
and ((if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(pre V33_mem_init_s)) 
and ((if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)) <=(if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) <=(if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(pre V33_mem_init_s)) 
and (V30_invalid_s <=(V30_invalid_s + V31_valid_s)) 
and ((V30_invalid_s + V31_valid_s) <=V106_First) 
and ((if e_s1 then (if V77_garde_s1 then (((pre V30_invalid_s) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) <=(if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if e_s2 then (if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V79_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) <=(if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(pre V33_mem_init_s)) 
and ((pre V30_invalid_s) <=(if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V78_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(pre V33_mem_init_s)) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=(pre V33_mem_init_s)) 
and  true ));
tel.

