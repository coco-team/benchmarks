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
  OK = (true -> (if ((not (TryToMove1 -> (TryToMove1 or (pre (not TryToMove1)))
  )) or (not (TryToMove2 -> (TryToMove2 or (pre (not TryToMove2)))))) then ((((
  ((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not 
  V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 
  and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else 
  true)) else true));
  V16_MayMove1 = (TryToMove1 and MaySafelyMove);
  V17_MayMove2 = (TryToMove2 and MaySafelyMove);
  V18_start1 = (V66_signal -> (V66_signal or (pre (not V66_signal))));
  V19_start2 = (V75_signal -> (V75_signal or (pre (not V75_signal))));
  V20_stop = ((V86_signal -> (V86_signal or (pre (not V86_signal)))) or (
  V90_signal -> (V90_signal or (pre (not V90_signal)))));
  V21_moving = (V58_on -> (if V58_on then true else (if V20_stop then false 
  else (pre V21_moving))));
  V58_on = (V18_start1 or V19_start2);
  V66_signal = (V16_MayMove1 and (true -> (pre (not TryToMove2))));
  V75_signal = (V17_MayMove2 and (true -> (pre (not TryToMove1))));
  V86_signal = (not V16_MayMove1);
  V90_signal = (not V17_MayMove2);
  --%PROPERTY  OK=true;



-- 125 implications. 
assert (true -> (((not V16_MayMove1) = V86_signal) 
and ((not V17_MayMove2) = V90_signal) 
and ((if V58_on then true else (if V20_stop then false else (pre V21_moving))) = V58_on) 
and (V58_on = (V18_start1 or V19_start2)) 
and ((V18_start1 or V19_start2) = V21_moving) 
and (((not V18_start1) and (not V19_start2)) = ((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop)))) 
and (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) = (((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop)))) 
and ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) = ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true))) 
and (((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) = (((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop)))) 
and (V17_MayMove2 = (TryToMove2 and MaySafelyMove)) 
and (V16_MayMove1 = (TryToMove1 and MaySafelyMove)) 
and (false = ((not V18_start1) and (not V20_stop))) 
and (((not V18_start1) and (not V20_stop)) = ((not V19_start2) and (not V20_stop))) 
and (V18_start1 => (V66_signal or (not (pre V66_signal)))) 
and (V19_start2 => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and (V19_start2 => (V75_signal or (not (pre V75_signal)))) 
and (V20_stop => ((V86_signal or (not (pre V86_signal))) or (V90_signal or (not (pre V90_signal))))) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (pre V86_signal)) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (V66_signal or (not (pre V66_signal)))) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (not (pre V66_signal))) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (TryToMove1 or (not (pre TryToMove1)))) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (if ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => V19_start2) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => V75_signal) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => V66_signal) 
and ((pre V86_signal) => (not (pre V66_signal))) 
and ((pre V75_signal) => (not (pre V90_signal))) 
and ((pre V90_signal) => (not (pre V75_signal))) 
and ((not (pre V66_signal)) => (V66_signal or (not (pre V66_signal)))) 
and ((not V20_stop) => (if ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and ((not V20_stop) => (V18_start1 and V19_start2)) 
and ((not V20_stop) => V16_MayMove1) 
and ((not V19_start2) => V20_stop) 
and ((not (pre V75_signal)) => (V75_signal or (not (pre V75_signal)))) 
and ((if V20_stop then false else (pre V21_moving)) => (pre V21_moving)) 
and ((if V20_stop then false else (pre V21_moving)) => (V18_start1 and V19_start2)) 
and ((if V20_stop then false else (pre V21_moving)) => (if ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and ((if V20_stop then false else (pre V21_moving)) => (if V21_moving then MaySafelyMove else true)) 
and ((if V20_stop then false else (pre V21_moving)) => V17_MayMove2) 
and ((not V17_MayMove2) => V20_stop) 
and ((not V17_MayMove2) => (V90_signal or (not (pre V90_signal)))) 
and ((not V16_MayMove1) => V20_stop) 
and ((not V16_MayMove1) => (V86_signal or (not (pre V86_signal)))) 
and ((V86_signal or (not (pre V86_signal))) => ((V86_signal or (not (pre V86_signal))) or (V90_signal or (not (pre V90_signal))))) 
and ((not V20_stop) => (not ((V18_start1 and V19_start2) and V20_stop))) 
and ((not V20_stop) => V18_start1) 
and (V66_signal => V18_start1) 
and (V66_signal => V16_MayMove1) 
and ((not (pre V90_signal)) => (V90_signal or (not (pre V90_signal)))) 
and ((not (pre V90_signal)) => ((V86_signal or (not (pre V86_signal))) or (V90_signal or (not (pre V90_signal))))) 
and ((not (pre V90_signal)) => (pre TryToMove2)) 
and ((not (pre TryToMove2)) => (TryToMove2 or (not (pre TryToMove2)))) 
and ((not (pre TryToMove2)) => (pre V90_signal)) 
and (V17_MayMove2 => (TryToMove2 or (not (pre TryToMove2)))) 
and (V17_MayMove2 => MaySafelyMove) 
and ((V18_start1 and V19_start2) => V18_start1) 
and ((not V19_start2) => (not ((V18_start1 and V19_start2) and V20_stop))) 
and ((pre V75_signal) => ((V86_signal or (not (pre V86_signal))) or (V90_signal or (not (pre V90_signal))))) 
and ((pre V75_signal) => (pre V21_moving)) 
and (TryToMove2 => (TryToMove2 or (not (pre TryToMove2)))) 
and (V18_start1 => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and (((not V18_start1) and (not V19_start2)) => (if ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and (((not V18_start1) and (not V19_start2)) => (not V18_start1)) 
and ((V18_start1 and V19_start2) => V19_start2) 
and (((V18_start1 and V19_start2) and V20_stop) => (V18_start1 and V19_start2)) 
and ((not (TryToMove1 or (not (pre TryToMove1)))) => (pre TryToMove1)) 
and ((if V20_stop then false else (pre V21_moving)) => V16_MayMove1) 
and ((if V20_stop then false else (pre V21_moving)) => (not V20_stop)) 
and (V75_signal => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and (V75_signal => V19_start2) 
and (V75_signal => V17_MayMove2) 
and ((V90_signal or (not (pre V90_signal))) => ((V86_signal or (not (pre V86_signal))) or (V90_signal or (not (pre V90_signal))))) 
and ((not (pre TryToMove1)) => (pre V86_signal)) 
and (((not V18_start1) and (not V19_start2)) => (if V21_moving then MaySafelyMove else true)) 
and ((not (pre V86_signal)) => (pre TryToMove1)) 
and ((not (TryToMove2 or (not (pre TryToMove2)))) => ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2)))))) 
and ((if V20_stop then false else (pre V21_moving)) => (TryToMove2 or (not (pre TryToMove2)))) 
and ((if V20_stop then false else (pre V21_moving)) => V19_start2) 
and ((if V20_stop then false else (pre V21_moving)) => (V75_signal or (not (pre V75_signal)))) 
and (V75_signal => (TryToMove2 or (not (pre TryToMove2)))) 
and (V75_signal => TryToMove2) 
and (V75_signal => (if V21_moving then MaySafelyMove else true)) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (not (pre TryToMove2))) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (pre V90_signal)) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => V18_start1) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (if V58_on then true else (if V20_stop then false else (pre V21_moving)))) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (V75_signal or (not (pre V75_signal)))) 
and ((not V20_stop) => V17_MayMove2) 
and (V66_signal => MaySafelyMove) 
and (V16_MayMove1 => MaySafelyMove) 
and ((V17_MayMove2 and (not (pre TryToMove1))) => (not (pre TryToMove1))) 
and ((if V20_stop then false else (pre V21_moving)) => (not ((V18_start1 and V19_start2) and V20_stop))) 
and (((V18_start1 and V19_start2) and V20_stop) => V18_start1) 
and ((not (TryToMove1 or (not (pre TryToMove1)))) => (not V16_MayMove1)) 
and ((not (TryToMove1 or (not (pre TryToMove1)))) => ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2)))))) 
and ((not V18_start1) => (not ((V18_start1 and V19_start2) and V20_stop))) 
and ((not (pre TryToMove1)) => (TryToMove1 or (not (pre TryToMove1)))) 
and ((if V20_stop then false else (pre V21_moving)) => TryToMove1) 
and ((not V20_stop) => TryToMove2) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (TryToMove2 or (not (pre TryToMove2)))) 
and ((V16_MayMove1 and (not (pre TryToMove2))) => (if ((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) then ((((((not V18_start1) and (not V19_start2)) or ((not V19_start2) and (not V20_stop))) or ((not V18_start1) and (not V20_stop))) and (not ((V18_start1 and V19_start2) and V20_stop))) and (if V21_moving then MaySafelyMove else true)) else true)) 
and (V16_MayMove1 => TryToMove1) 
and (V16_MayMove1 => (if V21_moving then MaySafelyMove else true)) 
and (V17_MayMove2 => TryToMove2) 
and (MaySafelyMove => (if V21_moving then MaySafelyMove else true)) 
and (V16_MayMove1 => (TryToMove1 or (not (pre TryToMove1)))) 
and ((not (TryToMove2 or (not (pre TryToMove2)))) => (not V17_MayMove2)) 
and ((not (TryToMove2 or (not (pre TryToMove2)))) => V20_stop) 
and ((not (TryToMove2 or (not (pre TryToMove2)))) => (pre TryToMove2)) 
and (((not (TryToMove1 or (not (pre TryToMove1)))) or (not (TryToMove2 or (not (pre TryToMove2))))) => V20_stop) 
and (TryToMove1 => (TryToMove1 or (not (pre TryToMove1)))) 
and  true ));
tel.

