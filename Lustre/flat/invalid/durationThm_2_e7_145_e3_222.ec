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
  V15_env = (V55_X -> (V55_X or (pre V15_env)));
  V44_age_of_p = (0 -> (if (pre p) then ((pre V44_age_of_p) - 1) else 0));
  V51_age_of_p = (0 -> (if (pre r) then ((pre V51_age_of_p) - 1) else 0));
  V55_X = (((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q)) and ((V51_age_of_p 
  >= V14_k) => t));
  V69_age_of_p = (0 -> (if (pre (p and r)) then ((pre V69_age_of_p) - 1) else 0
  ));
  --%PROPERTY  OK=true;



-- 55 implications. 
assert (true -> (((V15_env => ((V69_age_of_p >= V14_k) => (q and t))) = true) 
and ((V14_k >= 1) = V15_env) 
and (V15_env = (((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q)) and ((V51_age_of_p >= V14_k) => t))) 
and ((((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q)) and ((V51_age_of_p >= V14_k) => t)) = ((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q))) 
and (((V14_k >= 1) and ((V44_age_of_p >= V14_k) => q)) = V55_X) 
and ((V14_k >= 1) => (V55_X or (pre V15_env))) 
and ((V51_age_of_p >= V14_k) => (V69_age_of_p >= V14_k)) 
and ((V44_age_of_p >= V14_k) => (V69_age_of_p >= V14_k)) 
and (((V69_age_of_p >= V14_k) => (q and t)) => ((V44_age_of_p >= V14_k) => q)) 
and ((q and t) => ((V69_age_of_p >= V14_k) => (q and t))) 
and ((q and t) => q) 
and ((V14_k >= 1) => ((V69_age_of_p >= V14_k) => (q and t))) 
and (t => ((V51_age_of_p >= V14_k) => t)) 
and (q => ((V44_age_of_p >= V14_k) => q)) 
and ((q and t) => t) 
and (((pre p) and (pre r)) => (pre r)) 
and (((V69_age_of_p >= V14_k) => (q and t)) => ((V51_age_of_p >= V14_k) => t)) 
and (((pre V51_age_of_p) - 1) <=(if (pre r) then ((pre V51_age_of_p) - 1) else 0)) 
and (((pre V51_age_of_p) - 1) <=V51_age_of_p) 
and (((pre V51_age_of_p) - 1) <=(pre V51_age_of_p)) 
and (((pre V44_age_of_p) - 1) <=(if (pre p) then ((pre V44_age_of_p) - 1) else 0)) 
and (((pre V44_age_of_p) - 1) <=V44_age_of_p) 
and (((pre V44_age_of_p) - 1) <=(pre V44_age_of_p)) 
and (((pre V69_age_of_p) - 1) <=(pre V69_age_of_p)) 
and ((if (pre r) then ((pre V51_age_of_p) - 1) else 0) <=(if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0)) 
and ((if (pre p) then ((pre V44_age_of_p) - 1) else 0) <=(if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0)) 
and (((pre V51_age_of_p) - 1) <=((pre V69_age_of_p) - 1)) 
and (((pre V69_age_of_p) - 1) <=(if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0)) 
and ((if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0) <=V69_age_of_p) 
and (V69_age_of_p <=0) 
and (0 <=1) 
and (((pre V44_age_of_p) - 1) <=((pre V69_age_of_p) - 1)) 
and (((pre V69_age_of_p) - 1) <=(if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0)) 
and ((if ((pre p) and (pre r)) then ((pre V69_age_of_p) - 1) else 0) <=V69_age_of_p) 
and (V69_age_of_p <=0) 
and (0 <=1) 
and ((if (pre r) then ((pre V51_age_of_p) - 1) else 0) <=V51_age_of_p) 
and (V51_age_of_p <=V69_age_of_p) 
and (V69_age_of_p <=0) 
and (0 <=1) 
and ((if (pre p) then ((pre V44_age_of_p) - 1) else 0) <=V44_age_of_p) 
and (V44_age_of_p <=V69_age_of_p) 
and (V69_age_of_p <=0) 
and (0 <=1) 
and ((pre V51_age_of_p) <=(pre V69_age_of_p)) 
and ((pre V69_age_of_p) <=0) 
and (0 <=1) 
and ((pre V44_age_of_p) <=(pre V69_age_of_p)) 
and ((pre V69_age_of_p) <=0) 
and (0 <=1) 
and  true ));
tel.

