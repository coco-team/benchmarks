node top
  (onOff: bool;
  decelSet: bool;
  accelResume: bool;
  cancel: bool;
  brakePedal: bool;
  carGear: int;
  carSpeed: real;
  validInputs: bool)
returns
  (OK: bool);

var
  V11_mode: int;
  V14_VRP1: bool;
  V15_VRP2: bool;
  V16_CP8a: bool;
  V17_VRP3: bool;
  V18_SP4: bool;
  V19_SP5: bool;
  V20_SP6: bool;
  V21_SP7: bool;
  V22_SP3b: bool;
  V24_SP3: bool;
  V25_SP3a: bool;
  V26_SP2: bool;
  V27_SP1: bool;
  V28_SP8: bool;
  V29_SP9: bool;
  V30_SP10: bool;
  V31_SP11: bool;
  V33_zz1: bool;
  V34_zz2: real;
  V36_zz4: bool;
  V37_zz5: real;
  V38_zz6: int;
  V39_zz7: int;
  V40_zz8: int;
  V41_zz9: int;
  V42_zz10: int;
  V43_zz11: int;
  V44_zz12: int;
  V45_zz13: int;
  V46_zz14: int;
  V47_zz15: bool;
  V48_zz16: int;
  V49_zz17: int;
  V50_zz18: int;
  V51_zz19: bool;
  V52_zz20: int;
  V53_zz21: int;
  V54_zz22: int;
  V55_zz23: bool;
  V56_zz24: bool;
  V57_zz25: int;
  V58_zz26: bool;
  V59_zz27: bool;
  V60_zz28: int;
  V61_zz29: int;
  V62_zz30: bool;
  V63_zz31: bool;
  V64_zz32: int;
  V65_zz33: bool;
  V66_zz34: int;
  V67_zz35: int;
  V68_zz36: bool;
  V69_zz37: bool;
  V70_zz38: int;
  V71_zz39: bool;
  V72_zz40: int;
  V73_zz41: int;
  V74_zz42: bool;
  V75_zz43: bool;
  V76_zz44: int;
  V77_zz45: int;
  V78_zz46: int;
  V79_zz47: bool;
  V80_zz48: bool;
  V81_zz49: int;
  V82_zz50: int;
  V83_zz51: int;
  V84_zz52: bool;
  V85_zz53: int;
  V86_zz54: int;
  V87_zz55: int;
  V88_zz56: bool;
  V89_zz57: bool;
  V90_zz58: int;
  V91_zz59: int;
  V92_zz60: int;
  V93_zz61: int;
  V94_zz62: int;
  V95_zz63: int;
  V96_zz64: bool;
  V97_zz65: bool;
  V98_zz66: int;
  V99_zz67: int;
  V100_zz68: int;
  V101_zz69: int;
  V102_zz70: int;
  V103_zz71: int;
  V104_zz72: bool;
  V105_zz73: bool;
  V106_zz74: int;
  V107_zz75: int;
  V108_zz76: int;
  V109_zz77: int;
  V110_zz78: int;
  V111_zz79: int;
  V112_zz80: int;
  V113_zz81: int;
  V114_zz82: bool;
  V115_zz83: int;
  V116_zz84: int;
  V117_zz85: int;
  V118_zz86: int;
  V119_zz87: bool;
  V120_zz88: bool;
  V121_zz89: int;
  V122_zz90: bool;
  V123_zz91: int;
  V124_zz92: int;
  V125_zz93: bool;
  V126_zz94: bool;
  V127_zz95: int;
  V128_zz96: bool;
  V129_zz97: int;
  V130_zz98: int;
  V131_zz99: bool;
  V132_zz100: bool;
  V133_zz101: int;
  V134_zz102: int;
  V135_zz103: int;
  V136_zz104: bool;
  V137_zz105: bool;
  V138_zz106: int;
  V139_zz107: bool;
  V140_zz108: int;
  V141_zz109: int;
  V142_zz110: int;
  V143_zz111: int;
  V144_zz112: bool;
  V145_zz113: int;
  V146_zz114: int;
  V147_zz115: int;
  V148_zz116: bool;
  V149_zz117: bool;
  V150_zz118: int;
  V151_zz119: int;
  V152_zz120: int;
  V153_zz121: int;
  V154_zz122: int;
  V155_zz123: int;
  V156_zz124: int;
  V157_zz125: int;
  V158_zz126: int;
  V159_zz127: int;
  V160_zz128: bool;
  V161_zz129: int;
  V162_zz130: int;
  V163_zz131: int;
  V164_zz132: int;
  V165_zz133: bool;
  V166_zz134: int;
  V167_zz135: int;
  V168_zz136: int;
  V169_zz137: int;
  V170_zz138: bool;
  V171_zz139: bool;
  V172_zz140: int;
  V173_zz141: bool;
  V174_zz142: int;
  V175_zz143: int;
  V176_zz144: bool;
  V177_zz145: bool;
  V178_zz146: int;
  V179_zz147: int;
  V180_zz148: int;
  V181_zz149: int;
  V182_zz150: int;
  V183_zz151: bool;
  V184_zz152: bool;
  V185_zz153: int;
  V186_zz154: int;
  V187_zz155: bool;
  V188_zz156: int;
  V189_zz157: int;
  V190_zz158: bool;
  V193_zz161: int;
  V194_zz162: bool;
  V198_zz166: int;
  V199_zz167: int;
  V200_zz168: int;
  V201_zz169: int;
  V202_zz170: int;
  V203_zz171: bool;
  V204_zz172: int;
  V205_zz173: int;
  V206_zz174: int;
  V207_zz175: int;
  V208_zz176: int;
  V209_zz177: bool;
  V211_zz179: bool;
  V212_zz180: bool;
  V213_zz181: bool;
  V214_zz182: bool;
  V216_zz184: bool;
  V217_zz185: bool;
  V218_zz186: bool;
  V219_zz187: bool;
  V220_zz188: bool;
  V221_zz189: bool;
  V222_zz190: real;
  V223_zz191: bool;
  V224_zz192: bool;
  V225_zz193: bool;
  V226_zz194: bool;
  V227_zz195: bool;
  V228_zz196: bool;
  V229_zz197: bool;
  V230_zz198: bool;
  V231_zz199: bool;
  V232_zz200: bool;
  V233_zz201: bool;
  V234_zz202: bool;
  V235_zz203: bool;
  V236_zz204: real;
  V237_zz205: real;
  V238_zz206: bool;
  V239_zz207: bool;
  V240_zz208: bool;
  V241_zz209: bool;
  V242_zz210: bool;
  V243_zz211: real;
  V244_zz212: bool;
  V245_zz213: bool;
  V246_zz214: bool;
  V247_zz215: bool;
  V248_zz216: bool;
  V249_zz217: bool;
  V250_zz218: real;
  V251_zz219: real;
  V252_zz220: real;
  V253_zz221: real;
  V254_zz222: real;
  V255_zz223: real;
  V256_zz224: real;
  V257_zz225: real;
  V258_zz226: real;
  V259_zz227: real;
  V260_zz228: real;
  V261_zz229: real;
  V262_zz230: real;
  V263_zz231: bool;
  V264_zz232: bool;
  V265_zz233: bool;
  V266_zz234: bool;
  V267_zz235: bool;
  V268_zz236: bool;
  V269_zz237: bool;
  V270_zz238: bool;
  V271_zz239: bool;

let
  OK = ((V270_zz238 or V227_zz195) or V271_zz239);
  V11_mode = (if V187_zz155 then V186_zz154 else V182_zz150);
  V14_VRP1 = (V264_zz232 and V263_zz231);
  V15_VRP2 = (V266_zz234 and V265_zz233);
  V16_CP8a = ((not V194_zz162) or V233_zz201);
  V17_VRP3 = (not V269_zz237);
  V18_SP4 = ((not V235_zz203) or V226_zz194);
  V19_SP5 = ((not V241_zz209) or V238_zz206);
  V20_SP6 = ((not V248_zz216) or V239_zz207);
  V21_SP7 = ((not V249_zz217) or V240_zz208);
  V22_SP3b = ((not V230_zz198) or V232_zz200);
  V24_SP3 = ((not V230_zz198) or V227_zz195);
  V25_SP3a = ((not (not V241_zz209)) or (not V231_zz199));
  V26_SP2 = ((not (not V233_zz201)) or V219_zz187);
  V27_SP1 = ((not (not V218_zz186)) or V219_zz187);
  V28_SP8 = ((not V242_zz210) or V244_zz212);
  V29_SP9 = ((not V246_zz214) or V247_zz215);
  V30_SP10 = ((not V223_zz191) or V224_zz192);
  V31_SP11 = ((not V225_zz193) or V226_zz194);
  V33_zz1 = (true -> (if (pre V249_zz217) then false else (pre V33_zz1)));
  V34_zz2 = ((if (V33_zz1 and (not V249_zz217)) then 0.000000E+00 else (
  V254_zz222 + 5.000000E-02)) -> (if (V33_zz1 and (not V249_zz217)) then 
  0.000000E+00 else (if V249_zz217 then (V254_zz222 + 5.000000E-02) else (pre 
  V34_zz2))));
  V36_zz4 = (true -> (if (pre V248_zz216) then false else (pre V36_zz4)));
  V37_zz5 = ((if (V36_zz4 and (not V248_zz216)) then 0.000000E+00 else (
  V254_zz222 - 5.000000E-02)) -> (if (V36_zz4 and (not V248_zz216)) then 
  0.000000E+00 else (if V248_zz216 then (V254_zz222 - 5.000000E-02) else (pre 
  V37_zz5))));
  V38_zz6 = (if (not (V81_zz49 = 4)) then 4 else V81_zz49);
  V39_zz7 = (if (not (V81_zz49 = 4)) then 4 else V78_zz46);
  V40_zz8 = (if (V77_zz45 = 5) then 3 else V77_zz45);
  V41_zz9 = (if (not (V76_zz44 = 4)) then 4 else V76_zz44);
  V42_zz10 = (if (not (V76_zz44 = 4)) then 4 else V73_zz41);
  V43_zz11 = (if (V72_zz40 = 6) then 3 else V72_zz40);
  V44_zz12 = (if (not (V70_zz38 = 6)) then 6 else V70_zz38);
  V45_zz13 = (if (not (V70_zz38 = 6)) then 5 else V67_zz35);
  V46_zz14 = (if (V66_zz34 = 4) then 3 else V66_zz34);
  V47_zz15 = (if (V66_zz34 = 4) then false else V65_zz33);
  V48_zz16 = (if (not (V64_zz32 = 5)) then 5 else V64_zz32);
  V49_zz17 = (if (not (V64_zz32 = 5)) then 6 else V61_zz29);
  V50_zz18 = (if (V60_zz28 = 4) then 3 else V60_zz28);
  V51_zz19 = (if (V60_zz28 = 4) then false else V59_zz27);
  V52_zz20 = (if (not (V57_zz25 = 4)) then 4 else V57_zz25);
  V53_zz21 = (if (not (V57_zz25 = 4)) then 4 else V141_zz109);
  V54_zz22 = (if (V140_zz108 = 4) then 3 else V140_zz108);
  V55_zz23 = (if (V140_zz108 = 4) then false else V139_zz107);
  V56_zz24 = ((V140_zz108 = 4) and ((if ((V217_zz185 = true) = false) then 0 
  else 1) <> 0));
  V57_zz25 = (if V56_zz24 then V54_zz22 else V140_zz108);
  V58_zz26 = (if V56_zz24 then V55_zz23 else V139_zz107);
  V59_zz27 = (if V56_zz24 then true else V58_zz26);
  V60_zz28 = (if V56_zz24 then V52_zz20 else V57_zz25);
  V61_zz29 = (if V56_zz24 then V53_zz21 else V141_zz109);
  V62_zz30 = ((V60_zz28 = 4) and (((if ((V203_zz171 = true) = false) then 0 
  else 1) <> 0) and (not V56_zz24)));
  V63_zz31 = (V62_zz30 or V56_zz24);
  V64_zz32 = (if V62_zz30 then V50_zz18 else V60_zz28);
  V65_zz33 = (if V62_zz30 then V51_zz19 else V59_zz27);
  V66_zz34 = (if V62_zz30 then V48_zz16 else V64_zz32);
  V67_zz35 = (if V62_zz30 then V49_zz17 else V61_zz29);
  V68_zz36 = ((V66_zz34 = 4) and (((if ((V209_zz177 = true) = false) then 0 
  else 1) <> 0) and (not V63_zz31)));
  V69_zz37 = (V68_zz36 or V63_zz31);
  V70_zz38 = (if V68_zz36 then V46_zz14 else V66_zz34);
  V71_zz39 = (if V68_zz36 then V47_zz15 else V65_zz33);
  V72_zz40 = (if V68_zz36 then V44_zz12 else V70_zz38);
  V73_zz41 = (if V68_zz36 then V45_zz13 else V67_zz35);
  V74_zz42 = ((V72_zz40 = 6) and (((if ((V209_zz177 = false) = false) then 0 
  else 1) <> 0) and (not V69_zz37)));
  V75_zz43 = (V74_zz42 or V69_zz37);
  V76_zz44 = (if V74_zz42 then V43_zz11 else V72_zz40);
  V77_zz45 = (if V74_zz42 then V41_zz9 else V76_zz44);
  V78_zz46 = (if V74_zz42 then V42_zz10 else V73_zz41);
  V79_zz47 = ((V77_zz45 = 5) and (((if ((V203_zz171 = false) = false) then 0 
  else 1) <> 0) and (not V75_zz43)));
  V80_zz48 = (V79_zz47 or V75_zz43);
  V81_zz49 = (if V79_zz47 then V40_zz8 else V77_zz45);
  V82_zz50 = (if V79_zz47 then V38_zz6 else V81_zz49);
  V83_zz51 = (if V79_zz47 then V39_zz7 else V78_zz46);
  V84_zz52 = (if ((not V80_zz48) and (V82_zz50 = 4)) then false else V71_zz39);
  V85_zz53 = (if (not (V87_zz55 = 4)) then 4 else V87_zz55);
  V86_zz54 = (if (not (V87_zz55 = 4)) then 4 else V135_zz103);
  V87_zz55 = (if (not ((V138_zz106 >= 3) and (V138_zz106 <= 6))) then 3 else 
  V138_zz106);
  V88_zz56 = ((not ((V138_zz106 >= 3) and (V138_zz106 <= 6))) and ((V87_zz55 >= 
  3) and (V87_zz55 <= 6)));
  V89_zz57 = ((V90_zz58 = 4) or ((V90_zz58 = 5) or (V90_zz58 = 6)));
  V90_zz58 = (if V88_zz56 then V85_zz53 else V87_zz55);
  V91_zz59 = (if V88_zz56 then V86_zz54 else V135_zz103);
  V92_zz60 = (if (V134_zz102 = 7) then 2 else V134_zz102);
  V93_zz61 = (if (not (V95_zz63 = 4)) then 4 else V95_zz63);
  V94_zz62 = (if (not (V95_zz63 = 4)) then 4 else V130_zz98);
  V95_zz63 = (if (not ((V133_zz101 >= 3) and (V133_zz101 <= 6))) then 3 else 
  V133_zz101);
  V96_zz64 = ((not ((V133_zz101 >= 3) and (V133_zz101 <= 6))) and ((V95_zz63 >= 
  3) and (V95_zz63 <= 6)));
  V97_zz65 = ((V98_zz66 = 4) or ((V98_zz66 = 5) or (V98_zz66 = 6)));
  V98_zz66 = (if V96_zz64 then V93_zz61 else V95_zz63);
  V99_zz67 = (if V96_zz64 then V94_zz62 else V130_zz98);
  V100_zz68 = (if (V129_zz97 = 8) then 2 else V129_zz97);
  V101_zz69 = (if (not (V103_zz71 = 4)) then 4 else V103_zz71);
  V102_zz70 = (if (not (V103_zz71 = 4)) then 4 else V124_zz92);
  V103_zz71 = (if (not ((V127_zz95 >= 3) and (V127_zz95 <= 6))) then 3 else 
  V127_zz95);
  V104_zz72 = ((not ((V127_zz95 >= 3) and (V127_zz95 <= 6))) and ((V103_zz71 >= 
  3) and (V103_zz71 <= 6)));
  V105_zz73 = ((V106_zz74 = 4) or ((V106_zz74 = 5) or (V106_zz74 = 6)));
  V106_zz74 = (if V104_zz72 then V101_zz69 else V103_zz71);
  V107_zz75 = (if V104_zz72 then V102_zz70 else V124_zz92);
  V108_zz76 = (if (V123_zz91 = 8) then 2 else V123_zz91);
  V109_zz77 = (if (not (V121_zz89 = 8)) then 8 else V121_zz89);
  V110_zz78 = (if (not (V121_zz89 = 8)) then 3 else V180_zz148);
  V111_zz79 = (if (V116_zz84 = 6) then 3 else V116_zz84);
  V112_zz80 = (if (V115_zz83 = 5) then 3 else V115_zz83);
  V113_zz81 = (if (V179_zz147 = 4) then 3 else V179_zz147);
  V114_zz82 = (if (V179_zz147 = 4) then false else V173_zz141);
  V115_zz83 = (if ((V179_zz147 >= 3) and (V179_zz147 <= 6)) then V113_zz81 else 
  V179_zz147);
  V116_zz84 = (if ((V179_zz147 >= 3) and (V179_zz147 <= 6)) then V112_zz80 else 
  V115_zz83);
  V117_zz85 = (if ((V179_zz147 >= 3) and (V179_zz147 <= 6)) then V111_zz79 else 
  V116_zz84);
  V118_zz86 = (if ((V179_zz147 >= 3) and (V179_zz147 <= 6)) then 2 else 
  V117_zz85);
  V119_zz87 = (if ((V179_zz147 >= 3) and (V179_zz147 <= 6)) then V114_zz82 else 
  V173_zz141);
  V120_zz88 = (((V179_zz147 >= 3) and (V179_zz147 <= 6)) and (not V218_zz186));
  V121_zz89 = (if V120_zz88 then V118_zz86 else V179_zz147);
  V122_zz90 = (if V120_zz88 then V119_zz87 else V173_zz141);
  V123_zz91 = (if V120_zz88 then V109_zz77 else V121_zz89);
  V124_zz92 = (if V120_zz88 then V110_zz78 else V180_zz148);
  V125_zz93 = ((V123_zz91 = 8) and ((((if ((V217_zz185 = true) = false) then 0 
  else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V120_zz88)));
  V126_zz94 = (V125_zz93 or V120_zz88);
  V127_zz95 = (if V125_zz93 then V108_zz76 else V123_zz91);
  V128_zz96 = (if V125_zz93 then true else V122_zz90);
  V129_zz97 = (if V125_zz93 then V106_zz74 else V127_zz95);
  V130_zz98 = (if V125_zz93 then V107_zz75 else V124_zz92);
  V131_zz99 = ((V129_zz97 = 8) and ((((if ((V212_zz180 = true) = false) then 0 
  else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V126_zz94)));
  V132_zz100 = (V131_zz99 or V126_zz94);
  V133_zz101 = (if V131_zz99 then V100_zz68 else V129_zz97);
  V134_zz102 = (if V131_zz99 then V98_zz66 else V133_zz101);
  V135_zz103 = (if V131_zz99 then V99_zz67 else V130_zz98);
  V136_zz104 = ((V134_zz102 = 7) and ((((if ((V217_zz185 = true) = false) then 
  0 else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V132_zz100)));
  V137_zz105 = (V136_zz104 or V132_zz100);
  V138_zz106 = (if V136_zz104 then V92_zz60 else V134_zz102);
  V139_zz107 = (if V136_zz104 then true else V128_zz96);
  V140_zz108 = (if V136_zz104 then V90_zz58 else V138_zz106);
  V141_zz109 = (if V136_zz104 then V91_zz59 else V135_zz103);
  V142_zz110 = (if ((not V137_zz105) and ((V140_zz108 >= 3) and (V140_zz108 <= 
  6))) then V82_zz50 else V140_zz108);
  V143_zz111 = (if ((not V137_zz105) and ((V140_zz108 >= 3) and (V140_zz108 <= 
  6))) then V83_zz51 else V141_zz109);
  V144_zz112 = (if ((not V137_zz105) and ((V140_zz108 >= 3) and (V140_zz108 <= 
  6))) then V84_zz52 else V139_zz107);
  V145_zz113 = (if (not (V147_zz115 = 7)) then 7 else V147_zz115);
  V146_zz114 = (if (not (V147_zz115 = 7)) then 2 else V175_zz143);
  V147_zz115 = (if (not ((V178_zz146 >= 2) and (V178_zz146 <= 8))) then 2 else 
  V178_zz146);
  V148_zz116 = ((not ((V178_zz146 >= 2) and (V178_zz146 <= 8))) and ((
  V147_zz115 >= 2) and (V147_zz115 <= 8)));
  V149_zz117 = (((V150_zz118 >= 3) and (V150_zz118 <= 6)) or ((V150_zz118 = 7) 
  or (V150_zz118 = 8)));
  V150_zz118 = (if V148_zz116 then V145_zz113 else V147_zz115);
  V151_zz119 = (if V148_zz116 then V146_zz114 else V175_zz143);
  V152_zz120 = (if (V174_zz142 = 1) then 0 else V174_zz142);
  V153_zz121 = (if (not (V172_zz140 = 1)) then 1 else V172_zz140);
  V154_zz122 = (if (not (V172_zz140 = 1)) then 1 else V189_zz157);
  V155_zz123 = (if (V167_zz135 = 8) then 2 else V167_zz135);
  V156_zz124 = (if (V166_zz134 = 7) then 2 else V166_zz134);
  V157_zz125 = (if (V162_zz130 = 6) then 3 else V162_zz130);
  V158_zz126 = (if (V161_zz129 = 5) then 3 else V161_zz129);
  V159_zz127 = (if (V188_zz156 = 4) then 3 else V188_zz156);
  V160_zz128 = (if (V188_zz156 = 4) then false else V190_zz158);
  V161_zz129 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz127 
  else V188_zz156);
  V162_zz130 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz126 
  else V161_zz129);
  V163_zz131 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V157_zz125 
  else V162_zz130);
  V164_zz132 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then 2 else 
  V163_zz131);
  V165_zz133 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V160_zz128 
  else V190_zz158);
  V166_zz134 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V164_zz132 
  else V188_zz156);
  V167_zz135 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V156_zz124 
  else V166_zz134);
  V168_zz136 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V155_zz123 
  else V167_zz135);
  V169_zz137 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else 
  V168_zz136);
  V170_zz138 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz133 
  else V190_zz158);
  V171_zz139 = (((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff));
  V172_zz140 = (if V171_zz139 then V169_zz137 else V188_zz156);
  V173_zz141 = (if V171_zz139 then V170_zz138 else V190_zz158);
  V174_zz142 = (if V171_zz139 then V153_zz121 else V172_zz140);
  V175_zz143 = (if V171_zz139 then V154_zz122 else V189_zz157);
  V176_zz144 = ((V174_zz142 = 1) and (onOff and (not V171_zz139)));
  V177_zz145 = (V176_zz144 or V171_zz139);
  V178_zz146 = (if V176_zz144 then V152_zz120 else V174_zz142);
  V179_zz147 = (if V176_zz144 then V150_zz118 else V178_zz146);
  V180_zz148 = (if V176_zz144 then V151_zz119 else V175_zz143);
  V181_zz149 = (if ((not V177_zz145) and ((V179_zz147 >= 2) and (V179_zz147 <= 
  8))) then V142_zz110 else V179_zz147);
  V182_zz150 = (if ((not V177_zz145) and ((V179_zz147 >= 2) and (V179_zz147 <= 
  8))) then V143_zz111 else V180_zz148);
  V183_zz151 = (if ((not V177_zz145) and ((V179_zz147 >= 2) and (V179_zz147 <= 
  8))) then V144_zz112 else V173_zz141);
  V184_zz152 = ((V185_zz153 = 1) or ((V185_zz153 >= 2) and (V185_zz153 <= 8)));
  V185_zz153 = (if (not (V188_zz156 = 1)) then 1 else V188_zz156);
  V186_zz154 = (if (not (V188_zz156 = 1)) then 1 else V189_zz157);
  V187_zz155 = (true -> (if (pre true) then false else (pre V187_zz155)));
  V188_zz156 = (0 -> (pre V193_zz161));
  V189_zz157 = (0 -> (pre V11_mode));
  V190_zz158 = (false -> (pre V194_zz162));
  V193_zz161 = (if V187_zz155 then V185_zz153 else V181_zz149);
  V194_zz162 = (if V187_zz155 then V190_zz158 else V183_zz151);
  V198_zz166 = (if (0 >= V200_zz168) then 0 else V200_zz168);
  V199_zz167 = (V201_zz169 + 1);
  V200_zz168 = (if accelResume then V199_zz167 else 0);
  V201_zz169 = (0 -> (pre V202_zz170));
  V202_zz170 = (if (V198_zz166 <= 20) then V198_zz166 else 20);
  V203_zz171 = (V202_zz170 = 20);
  V204_zz172 = (if (0 >= V206_zz174) then 0 else V206_zz174);
  V205_zz173 = (V207_zz175 + 1);
  V206_zz174 = (if decelSet then V205_zz173 else 0);
  V207_zz175 = (0 -> (pre V208_zz176));
  V208_zz176 = (if (V204_zz172 <= 20) then V204_zz172 else 20);
  V209_zz177 = (V208_zz176 = 20);
  V211_zz179 = (true -> (pre accelResume));
  V212_zz180 = ((not V211_zz179) and accelResume);
  V213_zz181 = (carGear = 3);
  V214_zz182 = (carSpeed >= 1.500000E+01);
  V216_zz184 = (true -> (pre decelSet));
  V217_zz185 = ((not V216_zz184) and decelSet);
  V218_zz186 = (((((not cancel) and (not brakePedal)) and V213_zz181) and 
  V214_zz182) and validInputs);
  V219_zz187 = (V236_zz204 = 0.000000E+00);
  V220_zz188 = (V222_zz190 <> 1.000000E+02);
  V221_zz189 = (false -> (pre V249_zz217));
  V222_zz190 = (if (V253_zz221 < 0.000000E+00) then 0.000000E+00 else (if (
  V253_zz221 > 1.000000E+02) then 1.000000E+02 else V253_zz221));
  V223_zz191 = (V221_zz189 and V220_zz188);
  V224_zz192 = (V243_zz211 > V222_zz190);
  V225_zz193 = (V222_zz190 <> 0.000000E+00);
  V226_zz194 = (V222_zz190 >= 1.500000E+01);
  V227_zz195 = (V222_zz190 = 0.000000E+00);
  V228_zz196 = (V11_mode = 2);
  V229_zz197 = (V11_mode = 1);
  V230_zz198 = (V229_zz197 or V228_zz196);
  V231_zz199 = ((if (V194_zz162 = false) then 0.000000E+00 else 1.000000E+00) = 
  1.000000E+00);
  V232_zz200 = (V255_zz223 = 0.000000E+00);
  V233_zz201 = ((V241_zz209 or V248_zz216) or V249_zz217);
  V234_zz202 = (V11_mode = 3);
  V235_zz203 = (V233_zz201 or V234_zz202);
  V236_zz204 = (if V233_zz201 then V258_zz226 else 0.000000E+00);
  V237_zz205 = (0.000000E+00 -> (pre V236_zz204));
  V238_zz206 = (V237_zz205 = V236_zz204);
  V239_zz207 = (V243_zz211 <= V222_zz190);
  V240_zz208 = (V243_zz211 >= V222_zz190);
  V241_zz209 = (V11_mode = 4);
  V242_zz210 = (false -> (pre V241_zz209));
  V243_zz211 = (0.000000E+00 -> (pre V222_zz190));
  V244_zz212 = (V243_zz211 = V222_zz190);
  V245_zz213 = (false -> (pre V248_zz216));
  V246_zz214 = (V245_zz213 and V225_zz193);
  V247_zz215 = (V243_zz211 < V222_zz190);
  V248_zz216 = (V11_mode = 5);
  V249_zz217 = (V11_mode = 6);
  V250_zz218 = (if V248_zz216 then V37_zz5 else V252_zz220);
  V251_zz219 = (if V234_zz202 then V254_zz222 else 0.000000E+00);
  V252_zz220 = (if V241_zz209 then V254_zz222 else V251_zz219);
  V253_zz221 = (if V194_zz162 then carSpeed else V255_zz223);
  V254_zz222 = (0.000000E+00 -> (pre V222_zz190));
  V255_zz223 = (if V249_zz217 then V34_zz2 else V250_zz218);
  V256_zz224 = (0.000000E+00 -> (pre V236_zz204));
  V257_zz225 = (V262_zz230 + V256_zz224);
  V258_zz226 = (if (V257_zz225 < 0.000000E+00) then 0.000000E+00 else (if (
  V257_zz225 > 1.000000E+02) then 1.000000E+02 else V257_zz225));
  V259_zz227 = (V222_zz190 - carSpeed);
  V260_zz228 = (V259_zz227 * 1.000000E+00);
  V261_zz229 = (if (V260_zz228 < -1.000000E+01) then -1.000000E+01 else (if (
  V260_zz228 > 1.000000E+01) then 1.000000E+01 else V260_zz228));
  V262_zz230 = (V261_zz229 / 2.000000E+01);
  V263_zz231 = (V236_zz204 <= 1.000000E+02);
  V264_zz232 = (V236_zz204 >= 0.000000E+00);
  V265_zz233 = (V222_zz190 <= 1.000000E+02);
  V266_zz234 = (V222_zz190 >= 0.000000E+00);
  V267_zz235 = (V222_zz190 < 0.000000E+00);
  V268_zz236 = (V222_zz190 > 0.000000E+00);
  V269_zz237 = (V268_zz236 and V267_zz235);
  V270_zz238 = (V222_zz190 = V243_zz211);
  V271_zz239 = (V222_zz190 = carSpeed);
   --%PROPERTY       OK;


tel.

