node top
  (etat1: bool;
  etat2: bool;
  etat3: bool;
  etat4: bool;
  etat5: bool;
  etat6: bool;
  etat7: bool;
  etat8: bool;
  etat9: bool)
returns
  (OK: bool);

var
  V58_x0: int;
  V59_x1: int;
  V60_x2: int;
  V61_x3: int;
  V62_x4: int;
  V63_x5: int;
  V64_x6: int;
  V65_x7: int;
  V66_x8: int;
  V67_x9: int;
  V68_x10: int;
  V69_x11: int;
  V70_x12: int;
  V71_env: bool;
  V133_garde1: bool;
  V134_garde2: bool;
  V135_garde3: bool;
  V136_garde4: bool;
  V137_garde5: bool;
  V138_garde6: bool;
  V139_garde7: bool;
  V140_garde8: bool;
  V141_garde9: bool;
  V161_X: bool;

let
  OK = (V58_x0 >= 0);
  V58_x0 = (0 -> (if etat1 then (if V133_garde1 then ((pre V58_x0) - 1) else 
  (pre V58_x0)) else (if etat2 then (if V134_garde2 then ((pre V58_x0) + 1) 
  else (pre V58_x0)) else (pre V58_x0))));
  V59_x1 = (0 -> (if etat1 then (if V133_garde1 then ((pre V59_x1) + 1) else 
  (pre V59_x1)) else (if etat2 then (if V134_garde2 then ((pre V59_x1) - 1) 
  else (pre V59_x1)) else (if etat3 then (if V135_garde3 then ((pre V59_x1) + 1
  ) else (pre V59_x1)) else (if etat4 then (if V136_garde4 then ((pre V59_x1) - 
  1) else (pre V59_x1)) else (pre V59_x1))))));
  V60_x2 = (1 -> (if etat3 then (if V135_garde3 then ((pre V60_x2) - 1) else 
  (pre V60_x2)) else (if etat4 then (if V136_garde4 then ((pre V60_x2) + 1) 
  else (pre V60_x2)) else (pre V60_x2))));
  V61_x3 = (0 -> (if etat2 then (if V134_garde2 then ((pre V61_x3) + 1) else 
  (pre V61_x3)) else (if etat6 then (if V138_garde6 then ((pre V61_x3) - 1) 
  else (pre V61_x3)) else (pre V61_x3))));
  V62_x4 = (0 -> (if etat2 then (if V134_garde2 then ((pre V62_x4) - 1) else 
  (pre V62_x4)) else (if etat6 then (if V138_garde6 then ((pre V62_x4) + 1) 
  else (pre V62_x4)) else (if etat7 then (if V139_garde7 then ((pre V62_x4) + 5
  ) else (pre V62_x4)) else (if etat8 then (if V140_garde8 then ((pre V62_x4) - 
  5) else (pre V62_x4)) else (pre V62_x4))))));
  V63_x5 = (0 -> (if etat4 then (if V137_garde5 then ((pre V63_x5) + 1) else 
  (pre V63_x5)) else (if etat8 then (if V140_garde8 then ((pre V63_x5) - 1) 
  else (pre V63_x5)) else (pre V63_x5))));
  V64_x6 = (0 -> (if etat5 then (if V137_garde5 then ((pre V64_x6) - 1) else 
  (pre V64_x6)) else (if etat6 then (if V138_garde6 then ((pre V64_x6) + 1) 
  else (pre V64_x6)) else (pre V64_x6))));
  V65_x7 = (0 -> (if etat5 then (if V137_garde5 then ((pre V65_x7) + 1) else 
  (pre V65_x7)) else (if etat6 then (if V138_garde6 then ((pre V65_x7) - 1) 
  else (pre V65_x7)) else (if etat7 then (if V139_garde7 then ((pre V65_x7) + 1
  ) else (pre V65_x7)) else (if etat8 then (if V140_garde8 then ((pre V65_x7) - 
  1) else (pre V65_x7)) else (pre V65_x7))))));
  V66_x8 = (1 -> (if etat7 then (if V139_garde7 then ((pre V66_x8) - 1) else 
  (pre V66_x8)) else (if etat8 then (if V140_garde8 then ((pre V66_x8) + 1) 
  else (pre V66_x8)) else (pre V66_x8))));
  V67_x9 = (0 -> (if etat4 then (if V136_garde4 then ((pre V67_x9) + 1) else 
  (pre V67_x9)) else (if etat9 then (if V141_garde9 then ((pre V67_x9) - 1) 
  else (pre V67_x9)) else (pre V67_x9))));
  V68_x10 = (0 -> (if etat8 then (if V140_garde8 then ((pre V68_x10) + 1) else 
  (pre V68_x10)) else (if etat9 then (if V141_garde9 then ((pre V68_x10) - 1) 
  else (pre V68_x10)) else (pre V68_x10))));
  V69_x11 = (1 -> (if etat3 then (if V135_garde3 then ((pre V69_x11) - 1) else 
  (pre V69_x11)) else (if etat9 then (if V141_garde9 then ((pre V69_x11) + 1) 
  else (pre V69_x11)) else (pre V69_x11))));
  V70_x12 = (1 -> (if etat7 then (if V139_garde7 then ((pre V70_x12) - 1) else 
  (pre V70_x12)) else (if etat9 then (if V141_garde9 then ((pre V70_x12) + 1) 
  else (pre V70_x12)) else (pre V70_x12))));
  V71_env = (V161_X -> (V161_X and (pre V71_env)));
  V133_garde1 = ((pre V58_x0) >= 1);
  V134_garde2 = (((pre V59_x1) >= 1) and ((pre V62_x4) >= 1));
  V135_garde3 = (((pre V60_x2) >= 1) and ((pre V69_x11) >= 1));
  V136_garde4 = ((pre V59_x1) >= 1);
  V137_garde5 = ((pre V64_x6) >= 1);
  V138_garde6 = (((pre V61_x3) >= 1) and ((pre V65_x7) >= 1));
  V139_garde7 = (((pre V66_x8) >= 1) and ((pre V70_x12) >= 1));
  V140_garde8 = ((((pre V62_x4) >= 5) and ((pre V63_x5) >= 1)) and ((pre V65_x7
  ) >= 1));
  V141_garde9 = (((pre V67_x9) >= 1) and ((pre V68_x10) >= 1));
  V161_X = (((((((((((((((((((((((((((((((((((((((not etat1) and (not etat2)) 
  and (not etat3)) and (not etat4)) and (not etat5)) and (not etat6)) and (not 
  etat7)) and (not etat8)) and (not etat9)) or ((((((((etat1 and (not etat2)) 
  and (not etat3)) and (not etat4)) and (not etat5)) and (not etat6)) and (not 
  etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) and etat2) 
  and (not etat3)) and (not etat4)) and (not etat5)) and (not etat6)) and (not 
  etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) and (not 
  etat2)) and etat3) and (not etat4)) and (not etat5)) and (not etat6)) and 
  (not etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) and 
  (not etat2)) and (not etat3)) and etat4) and (not etat5)) and (not etat6)) 
  and (not etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) 
  and (not etat2)) and (not etat3)) and (not etat4)) and etat5) and (not etat6)
  ) and (not etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) 
  and (not etat2)) and (not etat3)) and (not etat4)) and (not etat5)) and etat6
  ) and (not etat7)) and (not etat8)) and (not etat9))) or (((((((((not etat1) 
  and (not etat2)) and (not etat3)) and (not etat4)) and (not etat5)) and (not 
  etat6)) and etat7) and (not etat8)) and (not etat9))) or (((((((((not etat1) 
  and (not etat2)) and (not etat3)) and (not etat4)) and (not etat5)) and (not 
  etat6)) and (not etat7)) and etat8) and (not etat9))) or (((((((((not etat1) 
  and (not etat2)) and (not etat3)) and (not etat4)) and (not etat5)) and (not 
  etat6)) and (not etat7)) and (not etat8)) and etat9)) and (V58_x0 > -32768)) 
  and (V59_x1 > -32768)) and (V60_x2 > -32768)) and (V61_x3 > -32768)) and (
  V62_x4 > -32768)) and (V63_x5 > -32768)) and (V64_x6 > -32768)) and (V65_x7 > 
  -32768)) and (V66_x8 > -32768)) and (V58_x0 < 32767)) and (V59_x1 < 32767)) 
  and (V61_x3 < 32767)) and (V62_x4 < 32767)) and (V63_x5 < 32767)) and (V64_x6 
  < 32767)) and (V65_x7 < 32767)) and (V66_x8 < 32767)) and (V67_x9 < 32767)) 
  and (V68_x10 < 32767)) and (V69_x11 < 32767)) and (V70_x12 < 32767));
   --%PROPERTY OK=true;


tel.

