node top
  (e_s1: bool;
  e_s2: bool;
  e_s3: bool;
  init_invalid_s: int)
returns
  (OK: bool);

var
  V27_invalid_s: int;
  V28_valid_s: int;
  V29_dirty_s: int;
  V30_mem_init_s: int;
  V31_env: bool;
  V70_garde_s1: bool;
  V71_garde_s2: bool;
  V72_garde_s3: bool;
  V85_X: bool;

let
  OK = (V31_env => (V29_dirty_s < 2));
  V27_invalid_s = (V30_mem_init_s -> (if e_s1 then (if V70_garde_s1 then (((pre 
  V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) else (if 
  e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + 
  (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if 
  V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre 
  V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))));
  V28_valid_s = (0 -> (if e_s1 then (if V70_garde_s1 then ((pre V28_valid_s) + 
  1) else (pre V28_valid_s)) else (if e_s2 then (if V71_garde_s2 then 0 else 
  (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre 
  V28_valid_s)) else (pre V28_valid_s)))));
  V29_dirty_s = (0 -> (if e_s1 then (if V70_garde_s1 then 0 else (pre 
  V29_dirty_s)) else (if e_s2 then (if V71_garde_s2 then 1 else (pre 
  V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre 
  V29_dirty_s)) else (pre V29_dirty_s)))));
  V30_mem_init_s = (init_invalid_s -> (pre V30_mem_init_s));
  V31_env = (V85_X -> (V85_X and (pre V31_env)));
  V70_garde_s1 = ((pre V27_invalid_s) >= 1);
  V71_garde_s2 = ((pre V28_valid_s) >= 1);
  V72_garde_s3 = ((pre V27_invalid_s) >= 1);
  V85_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and 
  (init_invalid_s >= 0));
    --%PROPERTY OK=true;



-- 95 implications. 
assert (true -> (((V29_dirty_s < 2) = true) 
and (true = (V31_env => (V29_dirty_s < 2))) 
and (V72_garde_s3 = V70_garde_s1) 
and (V70_garde_s1 = ((pre V27_invalid_s) >= 1)) 
and (V85_X = ((not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) and (init_invalid_s >= 0))) 
and (V71_garde_s2 = ((pre V28_valid_s) >= 1)) 
and ((V85_X and (pre V31_env)) => V31_env) 
and ((e_s1 and e_s3) => ((e_s1 and e_s2) or (e_s1 and e_s3))) 
and ((e_s2 and e_s3) => e_s2) 
and (V85_X => (init_invalid_s >= 0)) 
and ((e_s2 and e_s3) => e_s3) 
and ((e_s2 and e_s3) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((e_s1 and e_s2) => ((e_s1 and e_s2) or (e_s1 and e_s3))) 
and ((e_s1 and e_s3) => e_s3) 
and ((e_s1 and e_s2) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and ((e_s1 and e_s2) => e_s2) 
and (((e_s1 and e_s2) or (e_s1 and e_s3)) => (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3))) 
and (((e_s1 and e_s2) or (e_s1 and e_s3)) => e_s1) 
and (V31_env => (not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)))) 
and ((V85_X and (pre V31_env)) => (pre V31_env)) 
and (V85_X => (not (((e_s1 and e_s2) or (e_s1 and e_s3)) or (e_s2 and e_s3)))) 
and (V31_env => V85_X) 
and (0 = (if V71_garde_s2 then 0 else (pre V28_valid_s))) 
and ((pre V30_mem_init_s) = (((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s))) 
and (0 <=(if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s)))) 
and (0 <=(if V72_garde_s3 then 0 else (pre V28_valid_s))) 
and (0 <=(if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))) 
and (0 <=(pre V28_valid_s)) 
and (0 <=(if e_s1 then (if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) else (if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))))) 
and (0 <=V29_dirty_s) 
and (0 <=(if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s))) 
and ((if V70_garde_s1 then 0 else (pre V29_dirty_s)) <=(if e_s1 then (if V70_garde_s1 then 0 else (pre V29_dirty_s)) else (if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s))))) 
and ((pre V29_dirty_s) <=(if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s)))) 
and ((pre V29_dirty_s) <=(if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s))) 
and ((pre V29_dirty_s) <=(if V72_garde_s3 then 1 else (pre V29_dirty_s))) 
and ((if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))) <=(if e_s1 then (if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) else (if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))))) 
and (1 <=2) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s))) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(if e_s1 then (if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) else (if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))))) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=(pre V27_invalid_s)) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=((pre V27_invalid_s) + (pre V29_dirty_s))) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=(if e_s1 then (if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) else (if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))))) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=(if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=(if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=(pre V27_invalid_s)) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=((pre V27_invalid_s) + (pre V29_dirty_s))) 
and ((pre V27_invalid_s) <=((pre V27_invalid_s) + (pre V29_dirty_s))) 
and (0 <=(if V70_garde_s1 then 0 else (pre V29_dirty_s))) 
and ((if V70_garde_s1 then 0 else (pre V29_dirty_s)) <=(pre V29_dirty_s)) 
and ((pre V29_dirty_s) <=(if V71_garde_s2 then 1 else (pre V29_dirty_s))) 
and ((if V71_garde_s2 then 1 else (pre V29_dirty_s)) <=1) 
and (1 <=((pre V28_valid_s) + 1)) 
and ((if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))) <=(if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))) 
and ((if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s)) <=(pre V28_valid_s)) 
and ((pre V28_valid_s) <=(if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s))) 
and ((if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) <=((pre V28_valid_s) + 1)) 
and ((if V72_garde_s3 then 0 else (pre V28_valid_s)) <=(if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s))) 
and ((if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s)) <=(pre V28_valid_s)) 
and ((pre V28_valid_s) <=(if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s))) 
and ((if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) <=((pre V28_valid_s) + 1)) 
and ((if e_s1 then (if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) else (if e_s2 then (if V71_garde_s2 then 0 else (pre V28_valid_s)) else (if e_s3 then (if V72_garde_s3 then 0 else (pre V28_valid_s)) else (pre V28_valid_s)))) <=(if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s))) 
and ((if V70_garde_s1 then ((pre V28_valid_s) + 1) else (pre V28_valid_s)) <=((pre V28_valid_s) + 1)) 
and (V29_dirty_s <=(if e_s1 then (if V70_garde_s1 then 0 else (pre V29_dirty_s)) else (if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s))))) 
and ((if e_s1 then (if V70_garde_s1 then 0 else (pre V29_dirty_s)) else (if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s)))) <=(if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s)))) 
and ((if e_s2 then (if V71_garde_s2 then 1 else (pre V29_dirty_s)) else (if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s))) <=1) 
and (1 <=((pre V28_valid_s) + 1)) 
and ((if e_s3 then (if V72_garde_s3 then 1 else (pre V29_dirty_s)) else (pre V29_dirty_s)) <=(if V72_garde_s3 then 1 else (pre V29_dirty_s))) 
and ((if V72_garde_s3 then 1 else (pre V29_dirty_s)) <=1) 
and (1 <=((pre V28_valid_s) + 1)) 
and ((((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) <=((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1)) 
and (((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) <=(if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(pre V30_mem_init_s)) 
and ((if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) <=(if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(pre V30_mem_init_s)) 
and ((if e_s1 then (if V70_garde_s1 then (((pre V27_invalid_s) + (pre V29_dirty_s)) - 1) else (pre V27_invalid_s)) else (if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))) <=(if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))) 
and ((if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))) <=(if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(pre V30_mem_init_s)) 
and ((if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)) <=(if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s)))) 
and ((if e_s2 then (if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (if e_s3 then (if V72_garde_s3 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) else (pre V27_invalid_s))) <=(if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(pre V30_mem_init_s)) 
and ((pre V27_invalid_s) <=(if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s))) 
and ((if V71_garde_s2 then ((((pre V27_invalid_s) + (pre V29_dirty_s)) + (pre V28_valid_s)) - 1) else (pre V27_invalid_s)) <=(pre V30_mem_init_s)) 
and (((pre V27_invalid_s) + (pre V29_dirty_s)) <=(pre V30_mem_init_s)) 
and  true ));
tel.

