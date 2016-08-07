node top
  (leak: bool;
  P1: bool)
returns
  (OK: bool);

var
  V18_env: bool;
  V59_Count: int;
  V61_X: bool;
  V66_Sofar: bool;
  V84_Count: int;
  V92_Count: int;
  V101_Count: int;
  V109_Count: int;

let
  OK = (V18_env => ((V92_Count <= 600) or ((2 * V101_Count) <= V109_Count)));
  V18_env = (V66_Sofar and ((not (false -> ((not (pre P1)) and P1))) or (300 <= V84_Count)));
  V59_Count = (0 -> (if (pre leak) then ((pre V59_Count) + 1) else 0));
  V61_X = (V59_Count <= 10);
  V66_Sofar = (V61_X -> (V61_X and (pre V66_Sofar)));
  V84_Count = (0 -> (if (pre (not leak)) then ((pre V84_Count) + 1) else 0));
  V92_Count = (0 -> (if (pre (not P1)) then ((pre V92_Count) + 1) else 0));
  V101_Count = (0 -> (if (pre P1) then 0 else (if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))));
  V109_Count = (0 -> (if (pre (not P1)) then ((pre V109_Count) + 1) else 0));
     --%PROPERTY OK=true;


tel.

