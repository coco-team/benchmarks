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
  V13_b = (V40_a or V41_b);
  V14_d = (V51_time = 2);
  V40_a = (false -> (not (pre V41_b)));
  V41_b = (false -> (pre V40_a));
  V51_time = (0 -> (if ((pre V51_time) = 3) then 0 else ((pre V51_time) + 1)));
  --%PROPERTY  OK;



-- 27 implications. 
assert (true -> ((V13_b = (V40_a or V41_b)) 
and ((V51_time = 2) = V14_d) 
and (V41_b => (pre V40_a)) 
and (V40_a => (not (pre V41_b))) 
and ((V51_time = 2) => (V13_b = V14_d)) 
and (V40_a => V13_b) 
and ((V51_time = 2) => V41_b) 
and (((pre V51_time) = 3) => (pre V41_b)) 
and (((pre V51_time) = 3) => (V13_b = V14_d)) 
and ((V51_time = 2) => V40_a) 
and (V41_b => V13_b) 
and (0 <=1) 
and (0 <=V51_time) 
and (0 <=(if ((pre V51_time) = 3) then 0 else ((pre V51_time) + 1))) 
and (0 <=2) 
and ((pre V51_time) <=3) 
and (1 <=2) 
and (1 <=3) 
and ((if ((pre V51_time) = 3) then 0 else ((pre V51_time) + 1)) <=3) 
and (0 <=(pre V51_time)) 
and ((pre V51_time) <=((pre V51_time) + 1)) 
and (1 <=((pre V51_time) + 1)) 
and (V51_time <=(if ((pre V51_time) = 3) then 0 else ((pre V51_time) + 1))) 
and ((if ((pre V51_time) = 3) then 0 else ((pre V51_time) + 1)) <=((pre V51_time) + 1)) 
and (2 <=3) 
and  true ));
tel.

