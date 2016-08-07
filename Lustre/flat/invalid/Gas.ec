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



-- 82 implications. 
assert (true -> ((V61_X = (V59_Count <= 10)) 
and (((V92_Count <= 600) or ((2 * V101_Count) <= V109_Count)) => (V18_env => ((V92_Count <= 600) or ((2 * V101_Count) <= V109_Count)))) 
and ((not ((not (pre P1)) and P1)) => ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) 
and (V66_Sofar => V61_X) 
and ((V92_Count <= 600) => ((V92_Count <= 600) or ((2 * V101_Count) <= V109_Count))) 
and ((V61_X and (pre V66_Sofar)) => V66_Sofar) 
and ((V61_X and (pre V66_Sofar)) => (pre V66_Sofar)) 
and ((V66_Sofar and ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) => ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) 
and ((V66_Sofar and ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) => V66_Sofar) 
and ((V66_Sofar and ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) => V18_env) 
and (((not (pre P1)) and P1) => P1) 
and ((not (pre leak)) => V61_X) 
and ((300 <= V84_Count) => ((not ((not (pre P1)) and P1)) or (300 <= V84_Count))) 
and (((not (pre P1)) and P1) => (not (pre P1))) 
and (((2 * V101_Count) <= V109_Count) => ((V92_Count <= 600) or ((2 * V101_Count) <= V109_Count))) 
and ((300 <= V84_Count) => V61_X) 
and ((300 <= V84_Count) => (not (pre leak))) 
and ((pre P1) => (V92_Count <= 600)) 
and ((pre P1) => (not ((not (pre P1)) and P1))) 
and ((pre P1) => ((2 * V101_Count) <= V109_Count)) 
and (V18_env => V66_Sofar) 
and ((pre V109_Count) = (pre V92_Count)) 
and (V109_Count = V92_Count) 
and ((if (not (pre P1)) then ((pre V92_Count) + 1) else 0) = (if (not (pre P1)) then ((pre V109_Count) + 1) else 0)) 
and (((pre V109_Count) + 1) = ((pre V92_Count) + 1)) 
and (0 <=(pre V101_Count)) 
and (0 <=(pre V109_Count)) 
and (0 <=(pre V59_Count)) 
and (0 <=V84_Count) 
and (0 <=(if (not (pre leak)) then ((pre V84_Count) + 1) else 0)) 
and (0 <=V101_Count) 
and (0 <=(if (pre P1) then 0 else (if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count)))) 
and (0 <=(if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))) 
and (0 <=V59_Count) 
and (0 <=(if (pre leak) then ((pre V59_Count) + 1) else 0)) 
and (0 <=V109_Count) 
and (0 <=(if (not (pre P1)) then ((pre V92_Count) + 1) else 0)) 
and (0 <=1) 
and (0 <=((pre V101_Count) + 1)) 
and (0 <=((pre V109_Count) + 1)) 
and (0 <=((pre V59_Count) + 1)) 
and (0 <=(2 * V101_Count)) 
and (0 <=2) 
and (0 <=10) 
and (0 <=300) 
and (0 <=600) 
and ((pre V101_Count) <=(if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))) 
and ((pre V101_Count) <=((pre V101_Count) + 1)) 
and (V101_Count <=V109_Count) 
and (V101_Count <=(2 * V101_Count)) 
and ((if (pre P1) then 0 else (if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))) <=(if (not (pre P1)) then ((pre V92_Count) + 1) else 0)) 
and (1 <=((pre V101_Count) + 1)) 
and (1 <=((pre V109_Count) + 1)) 
and (1 <=((pre V59_Count) + 1)) 
and (1 <=2) 
and (1 <=10) 
and (1 <=300) 
and (1 <=600) 
and (0 <=(pre V84_Count)) 
and ((pre V84_Count) <=((pre V84_Count) + 1)) 
and ((pre V101_Count) <=(pre V109_Count)) 
and ((pre V109_Count) <=((pre V109_Count) + 1)) 
and ((pre V59_Count) <=((pre V59_Count) + 1)) 
and (V84_Count <=(if (not (pre leak)) then ((pre V84_Count) + 1) else 0)) 
and ((if (not (pre leak)) then ((pre V84_Count) + 1) else 0) <=((pre V84_Count) + 1)) 
and (V101_Count <=(if (pre P1) then 0 else (if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count)))) 
and ((if (pre P1) then 0 else (if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))) <=(if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count))) 
and ((if (pre leak) then ((pre V101_Count) + 1) else (pre V101_Count)) <=((pre V101_Count) + 1)) 
and (((pre V101_Count) + 1) <=((pre V109_Count) + 1)) 
and (V59_Count <=(if (pre leak) then ((pre V59_Count) + 1) else 0)) 
and ((if (pre leak) then ((pre V59_Count) + 1) else 0) <=((pre V59_Count) + 1)) 
and (V109_Count <=(if (not (pre P1)) then ((pre V92_Count) + 1) else 0)) 
and ((if (not (pre P1)) then ((pre V92_Count) + 1) else 0) <=((pre V109_Count) + 1)) 
and (1 <=((pre V84_Count) + 1)) 
and (2 <=10) 
and (10 <=300) 
and (300 <=600) 
and  true ));
tel.

