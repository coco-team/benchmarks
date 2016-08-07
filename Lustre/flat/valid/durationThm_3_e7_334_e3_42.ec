node top
  (k0: int;
  m0: int;
  p: bool;
  q: bool)
returns
  (OK: bool);

var
  V13_k: int;
  V14_m: int;
  V15_env: bool;
  V43_age_of_p: int;
  V50_age_of_p: int;
  V54_X: bool;
  V68_age_of_p: int;

let
  OK = (V15_env => (V68_age_of_p <= (V13_k + V14_m)));
  V13_k = (k0 -> (pre V13_k));
  V14_m = (m0 -> (pre V14_m));
  V15_env = (V54_X -> (V54_X or (pre V15_env)));
  V43_age_of_p = (0 -> (if (pre p) then ((pre V43_age_of_p) - 1) else 0));
  V50_age_of_p = (0 -> (if (pre q) then ((pre V50_age_of_p) - 1) else 0));
  V54_X = ((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) 
  and (V50_age_of_p <= V14_m));
  V68_age_of_p = (0 -> (if (pre p) then ((pre V68_age_of_p) - 1) else 0));
  --%PROPERTY OK;


tel.

