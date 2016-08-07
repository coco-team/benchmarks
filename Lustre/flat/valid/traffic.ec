node top
  (Delta: int)
returns
  (OK: bool);

var
  V11_Total: int;
  V39_Prev: int;
  V47_Y: bool;

let
  OK = (V47_Y => ((0 <= V11_Total) and (V11_Total <= 20)));
  V11_Total = (if ((Delta < 0) and (V39_Prev > 0)) then (V39_Prev + Delta) else 
  (if ((Delta > 0) and (V39_Prev < 10)) then (V39_Prev + Delta) else V39_Prev))
  ;
  V39_Prev = (0 -> (pre V11_Total));
  V47_Y = ((true -> (pre V47_Y)) and ((-1 <= Delta) and (Delta <= 1)));
  --%PROPERTY OK=true;


tel.

