node top
  (init: int)
returns
  (OK: bool);

var
  V4_time: int;

let
  OK = (V4_time < 0);
  V4_time = (0 -> (if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1)));
  --%PROPERTY OK;



-- 13 implications. 
assert (true -> ((false = (V4_time < 0)) 
and (0 <=1) 
and (0 <=V4_time) 
and (0 <=(if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1))) 
and ((pre V4_time) <=5) 
and (1 <=5) 
and ((if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1)) <=5) 
and (0 <=(pre V4_time)) 
and ((pre V4_time) <=((pre V4_time) + 1)) 
and (1 <=((pre V4_time) + 1)) 
and (V4_time <=(if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1))) 
and ((if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1)) <=((pre V4_time) + 1)) 
and  true ));
tel.

