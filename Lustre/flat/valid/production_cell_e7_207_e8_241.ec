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
  --%PROPERTY OK;


tel.

