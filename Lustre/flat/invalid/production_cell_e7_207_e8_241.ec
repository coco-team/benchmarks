node top
  (MaySafelyMove: bool;
  TryToMove1: bool;
  TryToMove2: bool)
returns
  (OK: bool);

var
  V16_MayMove1: bool;
  V17_MayMove2: bool;
  V18_start1: bool;
  V19_start2: bool;
  V20_stop: bool;
  V21_moving: bool;
  V58_on: bool;
  V66_signal: bool;
  V75_signal: bool;
  V86_signal: bool;
  V90_signal: bool;

let
  OK = (true -> (if ((not (TryToMove1 -> (TryToMove1 and (pre (not TryToMove1))
  ))) or (not (TryToMove2 -> (TryToMove2 and (pre (not TryToMove2)))))) then ((
  ((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not 
  V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 
  and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else 
  true)) else true));
  V16_MayMove1 = (TryToMove1 and MaySafelyMove);
  V17_MayMove2 = (TryToMove2 and MaySafelyMove);
  V18_start1 = (V66_signal -> (V66_signal and (pre (not V66_signal))));
  V19_start2 = (V75_signal -> (V75_signal and (pre (not V75_signal))));
  V20_stop = ((V86_signal -> (V86_signal and (pre (not V86_signal)))) or (
  V90_signal -> (V90_signal and (pre (not V90_signal)))));
  V21_moving = (V58_on -> (if V58_on then true else (if V20_stop then false 
  else (pre V21_moving))));
  V58_on = (V18_start1 or V19_start2);
  V66_signal = (V16_MayMove1 and (true -> (pre (not TryToMove2))));
  V75_signal = (V17_MayMove2 and (true -> (pre (not TryToMove1))));
  V86_signal = (not V16_MayMove1);
  V90_signal = (not V17_MayMove2);
  --%PROPERTY  OK=true;



-- 127 implications. 
assert (true -> ((true = (not ((V18_start1 and V19_start2) and V20_stop))) 
and ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) = ((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop)))) 
and ((not V16_MayMove1) = V86_signal) 
and ((not V17_MayMove2) = V90_signal) 
and (V17_MayMove2 = (TryToMove2 and MaySafelyMove)) 
and (V16_MayMove1 = (TryToMove1 and MaySafelyMove)) 
and ((if V58_on then true else (if V20_stop then false else (pre V21_moving))) = V21_moving) 
and (V58_on = (V18_start1 or V19_start2)) 
and (false = ((V18_start1 and V19_start2) and V20_stop)) 
and ((V75_signal and (not (pre V75_signal))) => V19_start2) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => V75_signal) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => V66_signal) 
and ((V66_signal and (not (pre V66_signal))) => V18_start1) 
and (((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) => (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and ((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) => (not V19_start2)) 
and (((V86_signal and (not (pre V86_signal))) or (V90_signal and (not (pre V90_signal)))) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and (((V86_signal and (not (pre V86_signal))) or (V90_signal and (not (pre V90_signal)))) => V20_stop) 
and ((pre V86_signal) => (not (pre V66_signal))) 
and ((pre V66_signal) => (not (pre V86_signal))) 
and ((pre V90_signal) => (not (pre V75_signal))) 
and ((pre V75_signal) => (not (pre V90_signal))) 
and ((V86_signal and (not (pre V86_signal))) => (if V21_moving then MaySafelyMove else true)) 
and ((V86_signal and (not (pre V86_signal))) => (not V18_start1)) 
and ((V86_signal and (not (pre V86_signal))) => ((V86_signal and (not (pre V86_signal))) or (V90_signal and (not (pre V90_signal))))) 
and (((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) => (if V21_moving then MaySafelyMove else true)) 
and (((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) => (if ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and ((V90_signal and (not (pre V90_signal))) => (if V21_moving then MaySafelyMove else true)) 
and ((pre V66_signal) => (if V21_moving then MaySafelyMove else true)) 
and ((pre V66_signal) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((pre V66_signal) => (pre V21_moving)) 
and ((not (pre V86_signal)) => (if V21_moving then MaySafelyMove else true)) 
and ((not (pre V86_signal)) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and (V19_start2 => V75_signal) 
and (V17_MayMove2 => (if V21_moving then MaySafelyMove else true)) 
and (V17_MayMove2 => TryToMove2) 
and (V18_start1 => (if V21_moving then MaySafelyMove else true)) 
and ((V66_signal and (not (pre V66_signal))) => (not (pre V66_signal))) 
and ((not (TryToMove1 and (not (pre TryToMove1)))) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and (V16_MayMove1 => (if V21_moving then MaySafelyMove else true)) 
and (V16_MayMove1 => TryToMove1) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (not (pre TryToMove1))) 
and (V17_MayMove2 => MaySafelyMove) 
and ((not (pre V90_signal)) => (if V21_moving then MaySafelyMove else true)) 
and ((not (pre V90_signal)) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((not (pre V90_signal)) => (not (TryToMove2 and (not (pre TryToMove2))))) 
and ((pre V75_signal) => (if V21_moving then MaySafelyMove else true)) 
and ((pre V75_signal) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((pre V75_signal) => (pre V21_moving)) 
and ((V66_signal and (not (pre V66_signal))) => V66_signal) 
and (V18_start1 => V66_signal) 
and ((TryToMove2 and (not (pre TryToMove2))) => (not (pre TryToMove2))) 
and ((pre TryToMove1) => (not (TryToMove1 and (not (pre TryToMove1))))) 
and ((TryToMove1 and (not (pre TryToMove1))) => (not (pre TryToMove1))) 
and ((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) => (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and (((not V19_start2) and (not V20_stop)) => (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and (((not V19_start2) and (not V20_stop)) => (not V20_stop)) 
and (((not V18_start1) and (not V19_start2)) => (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and (((not V18_start1) and (not V19_start2)) => (not V18_start1)) 
and (V18_start1 => V16_MayMove1) 
and (V18_start1 => V58_on) 
and ((TryToMove2 and (not (pre TryToMove2))) => (pre V90_signal)) 
and (V66_signal => (if V21_moving then MaySafelyMove else true)) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (pre V90_signal)) 
and (V66_signal => V16_MayMove1) 
and (V66_signal => MaySafelyMove) 
and (V66_signal => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((V18_start1 and V19_start2) => TryToMove1) 
and ((V18_start1 and V19_start2) => (not V20_stop)) 
and ((V18_start1 and V19_start2) => V75_signal) 
and ((V18_start1 and V19_start2) => V19_start2) 
and (((not V19_start2) and (not V20_stop)) => (((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop)))) 
and (((not V18_start1) and (not V20_stop)) => (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and (((not V18_start1) and (not V20_stop)) => (not V18_start1)) 
and ((not V17_MayMove2) => (not V19_start2)) 
and (V16_MayMove1 => MaySafelyMove) 
and ((if V20_stop then false else (pre V21_moving)) => (pre V21_moving)) 
and ((V90_signal and (not (pre V90_signal))) => (not (pre V90_signal))) 
and ((V18_start1 and V19_start2) => V17_MayMove2) 
and ((V90_signal and (not (pre V90_signal))) => (not (TryToMove2 and (not (pre TryToMove2))))) 
and ((V90_signal and (not (pre V90_signal))) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((V90_signal and (not (pre V90_signal))) => ((V86_signal and (not (pre V86_signal))) or (V90_signal and (not (pre V90_signal))))) 
and (((not V18_start1) and (not V20_stop)) => (not V20_stop)) 
and (((not V18_start1) and (not V19_start2)) => (((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop)))) 
and ((not (TryToMove2 and (not (pre TryToMove2)))) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((pre TryToMove2) => ((not (TryToMove1 and (not (pre TryToMove1)))) or (not (TryToMove2 and (not (pre TryToMove2)))))) 
and ((if V20_stop then false else (pre V21_moving)) => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((not (pre V86_signal)) => (pre TryToMove1)) 
and ((V90_signal and (not (pre V90_signal))) => (not V19_start2)) 
and ((V18_start1 and V19_start2) => (if V21_moving then MaySafelyMove else true)) 
and ((V18_start1 and V19_start2) => V18_start1) 
and (V19_start2 => (if V21_moving then MaySafelyMove else true)) 
and ((V75_signal and (not (pre V75_signal))) => (not (pre V75_signal))) 
and (V19_start2 => V58_on) 
and (V75_signal => (if V21_moving then MaySafelyMove else true)) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (pre V86_signal)) 
and (V75_signal => MaySafelyMove) 
and (V75_signal => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((TryToMove1 and (not (pre TryToMove1))) => (pre V86_signal)) 
and ((not (pre TryToMove1)) => (pre V86_signal)) 
and ((not V16_MayMove1) => (not V18_start1)) 
and ((not (pre TryToMove2)) => (pre V90_signal)) 
and ((if V20_stop then false else (pre V21_moving)) => (not V20_stop)) 
and ((not (pre V86_signal)) => (not (TryToMove1 and (not (pre TryToMove1))))) 
and ((not (pre V90_signal)) => (pre TryToMove2)) 
and ((V18_start1 and V19_start2) => MaySafelyMove) 
and ((V18_start1 and V19_start2) => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((TryToMove1 and (not (pre TryToMove1))) => TryToMove1) 
and ((V86_signal and (not (pre V86_signal))) => (not (pre V86_signal))) 
and (((V86_signal and (not (pre V86_signal))) or (V90_signal and (not (pre V90_signal)))) => (if V21_moving then MaySafelyMove else true)) 
and (V20_stop => (if V21_moving then MaySafelyMove else true)) 
and (V58_on => MaySafelyMove) 
and (V58_on => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((V90_signal and (not (pre V90_signal))) => (not V17_MayMove2)) 
and ((V86_signal and (not (pre V86_signal))) => (not V16_MayMove1)) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (not (pre TryToMove2))) 
and (V58_on => (if V21_moving then MaySafelyMove else true)) 
and ((pre TryToMove2) => (not (TryToMove2 and (not (pre TryToMove2))))) 
and (MaySafelyMove => (if V21_moving then MaySafelyMove else true)) 
and  true ));
tel.

