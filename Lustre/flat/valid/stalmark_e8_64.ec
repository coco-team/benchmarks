node top
  (x: bool)
returns
  (OK: bool);

var
  V4_a: bool;
  V5_b: bool;
  V6_c: bool;

let
  OK = (((((((not V4_a) and (not V5_b)) and V6_c) and (((not V4_a) and V5_b) 
  and (not V6_c))) or ((V4_a and (not V5_b)) and (not V6_c))) or ((V4_a and 
  V5_b) and V6_c)) and (not ((V4_a and V5_b) and V6_c)));
  V4_a = (true -> (pre V6_c));
  V5_b = (false -> (pre V4_a));
  V6_c = (false -> (pre V5_b));
  --%PROPERTY OK;


tel.

