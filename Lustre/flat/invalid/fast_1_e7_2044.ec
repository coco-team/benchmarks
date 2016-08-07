node top
  (igsw: bool;
  ccd: bool;
  cconoff: bool;
  bpa: bool;
  cccanc: bool;
  battok: bool;
  gearok: bool;
  qfok: bool;
  sdok: bool;
  accok: bool;
  ccseti: bool;
  ccsetd: bool;
  ccr: bool;
  vs: int)
returns
  (OK: bool);

var
  V82_ccont: bool;
  V83_cca: bool;
  V84_env: bool;
  V293_ccall: bool;
  V294_ob: bool;
  V295_pnb: bool;
  V296_XsinceY: bool;
  V297_cca: bool;

let
  OK = (if (false -> (V83_cca or (not (pre V83_cca)))) then (((false -> (ccseti 
  or (not (pre ccseti)))) or (false -> (ccsetd or (not (pre ccsetd))))) or (
  false -> (ccr or (not (pre ccr))))) else true);
  V82_ccont = (false -> (if (((false -> ((igsw and (not (pre igsw))) or ((not 
  igsw) and (pre igsw)))) or ccd) or ((pre V82_ccont) and (false -> (cconoff or 
  (not (pre cconoff)))))) then false else (if ((pre (not V82_ccont)) and (false 
  -> (cconoff or (not (pre cconoff))))) then true else (pre V82_ccont))));
  V83_cca = (false -> (if ((if (V295_pnb and V294_ob) then (if (not ccr) then 
  true else V296_XsinceY) else false) and V293_ccall) then true else (if (not 
  V293_ccall) then false else (pre V83_cca))));
  V84_env = ((not igsw) -> true);
  V293_ccall = (((((((((V82_ccont and (not bpa)) and battok) and gearok) and 
  qfok) and (false -> ((pre sdok) and sdok))) and (35 <= vs)) and (vs <= 200)) 
  and (false -> ((pre (false -> ((pre accok) and accok))) and accok))) and (not 
  cccanc));
  V294_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and 
  ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr));
  V295_pnb = (true -> (pre (((not ccseti) and (not ccsetd)) and (not ccr))));
  V296_XsinceY = (if (false -> (V82_ccont or (not (pre V82_ccont)))) then 
  V297_cca else (true -> (V297_cca or (pre V296_XsinceY))));
  V297_cca = (pre V83_cca);
  --%PROPERTY  OK=true;



-- 185 implications. 
assert (true -> ( (true -> ((V294_ob = ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) or (((not ccseti) and (not ccsetd)) and ccr))) 
and (V83_cca = (if ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) then true else (if (not V293_ccall) then false else (pre V83_cca)))) 
and ((pre V83_cca) = V297_cca) 
-- and (V293_ccall => (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc))) 
and (V82_ccont => (V82_ccont or (not (pre V82_ccont)))) 
and (V82_ccont => (if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => ((not (pre ccseti)) and (not (pre ccsetd)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccseti))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => V295_pnb) 
and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => V296_XsinceY) 
and ((((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
-- and ((pre V83_cca) => ((pre (pre accok)) and (pre accok))) 
and ((pre V83_cca) => (if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY)))) 
and ((pre V83_cca) => (if (V83_cca or (not (pre V83_cca))) then (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr)))) else true)) 
-- and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => (pre (pre accok))) 
and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => (V297_cca or (pre V296_XsinceY))) 
and ((not ccr) => (if (not ccr) then true else V296_XsinceY)) 
and ((not (pre V83_cca)) => (V83_cca or (not (pre V83_cca)))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre ccsetd))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not ccr)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => V83_cca) 
and ((pre V296_XsinceY) => (V297_cca or (pre V296_XsinceY))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (vs <= 200)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (not bpa)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (pre cconoff)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (pre V83_cca)) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok))) 
-- and (((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) => (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200))) 
and (((V82_ccont and (not bpa)) and battok) => (V82_ccont and (not bpa))) 
and ((((V82_ccont and (not bpa)) and battok) and gearok) => ((V82_ccont and (not bpa)) and battok)) 
and (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok))) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs))) 
and (((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) => (35 <= vs)) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((((V82_ccont and (not bpa)) and battok) and gearok) and qfok)) 
and ((not (pre ccseti)) => (ccseti or (not (pre ccseti)))) 
and ((ccsetd or (not (pre ccsetd))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (V83_cca or (not (pre V83_cca)))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => V83_cca) 
and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (((V82_ccont and (not bpa)) and battok) and gearok)) 
and (((not ccseti) and ccsetd) => ccsetd) 
and ((ccseti and (not ccsetd)) => (ccseti or (not (pre ccseti)))) 
and ((ccseti and (not ccsetd)) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((ccseti and (not ccsetd)) => ccseti) 
and ((V82_ccont and (not bpa)) => (not bpa)) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => (V83_cca or (not (pre V83_cca)))) 
-- and ((((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) and (((pre (pre accok)) and (pre accok)) and accok)) and (not cccanc)) => (not cccanc)) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (V82_ccont or (not (pre V82_ccont)))) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (V82_ccont or (not (pre V82_ccont)))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (V82_ccont or (not (pre V82_ccont)))) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => ((pre sdok) and sdok)) 
and ((V82_ccont and (not bpa)) => (V82_ccont or (not (pre V82_ccont)))) 
and ((not (pre V82_ccont)) => (not (pre V83_cca))) 
and ((not (pre V82_ccont)) => (V83_cca or (not (pre V83_cca)))) 
and ((not (pre V82_ccont)) => (V82_ccont or (not (pre V82_ccont)))) 
and ((cconoff or (not (pre cconoff))) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (pre sdok)) 
and ((V82_ccont and (not bpa)) => V82_ccont) 
and (((pre sdok) and sdok) => (pre sdok)) 
and (((pre V82_ccont) and (cconoff or (not (pre cconoff)))) => (not V293_ccall)) 
and (((pre V82_ccont) and (cconoff or (not (pre cconoff)))) => (pre V82_ccont)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => V294_ob) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (not ccsetd)) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (V295_pnb and V294_ob)) 
and (V83_cca => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre V83_cca))) 
and (V83_cca => (V83_cca or (not (pre V83_cca)))) 
and (V83_cca => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (V83_cca => (not cccanc)) 
and (V83_cca => (V82_ccont or (not (pre V82_ccont)))) 
-- and (V83_cca => (((pre (pre accok)) and (pre accok)) and accok)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr)))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (ccr or (not (pre ccr)))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (not (pre ccseti))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (V295_pnb and V294_ob)) 
-- and ((if (not V293_ccall) then false else (pre V83_cca)) => (((pre (pre accok)) and (pre accok)) and accok)) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (V83_cca or (not (pre V83_cca)))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => V294_ob) 
and (V83_cca => (not (pre ccr))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (ccsetd or (not (pre ccsetd)))) 
and ((((not ccseti) and ccsetd) and (not ccr)) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (V83_cca => qfok) 
and (V83_cca => (vs <= 200)) 
and (V83_cca => (not bpa)) 
and (V83_cca => battok) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr)))) 
and (((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) and V293_ccall) => (if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => V294_ob) 
and ((((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) and (35 <= vs)) and (vs <= 200)) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((V82_ccont and (not bpa)) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((pre sdok) and sdok) => sdok) 
and (((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) => (not (pre V82_ccont))) 
and (((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) => (not (pre V83_cca))) 
and (ccd => (not V293_ccall)) 
-- and (((pre (pre accok)) and (pre accok)) => (pre (pre accok))) 
and (((V82_ccont and (not bpa)) and battok) => battok) 
and (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) => (not V293_ccall)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => accok) 
and (ccr => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (ccr => (ccr or (not (pre ccr)))) 
and (((not igsw) and (pre igsw)) => (not V293_ccall)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (not ccseti)) 
and ((V295_pnb and V294_ob) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (V83_cca => (35 <= vs)) 
and (V83_cca => (if (not ccr) then true else V296_XsinceY)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ((not ccseti) and (not ccsetd))) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => (if (not ccr) then true else V296_XsinceY)) 
and ((V295_pnb and V294_ob) => V295_pnb) 
and (ccsetd => (ccsetd or (not (pre ccsetd)))) 
and (((not ccseti) and ccsetd) => (not ccseti)) 
and ((((ccseti and (not ccsetd)) and (not ccr)) or (((not ccseti) and ccsetd) and (not ccr))) => (not ccr)) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => ((pre (pre accok)) and (pre accok))) 
and ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
and (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
and (ccseti => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (ccseti => (ccseti or (not (pre ccseti)))) 
and ((ccseti and (not ccsetd)) => (not ccsetd)) 
and (V83_cca => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (V296_XsinceY => (if (not ccr) then true else V296_XsinceY)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (pre V82_ccont)) 
and ((if (V82_ccont or (not (pre V82_ccont))) then V297_cca else (V297_cca or (pre V296_XsinceY))) => (pre V82_ccont)) 
and ((ccseti or (not (pre ccseti))) => ((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd))))) 
and (cconoff => (cconoff or (not (pre cconoff)))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccsetd))) 
and ((((V82_ccont and (not bpa)) and battok) and gearok) => gearok) 
and ((((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) and ((pre sdok) and sdok)) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and ((if ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) then false else (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) => (cconoff or (not (pre cconoff)))) 
and (((not igsw) and (pre igsw)) => ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
and ((not (pre ccr)) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (bpa => (not V293_ccall)) 
and (ccd => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and (ccd => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
and ((if (V295_pnb and V294_ob) then (if (not ccr) then true else V296_XsinceY) else false) => V294_ob) 
and ((V295_pnb and V294_ob) => V294_ob) 
and (V83_cca => (pre accok)) 
and (V83_cca => gearok) 
and (((not ccseti) and (not ccsetd)) => (not ccseti)) 
and (((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff))))) => (not V293_ccall)) 
and (((not igsw) and (pre igsw)) => (not igsw)) 
and ((not (pre ccr)) => (ccr or (not (pre ccr)))) 
and (cccanc => (not V293_ccall)) 
and ((((not ccseti) and (not ccsetd)) and ccr) => ccr) 
and (((ccseti and (not ccsetd)) and (not ccr)) => (ccseti and (not ccsetd))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (ccr or (not (pre ccr)))) 
and (((not ccseti) and (not ccsetd)) => (not ccsetd)) 
and ((igsw and (not (pre igsw))) => (not V293_ccall)) 
and ((igsw and (not (pre igsw))) => (not (pre igsw))) 
and ((not (pre ccsetd)) => (ccsetd or (not (pre ccsetd)))) 
and (((((V82_ccont and (not bpa)) and battok) and gearok) and qfok) => qfok) 
and ((not (pre cconoff)) => (cconoff or (not (pre cconoff)))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (ccsetd or (not (pre ccsetd)))) 
and (((not (pre ccseti)) and (not (pre ccsetd))) => (not (pre ccseti))) 
and (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((ccr or (not (pre ccr))) => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and ((igsw and (not (pre igsw))) => (((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd)) 
and ((igsw and (not (pre igsw))) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
-- and ((((pre (pre accok)) and (pre accok)) and accok) => (pre accok)) 
-- and (((pre (pre accok)) and (pre accok)) => (pre accok)) 
and ((((not ccseti) and ccsetd) and (not ccr)) => ((not ccseti) and ccsetd)) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (ccr or (not (pre ccr)))) 
and (V83_cca => (ccr or (not (pre ccr)))) 
and ((if (not V293_ccall) then false else (pre V83_cca)) => (V82_ccont or (not (pre V82_ccont)))) 
and ((((not ccseti) and (not ccsetd)) and ccr) => (ccr or (not (pre ccr)))) 
and ((((not (pre ccseti)) and (not (pre ccsetd))) and (not (pre ccr))) => (not (pre ccr))) 
and ((igsw and (not (pre igsw))) => ((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw)))) 
and (ccseti => (((ccseti or (not (pre ccseti))) or (ccsetd or (not (pre ccsetd)))) or (ccr or (not (pre ccr))))) 
and (((pre V82_ccont) and (cconoff or (not (pre cconoff)))) => ((((igsw and (not (pre igsw))) or ((not igsw) and (pre igsw))) or ccd) or ((pre V82_ccont) and (cconoff or (not (pre cconoff)))))) 
and (V83_cca => V293_ccall) 
and ((igsw and (not (pre igsw))) => igsw) 
and (((pre V82_ccont) and (cconoff or (not (pre cconoff)))) => (cconoff or (not (pre cconoff)))) 
and ((pre V82_ccont) => (if ((not (pre V82_ccont)) and (cconoff or (not (pre cconoff)))) then true else (pre V82_ccont))) 
and (((not igsw) and (pre igsw)) => (pre igsw)) 
and (35 <=200) 
and  true ))));
tel.

