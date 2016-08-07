node top
  (init: int)
returns
  (OK: bool);

var
  V4_time: int;

let
  OK = (V4_time < 0);
  V4_time = (0 -> (if ((pre V4_time) = 5) then 0 else ((pre V4_time) + 1)));
  --%PROPERTY OK;


tel.

