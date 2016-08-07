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


tel.

