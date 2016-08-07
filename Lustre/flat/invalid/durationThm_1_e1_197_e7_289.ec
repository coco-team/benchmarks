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
  V45_age_of_p = (0 -> (if (pre p) then (((pre V45_age_of_p) + 1) + 1) else 0))
  ;
  V52_age_of_p = (0 -> (if (pre q) then (((pre V52_age_of_p) + 1) + 1) else 0))
  ;
  V55_X = ((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) 
  and ((V52_age_of_p >= V15_m) => r));
  V68_age_of_p = (0 -> (if (pre p) then (((pre V68_age_of_p) + 1) + 1) else 0))
  ;
  --%PROPERTY  OK=true;



-- 48 implications. 
assert (true -> ((((V14_k >= 1) and (V15_m >= 1)) = V16_env) 
and (((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) and ((V52_age_of_p >= V15_m) => r)) = V55_X) 
and (((V14_k >= 1) and (V15_m >= 1)) => (V55_X or (pre V16_env))) 
and ((pre V16_env) => (V55_X or (pre V16_env))) 
and (((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) and ((V52_age_of_p >= V15_m) => r)) => (((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q))) 
and (((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) and ((V52_age_of_p >= V15_m) => r)) => ((V52_age_of_p >= V15_m) => r)) 
and ((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) => ((V14_k >= 1) and (V15_m >= 1))) 
and (((V14_k >= 1) and (V15_m >= 1)) => (V15_m >= 1)) 
and (r => ((V68_age_of_p >= (V14_k + V15_m)) => r)) 
and (r => (V16_env => ((V68_age_of_p >= (V14_k + V15_m)) => r))) 
and (r => ((V52_age_of_p >= V15_m) => r)) 
and (((V68_age_of_p >= (V14_k + V15_m)) => r) => (V16_env => ((V68_age_of_p >= (V14_k + V15_m)) => r))) 
and ((((V14_k >= 1) and (V15_m >= 1)) and ((V45_age_of_p >= V14_k) => q)) => ((V45_age_of_p >= V14_k) => q)) 
and (((V14_k >= 1) and (V15_m >= 1)) => (V14_k >= 1)) 
and (q => ((V45_age_of_p >= V14_k) => q)) 
and ((pre V68_age_of_p) = (pre V45_age_of_p)) 
and (V68_age_of_p = V45_age_of_p) 
and ((if (pre p) then (((pre V45_age_of_p) + 1) + 1) else 0) = (if (pre p) then (((pre V68_age_of_p) + 1) + 1) else 0)) 
and (((pre V68_age_of_p) + 1) = ((pre V45_age_of_p) + 1)) 
and ((((pre V45_age_of_p) + 1) + 1) = (((pre V68_age_of_p) + 1) + 1)) 
and (0 <=(pre V52_age_of_p)) 
and (0 <=V52_age_of_p) 
and (0 <=(if (pre q) then (((pre V52_age_of_p) + 1) + 1) else 0)) 
and (0 <=V68_age_of_p) 
and (0 <=(if (pre p) then (((pre V45_age_of_p) + 1) + 1) else 0)) 
and (0 <=1) 
and (0 <=((pre V52_age_of_p) + 1)) 
and (0 <=(((pre V52_age_of_p) + 1) + 1)) 
and (1 <=((pre V52_age_of_p) + 1)) 
and (1 <=(((pre V52_age_of_p) + 1) + 1)) 
and (0 <=(pre V68_age_of_p)) 
and ((pre V68_age_of_p) <=((pre V68_age_of_p) + 1)) 
and (((pre V68_age_of_p) + 1) <=(((pre V45_age_of_p) + 1) + 1)) 
and ((pre V52_age_of_p) <=((pre V52_age_of_p) + 1)) 
and (((pre V52_age_of_p) + 1) <=(((pre V52_age_of_p) + 1) + 1)) 
and (V52_age_of_p <=(if (pre q) then (((pre V52_age_of_p) + 1) + 1) else 0)) 
and ((if (pre q) then (((pre V52_age_of_p) + 1) + 1) else 0) <=(((pre V52_age_of_p) + 1) + 1)) 
and (V68_age_of_p <=(if (pre p) then (((pre V45_age_of_p) + 1) + 1) else 0)) 
and ((if (pre p) then (((pre V45_age_of_p) + 1) + 1) else 0) <=(((pre V45_age_of_p) + 1) + 1)) 
and (1 <=((pre V68_age_of_p) + 1)) 
and (((pre V68_age_of_p) + 1) <=(((pre V45_age_of_p) + 1) + 1)) 
and  true ));
tel.

