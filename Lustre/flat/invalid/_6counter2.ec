node top
  (x: bool)
returns
  (OK: bool);

var
  V4_a: bool;
  V5_b: bool;
  V6_c: bool;

let
  OK = (not (V6_c and V4_a));
  V4_a = (false -> (not (pre V4_a)));
  V5_b = (false -> ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) or 
  ((pre V5_b) and (not (pre V4_a)))));
  V6_c = (false -> (((pre V6_c) and (not (pre V4_a))) or ((pre V5_b) and (pre 
  V4_a))));
  --%PROPERTY OK;



-- 27 implications. 
assert (true -> ((V4_a => (not (pre V4_a))) 
and (V6_c => (((pre V6_c) and (not (pre V4_a))) or ((pre V5_b) and (pre V4_a)))) 
and ((V6_c and V4_a) => ((pre V6_c) and (not (pre V4_a)))) 
and ((not (pre V6_c)) => (not (V6_c and V4_a))) 
and (((pre V6_c) and (not (pre V4_a))) => (pre V6_c)) 
and (((not (pre V6_c)) and (not (pre V5_b))) => (not (pre V5_b))) 
and (((pre V5_b) and (pre V4_a)) => (((pre V6_c) and (not (pre V4_a))) or ((pre V5_b) and (pre V4_a)))) 
and ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) => (not (pre V6_c))) 
and ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) => (pre V4_a)) 
and (((pre V5_b) and (not (pre V4_a))) => (pre V5_b)) 
and ((V6_c and V4_a) => V6_c) 
and (((pre V6_c) and (not (pre V4_a))) => (((pre V6_c) and (not (pre V4_a))) or ((pre V5_b) and (pre V4_a)))) 
and (((not (pre V6_c)) and (not (pre V5_b))) => (not (pre V6_c))) 
and ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) => ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) or ((pre V5_b) and (not (pre V4_a))))) 
and ((pre V4_a) => (not (V6_c and V4_a))) 
and ((V6_c and V4_a) => V4_a) 
and (((pre V6_c) and (not (pre V4_a))) => (not (pre V4_a))) 
and (((pre V5_b) and (pre V4_a)) => (pre V5_b)) 
and ((pre V6_c) => (not (pre V5_b))) 
and (((pre V5_b) and (pre V4_a)) => (not (pre V6_c))) 
and (((pre V5_b) and (pre V4_a)) => (pre V4_a)) 
and (((pre V5_b) and (not (pre V4_a))) => ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) or ((pre V5_b) and (not (pre V4_a))))) 
and ((pre V5_b) => (not (pre V6_c))) 
and (((pre V5_b) and (not (pre V4_a))) => (not (pre V6_c))) 
and (((pre V5_b) and (not (pre V4_a))) => (not (pre V4_a))) 
and ((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) => ((not (pre V6_c)) and (not (pre V5_b)))) 
and (((((not (pre V6_c)) and (not (pre V5_b))) and (pre V4_a)) or ((pre V5_b) and (not (pre V4_a)))) => (not (pre V6_c))) 
and  true ));
tel.

