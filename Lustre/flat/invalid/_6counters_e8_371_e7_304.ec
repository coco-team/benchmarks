node top
  (x: bool)
returns
  (OK: bool);

var
  V14_a: bool;
  V15_b: bool;
  V41_time: int;
  V50_a: bool;
  V51_b: bool;
  V52_c: bool;

let
  OK = (V14_a = V15_b);
  V14_a = (V41_time = 5);
  V15_b = (V50_a and V52_c);
  V41_time = (0 -> (if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1)));
  V50_a = (false -> (not (pre V50_a)));
  V51_b = (false -> (((not (pre V52_c)) or ((not (pre V51_b)) and (pre V50_a))) 
  or ((pre V51_b) and (not (pre V50_a)))));
  V52_c = (false -> (((pre V52_c) and (not (pre V50_a))) and ((pre V51_b) and 
  (pre V50_a))));
  --%PROPERTY OK;



-- 39 implications. 
assert (true -> (((((not (pre V52_c)) or ((not (pre V51_b)) and (pre V50_a))) or ((pre V51_b) and (not (pre V50_a)))) = true) 
and (true = (not (pre V52_c))) 
and ((not (pre V52_c)) = ((not (pre V52_c)) or ((not (pre V51_b)) and (pre V50_a)))) 
and ((pre V50_a) = ((pre V51_b) and (pre V50_a))) 
and ((V41_time = 5) = V14_a) 
and (false = ((not (pre V51_b)) and (pre V50_a))) 
and (((not (pre V51_b)) and (pre V50_a)) = ((pre V52_c) and (not (pre V50_a)))) 
and (((pre V52_c) and (not (pre V50_a))) = (pre V52_c)) 
and ((pre V52_c) = V52_c) 
and (V52_c = (V50_a and V52_c)) 
and ((V50_a and V52_c) = V15_b) 
and (V15_b = (((pre V52_c) and (not (pre V50_a))) and ((pre V51_b) and (pre V50_a)))) 
and (((pre V41_time) = 5) => (pre V51_b)) 
and (V50_a => (not (pre V50_a))) 
and ((not (pre V51_b)) => V50_a) 
and ((pre V50_a) => (pre V51_b)) 
and ((V41_time = 5) => (pre V51_b)) 
and (((pre V41_time) = 5) => (V14_a = V15_b)) 
and (((pre V51_b) and (not (pre V50_a))) => (pre V51_b)) 
and (((pre V51_b) and (not (pre V50_a))) => (not (pre V50_a))) 
and ((pre V41_time) <=5) 
and ((if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1)) <=5) 
and ((pre V41_time) <=((pre V41_time) + 1)) 
and (1 <=(if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1))) 
and ((if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1)) <=((pre V41_time) + 1)) 
and (V41_time <=(if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1))) 
and ((if ((pre V41_time) = 5) then 1 else ((pre V41_time) + 1)) <=((pre V41_time) + 1)) 
and  true ));
tel.

