node top
  (k0: int;
  p: bool;
  q: bool;
  r: bool;
  t: bool)
returns
  (OK: bool);

var
  V14_k: int;
  V15_env: bool;
  V44_age_of_p: int;
  V51_age_of_p: int;
  V55_X: bool;
  V69_age_of_p: int;

let
  OK = (V15_env => ((V69_age_of_p >= V14_k) => (q and t)));
  V14_k = (k0 -> (pre V14_k));
  V15_env = (V55_X -> (V55_X and (pre V15_env)));
  V44_age_of_p = (0 -> (if (pre p) then (((pre V44_age_of_p) - 1) + 1) else 0))
  ;
  V51_age_of_p = (0 -> (if (pre r) then (((pre V51_age_of_p) - 1) + 1) else 0))
  ;
  V55_X = (((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q)) and ((V51_age_of_p 
  >= V14_k) => t));
  V69_age_of_p = (0 -> (if (pre (p and r)) then (((pre V69_age_of_p) - 1) + 1) 
  else 0));
  --%PROPERTY OK;


tel.

