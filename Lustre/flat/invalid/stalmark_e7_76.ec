node top
  (x: bool)
returns
  (OK: bool);

var
  V4_a: bool;
  V5_b: bool;
  V6_c: bool;

let
  OK = ((((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and 
  (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c))) or ((V4_a and V5_b) 
  and V6_c)) and (not ((V4_a and V5_b) and V6_c)));
  V4_a = (true -> (pre V6_c));
  V5_b = (false -> (pre V4_a));
  V6_c = (false -> (pre V5_b));
  --%PROPERTY OK;



-- 35 implications. 
assert (true -> (((((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c))) or ((V4_a and V5_b) and V6_c)) = ((((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c))) or ((V4_a and V5_b) and V6_c)) and (not ((V4_a and V5_b) and V6_c)))) 
and (((((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c))) or ((V4_a and V5_b) and V6_c)) and (not ((V4_a and V5_b) and V6_c))) = (not ((V4_a and V5_b) and V6_c))) 
and ((not ((V4_a and V5_b) and V6_c)) = true) 
and (true = ((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c)))) 
and ((((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c))) = (not V4_a)) 
and ((not V4_a) = ((not V4_a) or ((not V5_b) and V6_c))) 
and ((((not V4_a) and V5_b) and (not V6_c)) = V5_b) 
and (V5_b = ((not V4_a) and V5_b)) 
and (V6_c = ((not V5_b) and V6_c)) 
and (V4_a = ((V4_a and (not V5_b)) and (not V6_c))) 
and (((V4_a and (not V5_b)) and (not V6_c)) = (V4_a and (not V5_b))) 
and (false = (V4_a and V5_b)) 
and ((V4_a and V5_b) = ((V4_a and V5_b) and V6_c)) 
and ((((not V4_a) and V5_b) and (not V6_c)) => (pre V4_a)) 
and (V6_c => (pre V5_b)) 
and ((pre V6_c) => V4_a) 
and ((pre V4_a) => (not V6_c)) 
and ((pre V5_b) => (not V5_b)) 
and ((((not V4_a) and V5_b) and (not V6_c)) => (((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c)))) 
and (V4_a => (not V5_b)) 
and (V4_a => (not V6_c)) 
and (V6_c => (((not V4_a) or ((not V5_b) and V6_c)) or (((not V4_a) and V5_b) and (not V6_c)))) 
and  true ));
tel.

