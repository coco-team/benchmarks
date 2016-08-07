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
  --%PROPERTY  OK=true;



-- 371 implications. 
assert (true -> (((not (V48_do_AB and V49_do_BC)) = true) 
and (true = V50_no_collision) 
and (V50_no_collision = (V50_no_collision and V51_exclusive_req)) 
and ((V50_no_collision and V51_exclusive_req) = ((not V46_grant_access) or V54_empty_section)) 
and (((not V46_grant_access) or V54_empty_section) = V51_exclusive_req) 
and ((not V54_empty_section) = ((on_A or on_B) or on_C)) 
and (((on_A or on_B) or on_C) = V208_X) 
and (((pre ack_AB) or (pre V189_afterA)) = ((pre ack_AB) or (pre V190_afterA))) 
and (((pre ack_AB) or (pre V190_afterA)) = ((pre ack_AB) or (pre V192_afterA))) 
and (V192_afterA = V189_afterA) 
and (V189_afterA = V190_afterA) 
and (((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA)) = (V311_alwaysBsinceA or V313_onceCsinceA)) 
and ((V311_alwaysBsinceA or V313_onceCsinceA) = V52_no_derail_AB) 
and (V52_no_derail_AB = ((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB)) 
and (V313_onceCsinceA = (if V46_grant_access then V55_only_on_B else (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true))) 
and (V311_alwaysBsinceA = (if V46_grant_access then ack_AB else (if V310_afterA then (ack_AB and (pre V311_alwaysBsinceA)) else true))) 
and (((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA)) = (V191_alwaysBsinceA or V193_onceCsinceA)) 
and (V191_alwaysBsinceA = (if ack_AB then ack_AB else (if V190_afterA then (ack_AB and (pre V191_alwaysBsinceA)) else true))) 
and (((pre ack_BC) or (pre V203_afterA)) = ((pre ack_BC) or (pre V205_afterA))) 
and (((pre ack_BC) or (pre V205_afterA)) = ((pre ack_BC) or (pre V202_afterA))) 
and (V205_afterA = V202_afterA) 
and (V202_afterA = V203_afterA) 
and (((pre V47_grant_exit) or (pre V321_afterA)) = ((pre V47_grant_exit) or (pre V322_afterA))) 
and (((pre V47_grant_exit) or (pre V322_afterA)) = ((pre V47_grant_exit) or (pre V324_afterA))) 
and (V324_afterA = V322_afterA) 
and (V322_afterA = V321_afterA) 
and (((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA)) = (V323_alwaysBsinceA or V325_onceCsinceA)) 
and ((V323_alwaysBsinceA or V325_onceCsinceA) = V53_no_derail_BC) 
and (V323_alwaysBsinceA = (if V47_grant_exit then ack_BC else (if V322_afterA then (ack_BC and (pre V323_alwaysBsinceA)) else true))) 
and ((V204_alwaysBsinceA or V206_onceCsinceA) = ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) 
and (V204_alwaysBsinceA = (if ack_BC then ack_BC else (if V203_afterA then (ack_BC and (pre V204_alwaysBsinceA)) else true))) 
and (V246_X = (not on_A)) 
and (V181_only_on_B = V55_only_on_B) 
and (V55_only_on_B = (on_B and (not (on_A or on_C)))) 
and (V47_grant_exit = (V181_only_on_B and ack_BC)) 
and (((pre V46_grant_access) or (pre V312_afterA)) = ((pre V46_grant_access) or (pre V309_afterA))) 
and (((pre V46_grant_access) or (pre V309_afterA)) = ((pre V46_grant_access) or (pre V310_afterA))) 
and (V309_afterA = V310_afterA) 
and (V310_afterA = V312_afterA) 
and ((if V47_grant_exit then V54_empty_section else (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) = V325_onceCsinceA) 
and (V206_onceCsinceA = (if ack_BC then V48_do_AB else (if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true))) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) = V193_onceCsinceA) 
and ((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) = ((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true)) 
and (V49_do_BC = ((not ack_BC) and V181_only_on_B)) 
and ((not on_B) = V265_X) 
and (V54_empty_section = V180_empty_section) 
and (V180_empty_section = (not ((on_A or on_B) or on_C))) 
and (((not ack_AB) and V180_empty_section) = V48_do_AB) 
and ((V180_empty_section and ack_AB) = V46_grant_access) 
and ((pre V203_afterA) = (pre V202_afterA)) 
and ((pre V202_afterA) = (pre V205_afterA)) 
and ((pre V189_afterA) = (pre V192_afterA)) 
and ((pre V192_afterA) = (pre V190_afterA)) 
and ((pre V312_afterA) = (pre V310_afterA)) 
and ((pre V310_afterA) = (pre V309_afterA)) 
and ((pre V324_afterA) = (pre V322_afterA)) 
and ((pre V322_afterA) = (pre V321_afterA)) 
and (false = (V48_do_AB and V49_do_BC)) 
and ((V54_empty_section or (pre V325_onceCsinceA)) => (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) 
and (V284_X => ((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B)) and ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C)))) 
and (V192_afterA => ((pre ack_AB) or (pre V189_afterA))) 
and ((V55_only_on_B or (pre V313_onceCsinceA)) => (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true)) 
and (V205_afterA => ((pre ack_BC) or (pre V203_afterA))) 
and (V324_afterA => ((pre V47_grant_exit) or (pre V321_afterA))) 
and ((V48_do_AB or (pre V206_onceCsinceA)) => (V54_empty_section or (pre V325_onceCsinceA))) 
and ((V48_do_AB or (pre V206_onceCsinceA)) => (if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true)) 
and (V309_afterA => ((pre V46_grant_access) or (pre V312_afterA))) 
and ((V49_do_BC or (pre V193_onceCsinceA)) => (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) 
and (V56_env => (V284_X or (pre V56_env))) 
and ((pre V47_grant_exit) => (pre V246_X)) 
and ((pre V47_grant_exit) => (not (pre on_C))) 
and ((pre V47_grant_exit) => (pre V313_onceCsinceA)) 
and ((pre V47_grant_exit) => ((pre V47_grant_exit) or (pre V321_afterA))) 
and ((if V322_afterA then (ack_BC and (pre V323_alwaysBsinceA)) else true) => V323_alwaysBsinceA) 
and ((not V321_afterA) => V323_alwaysBsinceA) 
and ((not V321_afterA) => (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) 
and ((ack_BC and (pre V323_alwaysBsinceA)) => ack_BC) 
and ((not V309_afterA) => (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true)) 
and (((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B)) and ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C))) => ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit)))) 
and (((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B)) and ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C))) => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and (V284_X => V56_env) 
and ((if V310_afterA then (ack_AB and (pre V311_alwaysBsinceA)) else true) => V311_alwaysBsinceA) 
and ((ack_AB and (pre V311_alwaysBsinceA)) => ack_AB) 
and ((if V203_afterA then (ack_BC and (pre V204_alwaysBsinceA)) else true) => V204_alwaysBsinceA) 
and ((ack_BC and (pre V204_alwaysBsinceA)) => ack_BC) 
and ((pre V46_grant_access) => (not (pre on_C))) 
and ((pre V46_grant_access) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((pre V46_grant_access) => ((pre V46_grant_access) or (pre V312_afterA))) 
and ((pre ack_AB) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((pre ack_AB) => ((pre ack_AB) or (pre V189_afterA))) 
and ((if V190_afterA then (ack_AB and (pre V191_alwaysBsinceA)) else true) => V191_alwaysBsinceA) 
and ((ack_AB and (pre V191_alwaysBsinceA)) => ack_AB) 
and ((pre V312_afterA) => (pre V189_afterA)) 
and ((pre ack_BC) => ((pre ack_BC) or (pre V203_afterA))) 
and (V313_onceCsinceA => (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true)) 
and (((not ack_AB) and V180_empty_section) => (not (ack_AB and ack_BC))) 
and (((not ack_AB) and V180_empty_section) => V54_empty_section) 
and ((pre V324_afterA) => ((pre ack_BC) or (pre V203_afterA))) 
and ((pre V203_afterA) => ((pre ack_BC) or (pre V203_afterA))) 
and ((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B)) => ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit)))) 
and ((not (V265_X and (not (pre V265_X)))) => ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C))) 
and (on_B => (on_A or on_B)) 
and (on_B => (not (V265_X and (not (pre V265_X))))) 
and ((on_A or on_B) => (not V46_grant_access)) 
and ((on_A or on_B) => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and ((on_A or on_B) => (not V54_empty_section)) 
and (((not ack_AB) and V180_empty_section) => (not ack_AB)) 
and (((not ack_AB) and V180_empty_section) => (not V46_grant_access)) 
and (((not ack_AB) and V180_empty_section) => (V48_do_AB or (pre V206_onceCsinceA))) 
and (V54_empty_section => (V54_empty_section or (pre V325_onceCsinceA))) 
and (V54_empty_section => V246_X) 
and (V54_empty_section => (not on_B)) 
and ((not V54_empty_section) => (not V46_grant_access)) 
and ((not V54_empty_section) => ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C))) 
and ((pre V208_X) => (not (V208_X and (not (pre V208_X))))) 
and ((V208_X and (not (pre V208_X))) => (not V46_grant_access)) 
and ((V208_X and (not (pre V208_X))) => (not (pre V208_X))) 
and ((V265_X and (not (pre V265_X))) => (not (V208_X and (not (pre V208_X))))) 
and ((V265_X and (not (pre V265_X))) => (not on_B)) 
and (V323_alwaysBsinceA => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((pre V325_onceCsinceA) => (V54_empty_section or (pre V325_onceCsinceA))) 
and ((pre V206_onceCsinceA) => (V48_do_AB or (pre V206_onceCsinceA))) 
and (V181_only_on_B => (V55_only_on_B or (pre V313_onceCsinceA))) 
and (V181_only_on_B => V313_onceCsinceA) 
and (V181_only_on_B => (not (on_A or on_C))) 
and (((((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B)) and ((not (V265_X and (not (pre V265_X)))) or (on_A or on_C))) => (((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) and ((not (V246_X and (not (pre V246_X)))) or on_B))) 
and ((pre V324_afterA) => ((pre V47_grant_exit) or (pre V321_afterA))) 
and ((V180_empty_section and ack_AB) => (V56_env => (((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC))) 
and ((V180_empty_section and ack_AB) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((V180_empty_section and ack_AB) => V311_alwaysBsinceA) 
and ((V180_empty_section and ack_AB) => (not (V208_X and (not (pre V208_X))))) 
and ((V180_empty_section and ack_AB) => V191_alwaysBsinceA) 
and ((V180_empty_section and ack_AB) => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and ((V180_empty_section and ack_AB) => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((V180_empty_section and ack_AB) => V54_empty_section) 
and ((V180_empty_section and ack_AB) => ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) 
and ((V180_empty_section and ack_AB) => (not on_B)) 
and (V191_alwaysBsinceA => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((not V189_afterA) => (not V309_afterA)) 
and ((not V189_afterA) => (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) 
and ((on_C and (not (pre on_C))) => on_C) 
and ((not V189_afterA) => (if V310_afterA then (ack_AB and (pre V311_alwaysBsinceA)) else true)) 
and ((not V189_afterA) => V311_alwaysBsinceA) 
and ((not V189_afterA) => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and ((not V189_afterA) => (if V190_afterA then (ack_AB and (pre V191_alwaysBsinceA)) else true)) 
and ((pre V193_onceCsinceA) => (V49_do_BC or (pre V193_onceCsinceA))) 
and (V313_onceCsinceA => (not V46_grant_access)) 
and ((if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true) => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and ((not V309_afterA) => (if V310_afterA then (ack_AB and (pre V311_alwaysBsinceA)) else true)) 
and (((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) => (((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access)))) 
and (on_A => (on_A or on_B)) 
and (on_A => (not (V246_X and (not (pre V246_X))))) 
and (on_A => (on_A or on_C)) 
and (V181_only_on_B => on_B) 
and ((not (on_A or on_C)) => V246_X) 
and ((pre V246_X) => (not (V246_X and (not (pre V246_X))))) 
and ((V246_X and (not (pre V246_X))) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((V246_X and (not (pre V246_X))) => (not (pre V246_X))) 
and ((V180_empty_section and ack_AB) => (V54_empty_section or (pre V325_onceCsinceA))) 
and ((V265_X and (not (pre V265_X))) => (pre V208_X)) 
and (V54_empty_section => (not (V208_X and (not (pre V208_X))))) 
and ((pre V56_env) => (V284_X or (pre V56_env))) 
and (V54_empty_section => (not (on_C and (not (pre on_C))))) 
and ((not V321_afterA) => (if V322_afterA then (ack_BC and (pre V323_alwaysBsinceA)) else true)) 
and ((pre V325_onceCsinceA) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((pre V206_onceCsinceA) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true) => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and (V47_grant_exit => (V55_only_on_B or (pre V313_onceCsinceA))) 
and (V47_grant_exit => V313_onceCsinceA) 
and (V47_grant_exit => (((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC)) 
and (V47_grant_exit => (V56_env => (((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC))) 
and (V47_grant_exit => (not V46_grant_access)) 
and (V47_grant_exit => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and (V47_grant_exit => (not (V265_X and (not (pre V265_X))))) 
and (V47_grant_exit => (not (on_C and (not (pre on_C))))) 
and (V47_grant_exit => ack_BC) 
and (V204_alwaysBsinceA => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((pre V206_onceCsinceA) => (pre V325_onceCsinceA)) 
and ((if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true) => (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) 
and (V206_onceCsinceA => (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) 
and (V206_onceCsinceA => (not (ack_AB and ack_BC))) 
and ((on_A or on_C) => (not V54_empty_section)) 
and (V47_grant_exit => V181_only_on_B) 
and ((ack_BC and (pre V204_alwaysBsinceA)) => (pre V204_alwaysBsinceA)) 
and ((V265_X and (not (pre V265_X))) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((V265_X and (not (pre V265_X))) => (not (pre V265_X))) 
and (V54_empty_section => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((V180_empty_section and ack_AB) => (not (on_C and (not (pre on_C))))) 
and (V54_empty_section => (not (on_A or on_C))) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => (not (ack_AB and ack_BC))) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => ((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA)))) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) => ((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA)))) 
and ((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((pre ack_AB) => (pre V191_alwaysBsinceA)) 
and ((((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC) => (V56_env => (((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC))) 
and ((((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC) => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and (((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((pre V47_grant_exit) => (pre V204_alwaysBsinceA)) 
and ((pre V47_grant_exit) => (pre V323_alwaysBsinceA)) 
and ((not ack_AB) => (not V46_grant_access)) 
and ((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => V313_onceCsinceA) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => (not V46_grant_access)) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true)) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((V180_empty_section and ack_AB) => (((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC)) 
and ((V180_empty_section and ack_AB) => ack_AB) 
and (V49_do_BC => V181_only_on_B) 
and (V49_do_BC => (not V46_grant_access)) 
and (V49_do_BC => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and (V49_do_BC => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and (V49_do_BC => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and (V49_do_BC => (V55_only_on_B or (pre V313_onceCsinceA))) 
and (V49_do_BC => V313_onceCsinceA) 
and (V49_do_BC => (V49_do_BC or (pre V193_onceCsinceA))) 
and ((on_C and (not (pre on_C))) => (not V54_empty_section)) 
and ((on_C and (not (pre on_C))) => (not V46_grant_access)) 
and ((on_C and (not (pre on_C))) => (not (pre on_C))) 
and (on_C => (not V54_empty_section)) 
and (on_C => (not V46_grant_access)) 
and (on_C => (on_A or on_C)) 
and (V47_grant_exit => on_B) 
and (V47_grant_exit => V323_alwaysBsinceA) 
and (V47_grant_exit => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and (V47_grant_exit => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((ack_BC and (pre V204_alwaysBsinceA)) => (if V203_afterA then (ack_BC and (pre V204_alwaysBsinceA)) else true)) 
and ((ack_BC and (pre V323_alwaysBsinceA)) => (pre V323_alwaysBsinceA)) 
and ((ack_BC and (pre V323_alwaysBsinceA)) => (if V322_afterA then (ack_BC and (pre V323_alwaysBsinceA)) else true)) 
and (ack_BC => V204_alwaysBsinceA) 
and (ack_BC => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((not (on_A or on_C)) => ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) 
and ((not (on_A or on_C)) => (not (on_C and (not (pre on_C))))) 
and ((pre V47_grant_exit) => ((pre ack_BC) or (pre V203_afterA))) 
and ((pre V47_grant_exit) => (pre ack_BC)) 
and (V324_afterA => V205_afterA) 
and (((pre V47_grant_exit) or (pre V321_afterA)) => ((pre ack_BC) or (pre V203_afterA))) 
and ((ack_AB and (pre V191_alwaysBsinceA)) => (pre V191_alwaysBsinceA)) 
and ((ack_AB and (pre V311_alwaysBsinceA)) => (pre V311_alwaysBsinceA)) 
and ((ack_AB and (pre V191_alwaysBsinceA)) => (if V190_afterA then (ack_AB and (pre V191_alwaysBsinceA)) else true)) 
and ((ack_AB and (pre V311_alwaysBsinceA)) => (if V310_afterA then (ack_AB and (pre V311_alwaysBsinceA)) else true)) 
and (ack_AB => V191_alwaysBsinceA) 
and ((not V202_afterA) => (not V321_afterA)) 
and ((not V202_afterA) => (if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true)) 
and ((not V202_afterA) => (if V322_afterA then (ack_BC and (pre V323_alwaysBsinceA)) else true)) 
and ((not V202_afterA) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((not V202_afterA) => (if V203_afterA then (ack_BC and (pre V204_alwaysBsinceA)) else true)) 
and ((pre ack_BC) => (pre V204_alwaysBsinceA)) 
and ((pre V46_grant_access) => (pre V311_alwaysBsinceA)) 
and ((pre V46_grant_access) => (pre V191_alwaysBsinceA)) 
and ((pre V46_grant_access) => (not (pre V208_X))) 
and ((ack_AB and ack_BC) => ack_BC) 
and (((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) and ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) => ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => (((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA)))) 
and (V49_do_BC => (not (on_C and (not (pre on_C))))) 
and (V49_do_BC => (if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true))) 
and ((ack_AB and ack_BC) => V204_alwaysBsinceA) 
and ((ack_AB and ack_BC) => (V204_alwaysBsinceA or V206_onceCsinceA)) 
and ((ack_AB and ack_BC) => V191_alwaysBsinceA) 
and ((pre V47_grant_exit) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and (((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) => (not (ack_AB and ack_BC))) 
and ((((V50_no_collision and V51_exclusive_req) and V52_no_derail_AB) and V53_no_derail_BC) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and ((pre V312_afterA) => ((pre ack_AB) or (pre V189_afterA))) 
and ((pre V189_afterA) => ((pre ack_AB) or (pre V189_afterA))) 
and ((((((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) and ((not V202_afterA) or (V204_alwaysBsinceA or V206_onceCsinceA))) and true) and ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and (V49_do_BC => on_B) 
and (V49_do_BC => (not (ack_AB and ack_BC))) 
and (V49_do_BC => (not ack_BC)) 
and ((pre V312_afterA) => ((pre V46_grant_access) or (pre V312_afterA))) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => (not (ack_AB and ack_BC))) 
and ((not (pre V265_X)) => (pre V208_X)) 
and ((pre V46_grant_access) => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and ((pre V46_grant_access) => (not (V265_X and (not (pre V265_X))))) 
and ((pre V46_grant_access) => ((pre ack_AB) or (pre V189_afterA))) 
and ((pre V46_grant_access) => (pre ack_AB)) 
and (V309_afterA => V192_afterA) 
and (((pre V46_grant_access) or (pre V312_afterA)) => ((pre ack_AB) or (pre V189_afterA))) 
and ((V208_X and (not (pre V208_X))) => (not (V265_X and (not (pre V265_X))))) 
and ((V208_X and (not (pre V208_X))) => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and ((V208_X and (not (pre V208_X))) => (not V54_empty_section)) 
and ((not (pre V208_X)) => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and ((not (pre V208_X)) => (not (V265_X and (not (pre V265_X))))) 
and ((not (pre V208_X)) => (not (pre on_C))) 
and ((not (pre V208_X)) => (pre V325_onceCsinceA)) 
and ((not (pre V208_X)) => (pre V265_X)) 
and ((not (pre V246_X)) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((not (pre V246_X)) => (pre V208_X)) 
and ((not (V208_X and (not (pre V208_X)))) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((pre V313_onceCsinceA) => (V55_only_on_B or (pre V313_onceCsinceA))) 
and (V311_alwaysBsinceA => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and ((not ack_BC) => (not (ack_AB and ack_BC))) 
and ((if V47_grant_exit then V54_empty_section else (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) => (if V324_afterA then (V54_empty_section or (pre V325_onceCsinceA)) else true)) 
and ((pre V47_grant_exit) => (not (pre V265_X))) 
and ((not (V246_X and (not (pre V246_X)))) => ((not (V246_X and (not (pre V246_X)))) or on_B)) 
and ((pre V193_onceCsinceA) => (pre V313_onceCsinceA)) 
and ((V49_do_BC or (pre V193_onceCsinceA)) => (V55_only_on_B or (pre V313_onceCsinceA))) 
and ((if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true) => (if V312_afterA then (V55_only_on_B or (pre V313_onceCsinceA)) else true)) 
and ((if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true) => ((not V309_afterA) or (V311_alwaysBsinceA or V313_onceCsinceA))) 
and (V206_onceCsinceA => (if V205_afterA then (V48_do_AB or (pre V206_onceCsinceA)) else true)) 
and ((V180_empty_section and ack_AB) => ((not V321_afterA) or (V323_alwaysBsinceA or V325_onceCsinceA))) 
and (V49_do_BC => ((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA)))) 
and ((ack_AB and ack_BC) => ack_AB) 
and ((if ack_AB then V49_do_BC else (if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true)) => ((not (ack_AB and ack_BC)) and ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA)))) 
and ((if V192_afterA then (V49_do_BC or (pre V193_onceCsinceA)) else true) => ((not V189_afterA) or (V191_alwaysBsinceA or V193_onceCsinceA))) 
and ((not (pre V208_X)) => (pre V246_X)) 
and ((pre V265_X) => (not (V265_X and (not (pre V265_X))))) 
and ((pre on_C) => ((not (V208_X and (not (pre V208_X)))) or (pre V46_grant_access))) 
and ((pre on_C) => (pre V208_X)) 
and ((not (on_C and (not (pre on_C)))) => ((not (on_C and (not (pre on_C)))) or (pre V47_grant_exit))) 
and ((not ack_AB) => (not (ack_AB and ack_BC))) 
and  true ));
tel.

