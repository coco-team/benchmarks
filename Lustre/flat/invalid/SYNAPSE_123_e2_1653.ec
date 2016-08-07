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
  V30_invalid_s = (V33_mem_init_s -> (if e_s1 then (if V81_garde_s1 then (((
  (pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) 
  else (if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre 
  V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if 
  e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + 
  (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))
  );
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
  V37_env = (V95_X -> (V95_X and (pre V37_env)));
  V81_garde_s1 = ((pre V30_invalid_s) >= 1);
  V82_garde_s2 = ((pre V31_valid_s) >= 1);
  V83_garde_s3 = ((pre V30_invalid_s) >= 1);
  V95_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and 
  (init_invalid_s >= 0));
  V108_First = (init_invalid_s -> (pre V108_First));
    --%PROPERTY OK=true;



-- 137 implications. 
assert (true -> (((V37_env => (V32_dirty_s < 2)) = true) 
and (true = V34_R1) 
and (V34_R1 = (V32_dirty_s < 2)) 
and ((V35_R2 and V34_R1) = V35_R2) 
and ((V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First)) = ((V35_R2 and V34_R1) and V36_R3)) 
and (((V35_R2 and V34_R1) and V36_R3) = V36_R3) 
and (((pre V30_invalid_s) >= 1) = V81_garde_s1) 
and (V81_garde_s1 = V83_garde_s3) 
and (V95_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and (init_invalid_s >= 0))) 
and (((pre V31_valid_s) >= 1) = V82_garde_s2) 
and ((V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s)))) => (V35_R2 and V34_R1)) 
and ((V95_X and (pre V37_env)) => V37_env) 
and ((V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First)) => (V35_R2 and V34_R1)) 
and ((e_s2 and e_s3) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((e_s2 and e_s3) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and ((e_s2 and e_s3) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First))) 
and ((e_s2 and e_s3) => e_s2) 
and ((e_s1 and e_s3) => ((e_s1 and e_s2) or (e_s1 and e_s3))) 
and (((e_s1 and e_s2) or (e_s1 and e_s3)) => e_s1) 
and ((e_s2 and e_s3) => e_s3) 
and (e_s2 => (V35_R2 and V34_R1)) 
and ((e_s1 and e_s2) => ((e_s1 and e_s2) or (e_s1 and e_s3))) 
and (e_s3 => (V35_R2 and V34_R1)) 
and ((e_s1 and e_s2) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((e_s1 and e_s2) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and ((e_s1 and e_s2) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First))) 
and ((e_s1 and e_s2) => e_s2) 
and ((e_s1 and e_s3) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and ((e_s1 and e_s3) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First))) 
and ((e_s1 and e_s3) => e_s3) 
and (((e_s1 and e_s2) or (e_s1 and e_s3)) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and ((V95_X and (pre V37_env)) => (pre V37_env)) 
and ((((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))))) 
and ((((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)) => (V37_env => (((V30_invalid_s + V31_valid_s) + V32_dirty_s) = V108_First))) 
and (V37_env => V95_X) 
and (V37_env => (init_invalid_s >= 0)) 
and (V95_X => (init_invalid_s >= 0)) 
and (V95_X => (not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) = 0) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) = (((pre V30_invalid_s) + (pre V31_valid_s)) + (pre V32_dirty_s))) 
and ((pre V33_mem_init_s) = (pre V108_First)) 
and (((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) <=((pre V30_invalid_s) - 1)) 
and (((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) <=(((pre V30_invalid_s) - 1) + (pre V32_dirty_s))) 
and (((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) <=((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1)) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s1 then (if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))))) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(pre V30_invalid_s)) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if V83_garde_s3 then 0 else (pre V31_valid_s))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=V31_valid_s) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if e_s1 then (if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=V32_dirty_s) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V81_garde_s1 then 0 else (pre V32_dirty_s)) <=(if e_s1 then (if V81_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((pre V32_dirty_s) <=(if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((pre V32_dirty_s) <=(if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) 
and ((pre V32_dirty_s) <=(if V83_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s1 then (if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=(if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=(if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=(if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=(pre V30_invalid_s)) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and (1 <=2) 
and ((pre V30_invalid_s) <=((pre V30_invalid_s) + (pre V32_dirty_s))) 
and (((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) <=(if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s))) 
and ((if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) <=(if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=(if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and ((if V82_garde_s2 then 0 else (pre V31_valid_s)) <=(if V81_garde_s1 then 0 else (pre V32_dirty_s))) 
and ((if V81_garde_s1 then 0 else (pre V32_dirty_s)) <=(pre V32_dirty_s)) 
and ((pre V32_dirty_s) <=(if V82_garde_s2 then 1 else (pre V32_dirty_s))) 
and ((if V82_garde_s2 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and ((if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) <=(if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((pre V31_valid_s) <=(if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and ((if V83_garde_s3 then 0 else (pre V31_valid_s)) <=(if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))) 
and ((if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)) <=(pre V31_valid_s)) 
and ((pre V31_valid_s) <=(if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and (V31_valid_s <=(if e_s1 then (if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s))))) 
and ((if e_s1 then (if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) else (if e_s2 then (if V82_garde_s2 then 0 else (pre V31_valid_s)) else (if e_s3 then (if V83_garde_s3 then 0 else (pre V31_valid_s)) else (pre V31_valid_s)))) <=(if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s))) 
and ((if V81_garde_s1 then ((pre V31_valid_s) + 1) else (pre V31_valid_s)) <=((pre V31_valid_s) + 1)) 
and (((pre V30_invalid_s) - 1) <=(((pre V30_invalid_s) - 1) + (pre V32_dirty_s))) 
and ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) <=((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1)) 
and (((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) <=(if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and ((if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)) <=(if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) <=(if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and ((if e_s1 then (if V81_garde_s1 then ((((pre V30_invalid_s) - 1) + (pre V32_dirty_s)) - 1) else (pre V30_invalid_s)) else (if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) <=(if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s)))) 
and ((if e_s2 then (if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (if e_s3 then (if V83_garde_s3 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) else (pre V30_invalid_s))) <=(if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and (V30_invalid_s <=(V30_invalid_s + V31_valid_s)) 
and ((V30_invalid_s + V31_valid_s) <=((V30_invalid_s + V31_valid_s) + V32_dirty_s)) 
and (((V30_invalid_s + V31_valid_s) + V32_dirty_s) <=V108_First) 
and (V32_dirty_s <=(if e_s1 then (if V81_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))))) 
and ((if e_s1 then (if V81_garde_s1 then 0 else (pre V32_dirty_s)) else (if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) <=(if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)))) 
and ((if e_s2 then (if V82_garde_s2 then 1 else (pre V32_dirty_s)) else (if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s))) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and ((if e_s3 then (if V83_garde_s3 then 1 else (pre V32_dirty_s)) else (pre V32_dirty_s)) <=(if V83_garde_s3 then 1 else (pre V32_dirty_s))) 
and ((if V83_garde_s3 then 1 else (pre V32_dirty_s)) <=1) 
and (1 <=((pre V31_valid_s) + 1)) 
and ((pre V30_invalid_s) <=(if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s))) 
and ((if V82_garde_s2 then ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) - 1) else (pre V30_invalid_s)) <=((pre V30_invalid_s) + (pre V31_valid_s))) 
and (((pre V30_invalid_s) + (pre V31_valid_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and (((pre V30_invalid_s) + (pre V32_dirty_s)) <=(((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s))) 
and ((((pre V30_invalid_s) + (pre V32_dirty_s)) + (pre V31_valid_s)) <=(pre V33_mem_init_s)) 
and  true ));
tel.

