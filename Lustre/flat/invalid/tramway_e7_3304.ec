node top
  (request_door: bool;
  warning_start: bool;
  in_station: bool;
  door_is_open: bool)
returns
  (OK: bool);

var
  V58_env_always_ok: bool;
  V59_prop_ok: bool;
  V60_open_door: bool;
  V61_close_door: bool;
  V62_door_ok: bool;
  V250_door_doesnt_open_out_of_station: bool;
  V251_door_opens_before_leaving_station: bool;
  V252_X: bool;
  V253_between_A_and_X: bool;
  V264_env_ok: bool;
  V265_door_doesnt_close_if_not_asked: bool;
  V266_door_doesnt_open_if_not_asked: bool;
  V267_tramway_doesnt_start_if_not_door_ok: bool;
  V268_door_initially_closed: bool;
  V269_initially_not_in_station: bool;
  V270_warning_start_and_in_station_go_down_simultaneously: bool;
  V271_warning_start_only_in_station: bool;
  V272_warning_start_cant_become_true_when_door_is_opening: bool;
  V273_X: bool;
  V274_X: bool;
  V275_X: bool;
  V276_X: bool;
  V287_req_pending: bool;

let
  OK = (V58_env_always_ok => V59_prop_ok);
  V58_env_always_ok = (V264_env_ok -> (V264_env_ok and (pre V58_env_always_ok))
  );
  V59_prop_ok = (V250_door_doesnt_open_out_of_station and 
  V251_door_opens_before_leaving_station);
  V60_open_door = (V287_req_pending and in_station);
  V61_close_door = (warning_start and door_is_open);
  V62_door_ok = ((not door_is_open) and warning_start);
  V250_door_doesnt_open_out_of_station = (door_is_open => in_station);
  V251_door_opens_before_leaving_station = (not (V253_between_A_and_X and (
  false -> (V252_X or (not (pre V252_X))))));
  V252_X = (not in_station);
  V253_between_A_and_X = (if (false -> (pre (request_door and (not 
  warning_start)))) then true else (if (false -> (pre (false -> (pre 
  door_is_open)))) then false else (false -> (pre V253_between_A_and_X))));
  V264_env_ok = (((((((V266_door_doesnt_open_if_not_asked and 
  V265_door_doesnt_close_if_not_asked) and 
  V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and 
  V269_initially_not_in_station) and 
  V270_warning_start_and_in_station_go_down_simultaneously) and 
  V271_warning_start_only_in_station) and 
  V272_warning_start_cant_become_true_when_door_is_opening);
  V265_door_doesnt_close_if_not_asked = ((false -> (door_is_open or (not (pre 
  door_is_open)))) => V60_open_door);
  V266_door_doesnt_open_if_not_asked = ((false -> (V273_X or (not (pre V273_X))
  )) => V61_close_door);
  V267_tramway_doesnt_start_if_not_door_ok = ((false -> (V274_X or (not (pre 
  V274_X)))) => (false -> (pre V62_door_ok)));
  V268_door_initially_closed = ((not door_is_open) -> true);
  V269_initially_not_in_station = ((not in_station) -> true);
  V270_warning_start_and_in_station_go_down_simultaneously = ((false -> (V275_X 
  or (not (pre V275_X)))) = (false -> (V276_X or (not (pre V276_X)))));
  V271_warning_start_only_in_station = (warning_start => in_station);
  V272_warning_start_cant_become_true_when_door_is_opening = ((false -> (
  warning_start or (not (pre warning_start)))) => (not V60_open_door));
  V273_X = (not door_is_open);
  V274_X = (not in_station);
  V275_X = (not in_station);
  V276_X = (not warning_start);
  V287_req_pending = (if (request_door and (not warning_start)) then true else 
  (if door_is_open then false else (false -> (pre V287_req_pending))));
  --%PROPERTY  OK=true;



-- 164 implications. 
assert (true -> ( (true -> ((true = (V58_env_always_ok => V59_prop_ok)) 
and (V271_warning_start_only_in_station = (warning_start => in_station)) 
and (V250_door_doesnt_open_out_of_station = (door_is_open => in_station)) 
and ((pre door_is_open) = (not (pre V273_X))) 
and ((V275_X or (not (pre V275_X))) = (V252_X or (not (pre V252_X)))) 
and ((V252_X or (not (pre V252_X))) = (V274_X or (not (pre V274_X)))) 
and ((not warning_start) = V276_X) 
and (V251_door_opens_before_leaving_station = (not (V253_between_A_and_X and (V252_X or (not (pre V252_X)))))) 
and (V59_prop_ok = (V250_door_doesnt_open_out_of_station and V251_door_opens_before_leaving_station)) 
and ((pre V276_X) = (not (pre warning_start))) 
and ((not (pre V252_X)) = (not (pre V274_X))) 
and ((not (pre V274_X)) = (not (pre V275_X))) 
and ((V287_req_pending and in_station) = V60_open_door) 
and ((not door_is_open) = V273_X) 
and ((pre V275_X) = (pre V274_X)) 
and ((pre V274_X) = (pre V252_X)) 
and ((not (pre V276_X)) = (pre warning_start)) 
and (V275_X = V274_X) 
and (V274_X = (not in_station)) 
and ((not in_station) = V252_X) 
and ((not (pre door_is_open)) = (pre V273_X)) 
and ((warning_start and door_is_open) = V61_close_door) 
and (V264_env_ok = ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) and V271_warning_start_only_in_station)) 
and (((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) and V271_warning_start_only_in_station) = (((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) and V271_warning_start_only_in_station) and V272_warning_start_cant_become_true_when_door_is_opening)) 
and (false = (V264_env_ok and (pre V58_env_always_ok))) 
and ((pre V58_env_always_ok) => V268_door_initially_closed) 
and ((pre V58_env_always_ok) => (pre V276_X)) 
and ((pre V58_env_always_ok) => (pre V275_X)) 
and ((pre V58_env_always_ok) => V269_initially_not_in_station) 
and (((warning_start or (not (pre warning_start))) => (not V60_open_door)) => V272_warning_start_cant_become_true_when_door_is_opening) 
and (V264_env_ok => (((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously)) 
and (V287_req_pending => (if (request_door and (not warning_start)) then true else (if door_is_open then false else (pre V287_req_pending)))) 
and (V253_between_A_and_X => V268_door_initially_closed) 
-- and (V253_between_A_and_X => (if ((pre request_door) and (not (pre warning_start))) then true else (if (pre (pre door_is_open)) then false else (pre V253_between_A_and_X)))) 
and (((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) => (((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed)) 
and (((V273_X or (not (pre V273_X))) => V61_close_door) => door_is_open) 
and (((V273_X or (not (pre V273_X))) => V61_close_door) => V266_door_doesnt_open_if_not_asked) 
and (((V275_X or (not (pre V275_X))) = (V276_X or (not (pre V276_X)))) => V270_warning_start_and_in_station_go_down_simultaneously) 
and (((door_is_open or (not (pre door_is_open))) => V60_open_door) => V265_door_doesnt_close_if_not_asked) 
and (((V274_X or (not (pre V274_X))) => (pre V62_door_ok)) => V267_tramway_doesnt_start_if_not_door_ok) 
and ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) => ((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok)) 
and (V264_env_ok => V269_initially_not_in_station) 
and (V264_env_ok => (V276_X or (not (pre V276_X)))) 
and (V264_env_ok => V268_door_initially_closed) 
and (V264_env_ok => V250_door_doesnt_open_out_of_station) 
and (V264_env_ok => V265_door_doesnt_close_if_not_asked) 
and (V264_env_ok => (not warning_start)) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station)) 
and (V58_env_always_ok => V59_prop_ok) 
and ((pre V58_env_always_ok) => (not (pre door_is_open))) 
and (V58_env_always_ok => V264_env_ok) 
and ((not V60_open_door) => ((warning_start or (not (pre warning_start))) => (not V60_open_door))) 
and (V58_env_always_ok => V269_initially_not_in_station) 
and (V58_env_always_ok => (V275_X or (not (pre V275_X)))) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => V269_initially_not_in_station) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => V268_door_initially_closed) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => (V275_X or (not (pre V275_X)))) 
and (((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) => V269_initially_not_in_station) 
and ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) => V268_door_initially_closed) 
and (V264_env_ok => ((V275_X or (not (pre V275_X))) = (V276_X or (not (pre V276_X))))) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => V270_warning_start_and_in_station_go_down_simultaneously) 
and ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) => V250_door_doesnt_open_out_of_station) 
and ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) => V265_door_doesnt_close_if_not_asked) 
and (((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) => (V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked)) 
and ((V287_req_pending and in_station) => ((door_is_open or (not (pre door_is_open))) => V60_open_door)) 
and ((V287_req_pending and in_station) => V271_warning_start_only_in_station) 
and ((V287_req_pending and in_station) => V287_req_pending) 
and ((not warning_start) => (V276_X or (not (pre V276_X)))) 
and ((pre V276_X) => (warning_start or (not (pre warning_start)))) 
and ((if door_is_open then false else (pre V287_req_pending)) => (not door_is_open)) 
and ((V253_between_A_and_X and (V252_X or (not (pre V252_X)))) => V253_between_A_and_X) 
and (((door_is_open or (not (pre door_is_open))) => V60_open_door) => V250_door_doesnt_open_out_of_station) 
and (door_is_open => (door_is_open or (not (pre door_is_open)))) 
and (((pre request_door) and (not (pre warning_start))) => (pre request_door)) 
and ((pre door_is_open) => (V273_X or (not (pre V273_X)))) 
and (V59_prop_ok => V251_door_opens_before_leaving_station) 
and ((request_door and (not warning_start)) => request_door) 
and ((not door_is_open) => V268_door_initially_closed) 
and (((not door_is_open) and warning_start) => V268_door_initially_closed) 
and (((not door_is_open) and warning_start) => warning_start) 
and ((pre V62_door_ok) => (door_is_open or (not (pre door_is_open)))) 
and ((pre V62_door_ok) => (not (pre door_is_open))) 
and (V58_env_always_ok => V268_door_initially_closed) 
and (V58_env_always_ok => V275_X) 
and (V58_env_always_ok => (not V60_open_door)) 
and (((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) => V266_door_doesnt_open_if_not_asked) 
and ((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) => V266_door_doesnt_open_if_not_asked) 
and (V275_X => V269_initially_not_in_station) 
and (V275_X => (V275_X or (not (pre V275_X)))) 
and (V275_X => (not V60_open_door)) 
-- and (((pre request_door) and (not (pre warning_start))) => (if ((pre request_door) and (not (pre warning_start))) then true else (if (pre (pre door_is_open)) then false else (pre V253_between_A_and_X)))) 
and (((pre request_door) and (not (pre warning_start))) => (pre V287_req_pending)) 
and ((if door_is_open then false else (pre V287_req_pending)) => V268_door_initially_closed) 
and (((not door_is_open) and warning_start) => V250_door_doesnt_open_out_of_station) 
and ((if door_is_open then false else (pre V287_req_pending)) => V250_door_doesnt_open_out_of_station) 
and ((if door_is_open then false else (pre V287_req_pending)) => (pre V287_req_pending)) 
and ((((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) and V270_warning_start_and_in_station_go_down_simultaneously) => ((warning_start or (not (pre warning_start))) => (not V60_open_door))) 
and ((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) => V267_tramway_doesnt_start_if_not_door_ok) 
and (((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) => V267_tramway_doesnt_start_if_not_door_ok) 
and ((warning_start and door_is_open) => (not V60_open_door)) 
and ((warning_start and door_is_open) => ((V273_X or (not (pre V273_X))) => V61_close_door)) 
and ((not warning_start) => V271_warning_start_only_in_station) 
and ((request_door and (not warning_start)) => V271_warning_start_only_in_station) 
and ((request_door and (not warning_start)) => V287_req_pending) 
and ((V253_between_A_and_X and (V252_X or (not (pre V252_X)))) => V269_initially_not_in_station) 
and ((V253_between_A_and_X and (V252_X or (not (pre V252_X)))) => V268_door_initially_closed) 
-- and ((if (pre (pre door_is_open)) then false else (pre V253_between_A_and_X)) => (if ((pre request_door) and (not (pre warning_start))) then true else (if (pre (pre door_is_open)) then false else (pre V253_between_A_and_X)))) 
and ((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) => V265_door_doesnt_close_if_not_asked) 
and (V58_env_always_ok => (not door_is_open)) 
and (V58_env_always_ok => (V273_X or (not (pre V273_X)))) 
and (((((V266_door_doesnt_open_if_not_asked and V265_door_doesnt_close_if_not_asked) and V267_tramway_doesnt_start_if_not_door_ok) and V268_door_initially_closed) and V269_initially_not_in_station) => V268_door_initially_closed) 
and ((warning_start and door_is_open) => (warning_start or (not (pre warning_start)))) 
and ((warning_start and door_is_open) => warning_start) 
and ((pre V62_door_ok) => ((V274_X or (not (pre V274_X))) => (pre V62_door_ok))) 
and (V59_prop_ok => V250_door_doesnt_open_out_of_station) 
and ((request_door and (not warning_start)) => (not warning_start)) 
and ((V287_req_pending and in_station) => in_station) 
and ((not (pre V276_X)) => (V276_X or (not (pre V276_X)))) 
and ((not door_is_open) => V250_door_doesnt_open_out_of_station) 
and ((not door_is_open) => (V273_X or (not (pre V273_X)))) 
and ((not (pre door_is_open)) => (door_is_open or (not (pre door_is_open)))) 
and ((if door_is_open then false else (pre V287_req_pending)) => (V273_X or (not (pre V273_X)))) 
and (((not door_is_open) and warning_start) => (warning_start or (not (pre warning_start)))) 
and (warning_start => (warning_start or (not (pre warning_start)))) 
and ((V287_req_pending and in_station) => V250_door_doesnt_open_out_of_station) 
and ((not (pre V252_X)) => (V275_X or (not (pre V275_X)))) 
and (in_station => V271_warning_start_only_in_station) 
and (in_station => V250_door_doesnt_open_out_of_station) 
and ((pre V62_door_ok) => (not (pre V276_X))) 
and (((not door_is_open) and warning_start) => (V273_X or (not (pre V273_X)))) 
and (((not door_is_open) and warning_start) => (not door_is_open)) 
-- and ((if (pre (pre door_is_open)) then false else (pre V253_between_A_and_X)) => (pre V253_between_A_and_X)) 
and (V253_between_A_and_X => V269_initially_not_in_station) 
and ((warning_start and door_is_open) => (door_is_open or (not (pre door_is_open)))) 
and ((warning_start and door_is_open) => door_is_open) 
and ((pre V62_door_ok) => (V276_X or (not (pre V276_X)))) 
and ((if door_is_open then false else (pre V287_req_pending)) => (if (request_door and (not warning_start)) then true else (if door_is_open then false else (pre V287_req_pending)))) 
and ((V253_between_A_and_X and (V252_X or (not (pre V252_X)))) => (V275_X or (not (pre V275_X)))) 
and (((pre request_door) and (not (pre warning_start))) => (pre V276_X)) 
and  true ))));
tel.

