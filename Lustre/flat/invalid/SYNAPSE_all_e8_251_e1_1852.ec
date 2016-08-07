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
  V78_garde_s1: bool;
  V79_garde_s2: bool;
  V80_garde_s3: bool;
  V92_X: bool;
  V105_First: int;

let
  OK = (V34_env => ((((V32_dirty_s < 2) and (true -> (((V30_invalid_s + 
  V31_valid_s) + V32_dirty_s) = (pre ((V30_invalid_s + V31_valid_s) + 
  V32_dirty_s))))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = 
  V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))));
  V30_invalid_s = (V33_mem_init_s -> (if e_s1 then (if V78_garde_s1 then (((
  (pre V30_invalid_s) + 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) 
  else (if e_s2 then (if V79_garde_s2 then ((((pre V30_invalid_s) + (pre 
  V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if 
  e_s3 then (if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + 
  (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))
  );
  V31_valid_s = (0 -> (if e_s1 then (if V78_garde_s1 then ((pre V31_valid_s) + 
  1) else (pre V31_valid_s)) else (if e_s2 then (if V79_garde_s2 then 0 else 
  (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre 
  V31_valid_s)) else (pre V31_valid_s)))));
  V32_dirty_s = (0 -> (if e_s1 then (if V78_garde_s1 then 0 else (pre 
  V32_dirty_s)) else (if e_s2 then (if V79_garde_s2 then 1 else (pre 
  V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre 
  V32_dirty_s)) else (pre V32_dirty_s)))));
  V33_mem_init_s = (init_invalid_s -> (pre V33_mem_init_s));
  V34_env = (V92_X -> (V92_X and (pre V34_env)));
  V78_garde_s1 = ((pre V30_invalid_s) >= 1);
  V79_garde_s2 = ((pre V31_valid_s) >= 1);
  V80_garde_s3 = ((pre V30_invalid_s) >= 1);
  V92_X = ((not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) and 
  (init_invalid_s >= 0));
  V105_First = (init_invalid_s -> (pre V105_First));
  --%PROPERTY  OK=true;



-- 111 implications. 
assert (true -> ((((V32_dirty_s < 1) or (V31_valid_s < 1)) = true) 
and (true = (V32_dirty_s < 2)) 
and (((pre V30_invalid_s) >= 1) = V78_garde_s1) 
and (V78_garde_s1 = V80_garde_s3) 
and ((((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))) = ((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and (((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))) = (((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First))) 
and (((not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) and (init_invalid_s >= 0)) = V92_X) 
and ((e_s2 and e_s3) = ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) 
and (((e_s1 and e_s2) and e_s1) = (e_s1 and e_s2)) 
and (((pre V31_valid_s) >= 1) = V79_garde_s2) 
and (((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))) => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) 
and ((V92_X and (pre V34_env)) => V34_env) 
and (((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))) => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) 
and ((((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First) => (V31_valid_s < 1)) 
and ((e_s2 and e_s3) => (V34_env => ((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))))) 
and ((e_s2 and e_s3) => e_s2) 
and ((((e_s1 and e_s2) and e_s1) and e_s3) => ((e_s1 and e_s2) and e_s1)) 
and (((not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) and (init_invalid_s >= 0)) => (init_invalid_s >= 0)) 
and (V34_env => ((not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) and (init_invalid_s >= 0))) 
and ((((e_s1 and e_s2) and e_s1) and e_s3) => (e_s2 and e_s3)) 
and (((e_s1 and e_s2) and e_s1) => e_s2) 
and (((pre V31_valid_s) >= 1) => ((pre V30_invalid_s) >= 1)) 
and ((((e_s1 and e_s2) and e_s1) and e_s3) => e_s3) 
and (((e_s1 and e_s2) and e_s1) => e_s1) 
and ((e_s2 and e_s3) => e_s3) 
and (((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))) => (V34_env => ((((V32_dirty_s < 2) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V105_First)) and ((V32_dirty_s < 1) or (V31_valid_s < 1))))) 
and (((not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3))) and (init_invalid_s >= 0)) => (not ((((e_s1 and e_s2) and e_s1) and e_s3) or (e_s2 and e_s3)))) 
and ((V92_X and (pre V34_env)) => (pre V34_env)) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) = 0) 
and (0 = (if V80_garde_s3 then 0 else (pre V31_valid_s))) 
and ((pre V33_mem_init_s) = (pre V105_First)) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) = ((((pre V30_invalid_s) + 1) + (pre V32_dirty_s)) - 1)) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if V78_garde_s1 then 0 else (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(pre V32_dirty_s)) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if V79_garde_s2 then 1 else (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=V32_dirty_s) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s1 then (if V78_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=V31_valid_s) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if V80_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=1) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=2) 
and ((if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s1 then (if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if V78_garde_s1 then 0 else (pre V32_dirty_s)) <=(if e_s1 then (if V78_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((pre V32_dirty_s) <=(if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((pre V32_dirty_s) <=(if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) 
and (1 <=2) 
and ((pre V30_invalid_s) <=(if V78_garde_s1 then ((((pre V30_invalid_s) + 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s))) 
and ((pre V30_invalid_s) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and ((pre V30_invalid_s) <=((pre V30_invalid_s) + 1)) 
and ((pre V30_invalid_s) <=(((pre V30_invalid_s) + 1) + (pre V32_dirty_s))) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=((pre V30_invalid_s) + 1)) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=(((pre V30_invalid_s) + 1) + (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) 
and ((if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((pre V31_valid_s) <=(if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and ((if V78_garde_s1 then 0 else (pre V32_dirty_s)) <=(pre V32_dirty_s)) 
and ((pre V32_dirty_s) <=(if V79_garde_s2 then 1 else (pre V32_dirty_s))) 
and ((if V79_garde_s2 then 1 else (pre V32_dirty_s)) <=(if V80_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V80_garde_s3 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and (V32_dirty_s <=(if e_s1 then (if V78_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((if e_s1 then (if V78_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) <=(if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((if e_s2 then (if V79_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) <=(if V80_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V80_garde_s3 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and (V31_valid_s <=(if e_s1 then (if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if e_s1 then (if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V79_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V80_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) <=(if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V78_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and ((if e_s3 then (if V80_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)) <=(if V80_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V80_garde_s3 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and (((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) <=(if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((if e_s3 then (if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)) <=(if e_s2 then (if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if e_s2 then (if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) <=(if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and (V30_invalid_s <=(V30_invalid_s + V31_valid_s)) 
and ((V30_invalid_s + V31_valid_s) <=((V30_invalid_s + V31_valid_s) + V32_dirty_s)) 
and ((if e_s1 then (if V78_garde_s1 then ((((pre V30_invalid_s) + 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V80_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((pre V30_invalid_s) <=(if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V79_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((if V78_garde_s1 then ((((pre V30_invalid_s) + 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((pre V33_mem_init_s) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and (V105_First <=((V30_invalid_s + V31_valid_s) + V32_dirty_s)) 
and (((pre V30_invalid_s) + 1) <=(((pre V30_invalid_s) + 1) + (pre V32_dirty_s))) 
and  true ));
tel.

