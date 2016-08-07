node top
  (ik: int;
  im: int;
  p: bool;
  q: bool;
  r: bool)
returns
  (OK: bool);

var
  V14_k: int;
  V15_m: int;
  V16_env: bool;
  V45_age_of_p: int;
  V52_age_of_p: int;
  V55_X: bool;
  V68_age_of_p: int;

let
  OK = (V16_env => (true -> ((V68_age_of_p >= (V14_k + V15_m)) => r)));
  V14_k = (ik -> (pre V14_k));
  V15_m = (im -> (pre V15_m));
  V16_env = (V55_X -> (V55_X or (pre V16_env)));
  V45_age_of_p = (0 -> (if (pre p) then ((pre V45_age_of_p) + 1) else 0));
  V52_age_of_p = (0 -> (if (pre q) then ((pre V52_age_of_p) + 1) else 0));
  V55_X = ((((V14_k >= 1) or (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) 
  and ((V52_age_of_p >= V15_m) => r));
  V68_age_of_p = (0 -> (if (pre p) then ((pre V68_age_of_p) + 1) else 0));
  --%PROPERTY OK;


tel.

