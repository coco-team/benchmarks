node top
  (x: bool)
returns
  (OK: bool);

var
  V13_b: bool;
  V14_d: bool;
  V40_a: bool;
  V41_b: bool;
  V51_time: int;

let
  OK = (V13_b = V14_d);
  V13_b = (V40_a and V41_b);
  V14_d = (V51_time = 2);
  V40_a = (false -> (not (pre V41_b)));
  V41_b = (false -> (pre V40_a));
  V51_time = (0 -> (if ((pre V51_time) = 3) then 0 else (((pre V51_time) - 1) + 
  1)));
  --%PROPERTY  OK;



-- 25 implications. 
assert (true -> ((V13_b = (V40_a and V41_b)) 
and ((V51_time = 2) = false) 
and (false = ((pre V51_time) = 3)) 
and (((pre V51_time) = 3) = V14_d) 
and (V40_a => (not (pre V41_b))) 
and (V41_b => (pre V40_a)) 
and (V13_b => V41_b) 
and ((pre V41_b) => (V13_b = V14_d)) 
and (V13_b => V40_a) 
and ((if ((pre V51_time) = 3) then 0 else (((pre V51_time) - 1) + 1)) = V51_time) 
and (V51_time = (pre V51_time)) 
and ((pre V51_time) = (((pre V51_time) - 1) + 1)) 
and ((((pre V51_time) - 1) + 1) = 0) 
and (((pre V51_time) - 1) <=(if ((pre V51_time) = 3) then 0 else (((pre V51_time) - 1) + 1))) 
and ((if ((pre V51_time) = 3) then 0 else (((pre V51_time) - 1) + 1)) <=1) 
and (1 <=2) 
and (2 <=3) 
and  true ));
tel.

