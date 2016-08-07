node top
  (on_A: bool;
  on_B: bool;
  on_C: bool;
  ack_AB: bool;
  ack_BC: bool)
returns
  (OK: bool);

var
  V46_grant_access: bool;
  V47_grant_exit: bool;
  V48_do_AB: bool;
  V49_do_BC: bool;
  V50_no_collision: bool;
  V51_exclusive_req: bool;
  V52_no_derail_AB: bool;
  V53_no_derail_BC: bool;
  V54_empty_section: bool;
  V55_only_on_B: bool;
  V56_env: bool;
  V180_empty_section: bool;
  V181_only_on_B: bool;
  V189_afterA: bool;
  V190_afterA: bool;
  V191_alwaysBsinceA: bool;
  V192_afterA: bool;
  V193_onceCsinceA: bool;
  V202_afterA: bool;
  V203_afterA: bool;
  V204_alwaysBsinceA: bool;
  V205_afterA: bool;
  V206_onceCsinceA: bool;
  V208_X: bool;
  V246_X: bool;
  V265_X: bool;
  V284_X: bool;
  V309_afterA: bool;
  V310_afterA: bool;
  V311_alwaysBsinceA: bool;
  V312_afterA: bool;
  V313_onceCsinceA: bool;
  V321_afterA: bool;
  V322_afterA: bool;
  V323_alwaysBsinceA: bool;
  V324_afterA: bool;
  V325_onceCsinceA: bool;

let
  OK = (V56_env => (((V50_no_collision and V51_exclusive_req) and 
  V52_no_derail_AB) and V53_no_derail_BC));
  V46_grant_access = (V180_empty_section and ack_AB);
  V47_grant_exit = (V181_only_on_B and ack_BC);
  V48_do_AB = ((not ack_AB) and V180_empty_section);
  V49_do_BC = ((not ack_BC) and V181_only_on_B);
  V50_no_collision = ((not V46_grant_access) or V54_empty_section);
  V51_exclusive_req = (not (V48_do_AB and V49_do_BC));
  V52_no_derail_AB = ((not V309_afterA) or (V311_alwaysBsinceA or 
  V313_onceCsinceA));
  V53_no_derail_BC = ((not V321_afterA) or (V323_alwaysBsinceA or 
  V325_onceCsinceA));
  V54_empty_section = (not ((on_A or on_B) or on_C));
  V55_only_on_B = (on_B and (not (on_A or on_C)));
  V56_env = (V284_X -> (V284_X or (pre V56_env)));
  V180_empty_section = (not ((on_A or on_B) or on_C));
  V181_only_on_B = (on_B and (not (on_A or on_C)));
  V189_afterA = (false -> (pre (ack_AB or V189_afterA)));
  V190_afterA = (false -> (pre (ack_AB or V190_afterA)));
  V191_alwaysBsinceA = (if ack_AB then ack_AB else (if V190_afterA then (ack_AB 
  and (pre V191_alwaysBsinceA)) else true));
  V192_afterA = (false -> (pre (ack_AB or V192_afterA)));
  V193_onceCsinceA = (if ack_AB then V49_do_BC else (if V192_afterA then (
  V49_do_BC or (pre V193_onceCsinceA)) else true));
  V202_afterA = (false -> (pre (ack_BC or V202_afterA)));
  V203_afterA = (false -> (pre (ack_BC or V203_afterA)));
  V204_alwaysBsinceA = (if ack_BC then ack_BC else (if V203_afterA then (ack_BC 
  and (pre V204_alwaysBsinceA)) else true));
  V205_afterA = (false -> (pre (ack_BC or V205_afterA)));
  V206_onceCsinceA = (if ack_BC then V48_do_AB else (if V205_afterA then (
  V48_do_AB or (pre V206_onceCsinceA)) else true));
  V208_X = (not V54_empty_section);
  V246_X = (not on_A);
  V265_X = (not on_B);
  V284_X = ((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (
  V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (
  V204_alwaysBsinceA or V206_onceCsinceA))) and (V54_empty_section -> true)) 
  and (true -> ((not (V208_X -> (V208_X and (not (pre V208_X))))) or (pre 
  V46_grant_access)))) and (true -> ((not (on_C -> (on_C and (not (pre on_C))))
  ) or (pre V47_grant_exit)))) and ((not (V246_X -> (V246_X and (not (pre 
  V246_X))))) or on_B)) and ((not (V265_X -> (V265_X and (not (pre V265_X))))) 
  or (on_A or on_C)));
  V309_afterA = (false -> (pre (V46_grant_access or V309_afterA)));
  V310_afterA = (false -> (pre (V46_grant_access or V310_afterA)));
  V311_alwaysBsinceA = (if V46_grant_access then ack_AB else (if V310_afterA 
  then (ack_AB and (pre V311_alwaysBsinceA)) else true));
  V312_afterA = (false -> (pre (V46_grant_access or V312_afterA)));
  V313_onceCsinceA = (if V46_grant_access then V55_only_on_B else (if 
  V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true));
  V321_afterA = (false -> (pre (V47_grant_exit or V321_afterA)));
  V322_afterA = (false -> (pre (V47_grant_exit or V322_afterA)));
  V323_alwaysBsinceA = (if V47_grant_exit then ack_BC else (if V322_afterA then 
  (ack_BC and (pre V323_alwaysBsinceA)) else true));
  V324_afterA = (false -> (pre (V47_grant_exit or V324_afterA)));
  V325_onceCsinceA = (if V47_grant_exit then V54_empty_section else (if 
  V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true));
  --%PROPERTY OK;


tel.

