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
  --%PROPERTY  OK=true;



-- 41 implications. 
assert (true -> ((true = (V15_env => (V68_age_of_p <= (V13_k + V14_m)))) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) = (((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q))) 
and ((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) = ((V13_k >= 1) and (V14_m >= 1))) 
and (((V13_k >= 1) and (V14_m >= 1)) = V15_env) 
and (V15_env = V54_X) 
and ((pre V15_env) => (V54_X or (pre V15_env))) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) => (V54_X or (pre V15_env))) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) => ((V43_age_of_p >= V13_k) => q)) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) => (V68_age_of_p <= (V13_k + V14_m))) 
and ((V14_m >= 1) => (V50_age_of_p <= V14_m)) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) => (V13_k >= 1)) 
and (q => ((V43_age_of_p >= V13_k) => q)) 
and (((((V13_k >= 1) and (V14_m >= 1)) and ((V43_age_of_p >= V13_k) => q)) and (V50_age_of_p <= V14_m)) => (V14_m >= 1)) 
and ((V13_k >= 1) => ((V43_age_of_p >= V13_k) => q)) 
and (((pre V68_age_of_p) - 1) = ((pre V43_age_of_p) - 1)) 
and ((if (pre p) then ((pre V43_age_of_p) - 1) else 0) = (if (pre p) then ((pre V68_age_of_p) - 1) else 0)) 
and (V68_age_of_p = V43_age_of_p) 
and ((pre V43_age_of_p) = (pre V68_age_of_p)) 
and (((pre V68_age_of_p) - 1) <=(pre V43_age_of_p)) 
and (((pre V50_age_of_p) - 1) <=(pre V50_age_of_p)) 
and (((pre V68_age_of_p) - 1) <=(if (pre p) then ((pre V43_age_of_p) - 1) else 0)) 
and ((if (pre p) then ((pre V43_age_of_p) - 1) else 0) <=V68_age_of_p) 
and (V68_age_of_p <=0) 
and (0 <=1) 
and (((pre V50_age_of_p) - 1) <=(if (pre q) then ((pre V50_age_of_p) - 1) else 0)) 
and ((if (pre q) then ((pre V50_age_of_p) - 1) else 0) <=V50_age_of_p) 
and (V50_age_of_p <=0) 
and (0 <=1) 
and ((pre V43_age_of_p) <=0) 
and (0 <=1) 
and ((pre V50_age_of_p) <=0) 
and (0 <=1) 
and  true ));
tel.

