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
  V18_VRP4: bool;
  V19_SP4: bool;
  V20_SP5: bool;
  V21_SP6: bool;
  V22_SP7: bool;
  V23_SP3b: bool;
  V25_SP3: bool;
  V26_SP3a: bool;
  V27_SP2: bool;
  V28_SP1: bool;
  V29_SP8: bool;
  V30_SP9: bool;
  V31_SP10: bool;
  V32_SP11: bool;
  V34_zz1: bool;
  V35_zz2: real;
  V37_zz4: bool;
  V38_zz5: real;
  V39_zz6: int;
  V40_zz7: int;
  V41_zz8: int;
  V42_zz9: int;
  V43_zz10: int;
  V44_zz11: int;
  V45_zz12: int;
  V46_zz13: int;
  V47_zz14: int;
  V48_zz15: bool;
  V49_zz16: int;
  V50_zz17: int;
  V51_zz18: int;
  V52_zz19: bool;
  V53_zz20: int;
  V54_zz21: int;
  V55_zz22: int;
  V56_zz23: bool;
  V57_zz24: bool;
  V58_zz25: int;
  V59_zz26: bool;
  V60_zz27: bool;
  V61_zz28: int;
  V62_zz29: int;
  V63_zz30: bool;
  V64_zz31: bool;
  V65_zz32: int;
  V66_zz33: bool;
  V67_zz34: int;
  V68_zz35: int;
  V69_zz36: bool;
  V70_zz37: bool;
  V71_zz38: int;
  V72_zz39: bool;
  V73_zz40: int;
  V74_zz41: int;
  V75_zz42: bool;
  V76_zz43: bool;
  V77_zz44: int;
  V78_zz45: int;
  V79_zz46: int;
  V80_zz47: bool;
  V81_zz48: bool;
  V82_zz49: int;
  V83_zz50: int;
  V84_zz51: int;
  V85_zz52: bool;
  V86_zz53: int;
  V87_zz54: int;
  V88_zz55: int;
  V89_zz56: bool;
  V90_zz57: bool;
  V91_zz58: int;
  V92_zz59: int;
  V93_zz60: int;
  V94_zz61: int;
  V95_zz62: int;
  V96_zz63: int;
  V97_zz64: bool;
  V98_zz65: bool;
  V99_zz66: int;
  V100_zz67: int;
  V101_zz68: int;
  V102_zz69: int;
  V103_zz70: int;
  V104_zz71: int;
  V105_zz72: bool;
  V106_zz73: bool;
  V107_zz74: int;
  V108_zz75: int;
  V109_zz76: int;
  V110_zz77: int;
  V111_zz78: int;
  V112_zz79: int;
  V113_zz80: int;
  V114_zz81: int;
  V115_zz82: bool;
  V116_zz83: int;
  V117_zz84: int;
  V118_zz85: int;
  V119_zz86: int;
  V120_zz87: bool;
  V121_zz88: bool;
  V122_zz89: int;
  V123_zz90: bool;
  V124_zz91: int;
  V125_zz92: int;
  V126_zz93: bool;
  V127_zz94: bool;
  V128_zz95: int;
  V129_zz96: bool;
  V130_zz97: int;
  V131_zz98: int;
  V132_zz99: bool;
  V133_zz100: bool;
  V134_zz101: int;
  V135_zz102: int;
  V136_zz103: int;
  V137_zz104: bool;
  V138_zz105: bool;
  V139_zz106: int;
  V140_zz107: bool;
  V141_zz108: int;
  V142_zz109: int;
  V143_zz110: int;
  V144_zz111: int;
  V145_zz112: bool;
  V146_zz113: int;
  V147_zz114: int;
  V148_zz115: int;
  V149_zz116: bool;
  V150_zz117: bool;
  V151_zz118: int;
  V152_zz119: int;
  V153_zz120: int;
  V154_zz121: int;
  V155_zz122: int;
  V156_zz123: int;
  V157_zz124: int;
  V158_zz125: int;
  V159_zz126: int;
  V160_zz127: int;
  V161_zz128: bool;
  V162_zz129: int;
  V163_zz130: int;
  V164_zz131: int;
  V165_zz132: int;
  V166_zz133: bool;
  V167_zz134: int;
  V168_zz135: int;
  V169_zz136: int;
  V170_zz137: int;
  V171_zz138: bool;
  V172_zz139: bool;
  V173_zz140: int;
  V174_zz141: bool;
  V175_zz142: int;
  V176_zz143: int;
  V177_zz144: bool;
  V178_zz145: bool;
  V179_zz146: int;
  V180_zz147: int;
  V181_zz148: int;
  V182_zz149: int;
  V183_zz150: int;
  V184_zz151: bool;
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
  OK = ((V185_zz153 = 1) or ((V185_zz153 >= 2) and (V185_zz153 <= 8)));
  V11_mode = (if V187_zz155 then V186_zz154 else V183_zz150);
  V14_VRP1 = (V264_zz232 and V263_zz231);
  V15_VRP2 = (V266_zz234 and V265_zz233);
  V16_CP8a = ((not V194_zz162) or V233_zz201);
  V17_VRP3 = (not V269_zz237);
  V18_VRP4 = ((V270_zz238 or V227_zz195) or V271_zz239);
  V19_SP4 = ((not V235_zz203) or V226_zz194);
  V20_SP5 = ((not V241_zz209) or V238_zz206);
  V21_SP6 = ((not V248_zz216) or V239_zz207);
  V22_SP7 = ((not V249_zz217) or V240_zz208);
  V23_SP3b = ((not V230_zz198) or V232_zz200);
  V25_SP3 = ((not V230_zz198) or V227_zz195);
  V26_SP3a = ((not (not V241_zz209)) or (not V231_zz199));
  V27_SP2 = ((not (not V233_zz201)) or V219_zz187);
  V28_SP1 = ((not (not V218_zz186)) or V219_zz187);
  V29_SP8 = ((not V242_zz210) or V244_zz212);
  V30_SP9 = ((not V246_zz214) or V247_zz215);
  V31_SP10 = ((not V223_zz191) or V224_zz192);
  V32_SP11 = ((not V225_zz193) or V226_zz194);
  V34_zz1 = (true -> (if (pre V249_zz217) then false else (pre V34_zz1)));
  V35_zz2 = ((if (V34_zz1 and (not V249_zz217)) then 0.000000E+00 else (
  V254_zz222 + 5.000000E-02)) -> (if (V34_zz1 and (not V249_zz217)) then 
  0.000000E+00 else (if V249_zz217 then (V254_zz222 + 5.000000E-02) else (pre 
  V35_zz2))));
  V37_zz4 = (true -> (if (pre V248_zz216) then false else (pre V37_zz4)));
  V38_zz5 = ((if (V37_zz4 and (not V248_zz216)) then 0.000000E+00 else (
  V254_zz222 - 5.000000E-02)) -> (if (V37_zz4 and (not V248_zz216)) then 
  0.000000E+00 else (if V248_zz216 then (V254_zz222 - 5.000000E-02) else (pre 
  V38_zz5))));
  V39_zz6 = (if (not (V82_zz49 = 4)) then 4 else V82_zz49);
  V40_zz7 = (if (not (V82_zz49 = 4)) then 4 else V79_zz46);
  V41_zz8 = (if (V78_zz45 = 5) then 3 else V78_zz45);
  V42_zz9 = (if (not (V77_zz44 = 4)) then 4 else V77_zz44);
  V43_zz10 = (if (not (V77_zz44 = 4)) then 4 else V74_zz41);
  V44_zz11 = (if (V73_zz40 = 6) then 3 else V73_zz40);
  V45_zz12 = (if (not (V71_zz38 = 6)) then 6 else V71_zz38);
  V46_zz13 = (if (not (V71_zz38 = 6)) then 5 else V68_zz35);
  V47_zz14 = (if (V67_zz34 = 4) then 3 else V67_zz34);
  V48_zz15 = (if (V67_zz34 = 4) then false else V66_zz33);
  V49_zz16 = (if (not (V65_zz32 = 5)) then 5 else V65_zz32);
  V50_zz17 = (if (not (V65_zz32 = 5)) then 6 else V62_zz29);
  V51_zz18 = (if (V61_zz28 = 4) then 3 else V61_zz28);
  V52_zz19 = (if (V61_zz28 = 4) then false else V60_zz27);
  V53_zz20 = (if (not (V58_zz25 = 4)) then 4 else V58_zz25);
  V54_zz21 = (if (not (V58_zz25 = 4)) then 4 else V142_zz109);
  V55_zz22 = (if (V141_zz108 = 4) then 3 else V141_zz108);
  V56_zz23 = (if (V141_zz108 = 4) then false else V140_zz107);
  V57_zz24 = ((V141_zz108 = 4) and ((if ((V217_zz185 = true) = false) then 0 
  else 1) <> 0));
  V58_zz25 = (if V57_zz24 then V55_zz22 else V141_zz108);
  V59_zz26 = (if V57_zz24 then V56_zz23 else V140_zz107);
  V60_zz27 = (if V57_zz24 then true else V59_zz26);
  V61_zz28 = (if V57_zz24 then V53_zz20 else V58_zz25);
  V62_zz29 = (if V57_zz24 then V54_zz21 else V142_zz109);
  V63_zz30 = ((V61_zz28 = 4) and (((if ((V203_zz171 = true) = false) then 0 
  else 1) <> 0) and (not V57_zz24)));
  V64_zz31 = (V63_zz30 or V57_zz24);
  V65_zz32 = (if V63_zz30 then V51_zz18 else V61_zz28);
  V66_zz33 = (if V63_zz30 then V52_zz19 else V60_zz27);
  V67_zz34 = (if V63_zz30 then V49_zz16 else V65_zz32);
  V68_zz35 = (if V63_zz30 then V50_zz17 else V62_zz29);
  V69_zz36 = ((V67_zz34 = 4) and (((if ((V209_zz177 = true) = false) then 0 
  else 1) <> 0) and (not V64_zz31)));
  V70_zz37 = (V69_zz36 or V64_zz31);
  V71_zz38 = (if V69_zz36 then V47_zz14 else V67_zz34);
  V72_zz39 = (if V69_zz36 then V48_zz15 else V66_zz33);
  V73_zz40 = (if V69_zz36 then V45_zz12 else V71_zz38);
  V74_zz41 = (if V69_zz36 then V46_zz13 else V68_zz35);
  V75_zz42 = ((V73_zz40 = 6) and (((if ((V209_zz177 = false) = false) then 0 
  else 1) <> 0) and (not V70_zz37)));
  V76_zz43 = (V75_zz42 or V70_zz37);
  V77_zz44 = (if V75_zz42 then V44_zz11 else V73_zz40);
  V78_zz45 = (if V75_zz42 then V42_zz9 else V77_zz44);
  V79_zz46 = (if V75_zz42 then V43_zz10 else V74_zz41);
  V80_zz47 = ((V78_zz45 = 5) and (((if ((V203_zz171 = false) = false) then 0 
  else 1) <> 0) and (not V76_zz43)));
  V81_zz48 = (V80_zz47 or V76_zz43);
  V82_zz49 = (if V80_zz47 then V41_zz8 else V78_zz45);
  V83_zz50 = (if V80_zz47 then V39_zz6 else V82_zz49);
  V84_zz51 = (if V80_zz47 then V40_zz7 else V79_zz46);
  V85_zz52 = (if ((not V81_zz48) and (V83_zz50 = 4)) then false else V72_zz39);
  V86_zz53 = (if (not (V88_zz55 = 4)) then 4 else V88_zz55);
  V87_zz54 = (if (not (V88_zz55 = 4)) then 4 else V136_zz103);
  V88_zz55 = (if (not ((V139_zz106 >= 3) and (V139_zz106 <= 6))) then 3 else 
  V139_zz106);
  V89_zz56 = ((not ((V139_zz106 >= 3) and (V139_zz106 <= 6))) and ((V88_zz55 >= 
  3) and (V88_zz55 <= 6)));
  V90_zz57 = ((V91_zz58 = 4) or ((V91_zz58 = 5) or (V91_zz58 = 6)));
  V91_zz58 = (if V89_zz56 then V86_zz53 else V88_zz55);
  V92_zz59 = (if V89_zz56 then V87_zz54 else V136_zz103);
  V93_zz60 = (if (V135_zz102 = 7) then 2 else V135_zz102);
  V94_zz61 = (if (not (V96_zz63 = 4)) then 4 else V96_zz63);
  V95_zz62 = (if (not (V96_zz63 = 4)) then 4 else V131_zz98);
  V96_zz63 = (if (not ((V134_zz101 >= 3) and (V134_zz101 <= 6))) then 3 else 
  V134_zz101);
  V97_zz64 = ((not ((V134_zz101 >= 3) and (V134_zz101 <= 6))) and ((V96_zz63 >= 
  3) and (V96_zz63 <= 6)));
  V98_zz65 = ((V99_zz66 = 4) or ((V99_zz66 = 5) or (V99_zz66 = 6)));
  V99_zz66 = (if V97_zz64 then V94_zz61 else V96_zz63);
  V100_zz67 = (if V97_zz64 then V95_zz62 else V131_zz98);
  V101_zz68 = (if (V130_zz97 = 8) then 2 else V130_zz97);
  V102_zz69 = (if (not (V104_zz71 = 4)) then 4 else V104_zz71);
  V103_zz70 = (if (not (V104_zz71 = 4)) then 4 else V125_zz92);
  V104_zz71 = (if (not ((V128_zz95 >= 3) and (V128_zz95 <= 6))) then 3 else 
  V128_zz95);
  V105_zz72 = ((not ((V128_zz95 >= 3) and (V128_zz95 <= 6))) and ((V104_zz71 >= 
  3) and (V104_zz71 <= 6)));
  V106_zz73 = ((V107_zz74 = 4) or ((V107_zz74 = 5) or (V107_zz74 = 6)));
  V107_zz74 = (if V105_zz72 then V102_zz69 else V104_zz71);
  V108_zz75 = (if V105_zz72 then V103_zz70 else V125_zz92);
  V109_zz76 = (if (V124_zz91 = 8) then 2 else V124_zz91);
  V110_zz77 = (if (not (V122_zz89 = 8)) then 8 else V122_zz89);
  V111_zz78 = (if (not (V122_zz89 = 8)) then 3 else V181_zz148);
  V112_zz79 = (if (V117_zz84 = 6) then 3 else V117_zz84);
  V113_zz80 = (if (V116_zz83 = 5) then 3 else V116_zz83);
  V114_zz81 = (if (V180_zz147 = 4) then 3 else V180_zz147);
  V115_zz82 = (if (V180_zz147 = 4) then false else V174_zz141);
  V116_zz83 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else 
  V180_zz147);
  V117_zz84 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V113_zz80 else 
  V116_zz83);
  V118_zz85 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V112_zz79 else 
  V117_zz84);
  V119_zz86 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then 2 else 
  V118_zz85);
  V120_zz87 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V115_zz82 else 
  V174_zz141);
  V121_zz88 = (((V180_zz147 >= 3) and (V180_zz147 <= 6)) and (not V218_zz186));
  V122_zz89 = (if V121_zz88 then V119_zz86 else V180_zz147);
  V123_zz90 = (if V121_zz88 then V120_zz87 else V174_zz141);
  V124_zz91 = (if V121_zz88 then V110_zz77 else V122_zz89);
  V125_zz92 = (if V121_zz88 then V111_zz78 else V181_zz148);
  V126_zz93 = ((V124_zz91 = 8) and ((((if ((V217_zz185 = true) = false) then 0 
  else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V121_zz88)));
  V127_zz94 = (V126_zz93 or V121_zz88);
  V128_zz95 = (if V126_zz93 then V109_zz76 else V124_zz91);
  V129_zz96 = (if V126_zz93 then true else V123_zz90);
  V130_zz97 = (if V126_zz93 then V107_zz74 else V128_zz95);
  V131_zz98 = (if V126_zz93 then V108_zz75 else V125_zz92);
  V132_zz99 = ((V130_zz97 = 8) and ((((if ((V212_zz180 = true) = false) then 0 
  else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V127_zz94)));
  V133_zz100 = (V132_zz99 or V127_zz94);
  V134_zz101 = (if V132_zz99 then V101_zz68 else V130_zz97);
  V135_zz102 = (if V132_zz99 then V99_zz66 else V134_zz101);
  V136_zz103 = (if V132_zz99 then V100_zz67 else V131_zz98);
  V137_zz104 = ((V135_zz102 = 7) and ((((if ((V217_zz185 = true) = false) then 
  0 else 1) <> 0) and ((if ((V218_zz186 = true) = false) then 0 else 1) <> 0)) 
  and (not V133_zz100)));
  V138_zz105 = (V137_zz104 or V133_zz100);
  V139_zz106 = (if V137_zz104 then V93_zz60 else V135_zz102);
  V140_zz107 = (if V137_zz104 then true else V129_zz96);
  V141_zz108 = (if V137_zz104 then V91_zz58 else V139_zz106);
  V142_zz109 = (if V137_zz104 then V92_zz59 else V136_zz103);
  V143_zz110 = (if ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 
  6))) then V83_zz50 else V141_zz108);
  V144_zz111 = (if ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 
  6))) then V84_zz51 else V142_zz109);
  V145_zz112 = (if ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 
  6))) then V85_zz52 else V140_zz107);
  V146_zz113 = (if (not (V148_zz115 = 7)) then 7 else V148_zz115);
  V147_zz114 = (if (not (V148_zz115 = 7)) then 2 else V176_zz143);
  V148_zz115 = (if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else 
  V179_zz146);
  V149_zz116 = ((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((
  V148_zz115 >= 2) and (V148_zz115 <= 8)));
  V150_zz117 = (((V151_zz118 >= 3) and (V151_zz118 <= 6)) or ((V151_zz118 = 7) 
  or (V151_zz118 = 8)));
  V151_zz118 = (if V149_zz116 then V146_zz113 else V148_zz115);
  V152_zz119 = (if V149_zz116 then V147_zz114 else V176_zz143);
  V153_zz120 = (if (V175_zz142 = 1) then 0 else V175_zz142);
  V154_zz121 = (if (not (V173_zz140 = 1)) then 1 else V173_zz140);
  V155_zz122 = (if (not (V173_zz140 = 1)) then 1 else V189_zz157);
  V156_zz123 = (if (V168_zz135 = 8) then 2 else V168_zz135);
  V157_zz124 = (if (V167_zz134 = 7) then 2 else V167_zz134);
  V158_zz125 = (if (V163_zz130 = 6) then 3 else V163_zz130);
  V159_zz126 = (if (V162_zz129 = 5) then 3 else V162_zz129);
  V160_zz127 = (if (V188_zz156 = 4) then 3 else V188_zz156);
  V161_zz128 = (if (V188_zz156 = 4) then false else V190_zz158);
  V162_zz129 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V160_zz127 
  else V188_zz156);
  V163_zz130 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 
  else V162_zz129);
  V164_zz131 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 
  else V163_zz130);
  V165_zz132 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then 2 else 
  V164_zz131);
  V166_zz133 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V161_zz128 
  else V190_zz158);
  V167_zz134 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 
  else V188_zz156);
  V168_zz135 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 
  else V167_zz134);
  V169_zz136 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V156_zz123 
  else V168_zz135);
  V170_zz137 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else 
  V169_zz136);
  V171_zz138 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V166_zz133 
  else V190_zz158);
  V172_zz139 = (((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff));
  V173_zz140 = (if V172_zz139 then V170_zz137 else V188_zz156);
  V174_zz141 = (if V172_zz139 then V171_zz138 else V190_zz158);
  V175_zz142 = (if V172_zz139 then V154_zz121 else V173_zz140);
  V176_zz143 = (if V172_zz139 then V155_zz122 else V189_zz157);
  V177_zz144 = ((V175_zz142 = 1) and (onOff and (not V172_zz139)));
  V178_zz145 = (V177_zz144 or V172_zz139);
  V179_zz146 = (if V177_zz144 then V153_zz120 else V175_zz142);
  V180_zz147 = (if V177_zz144 then V151_zz118 else V179_zz146);
  V181_zz148 = (if V177_zz144 then V152_zz119 else V176_zz143);
  V182_zz149 = (if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 
  8))) then V143_zz110 else V180_zz147);
  V183_zz150 = (if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 
  8))) then V144_zz111 else V181_zz148);
  V184_zz151 = (if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 
  8))) then V145_zz112 else V174_zz141);
  V185_zz153 = (if (not (V188_zz156 = 1)) then 1 else V188_zz156);
  V186_zz154 = (if (not (V188_zz156 = 1)) then 1 else V189_zz157);
  V187_zz155 = (true -> (if (pre true) then false else (pre V187_zz155)));
  V188_zz156 = (0 -> (pre V193_zz161));
  V189_zz157 = (0 -> (pre V11_mode));
  V190_zz158 = (false -> (pre V194_zz162));
  V193_zz161 = (if V187_zz155 then V185_zz153 else V182_zz149);
  V194_zz162 = (if V187_zz155 then V190_zz158 else V184_zz151);
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
  V250_zz218 = (if V248_zz216 then V38_zz5 else V252_zz220);
  V251_zz219 = (if V234_zz202 then V254_zz222 else 0.000000E+00);
  V252_zz220 = (if V241_zz209 then V254_zz222 else V251_zz219);
  V253_zz221 = (if V194_zz162 then carSpeed else V255_zz223);
  V254_zz222 = (0.000000E+00 -> (pre V222_zz190));
  V255_zz223 = (if V249_zz217 then V35_zz2 else V250_zz218);
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
   --%PROPERTY OK;



-- 1506 implications. 
assert (true -> (((V148_zz115 <= 8) = ((V148_zz115 >= 2) and (V148_zz115 <= 8))) 
and (((V148_zz115 >= 2) and (V148_zz115 <= 8)) = (V88_zz55 >= 3)) 
and ((V88_zz55 >= 3) = (V148_zz115 >= 2)) 
and ((V148_zz115 >= 2) = (V180_zz147 <= 8)) 
and ((V180_zz147 <= 8) = (V185_zz153 = 1)) 
and ((V185_zz153 = 1) = ((V88_zz55 >= 3) and (V88_zz55 <= 6))) 
and (((V88_zz55 >= 3) and (V88_zz55 <= 6)) = ((V96_zz63 >= 3) and (V96_zz63 <= 6))) 
and (((V96_zz63 >= 3) and (V96_zz63 <= 6)) = true) 
and (true = (V185_zz153 <= 8)) 
and ((V185_zz153 <= 8) = (V96_zz63 >= 3)) 
and ((V96_zz63 >= 3) = ((V185_zz153 = 1) or ((V185_zz153 >= 2) and (V185_zz153 <= 8)))) 
and (((V185_zz153 = 1) or ((V185_zz153 >= 2) and (V185_zz153 <= 8))) = (V179_zz146 <= 8)) 
and ((V179_zz146 <= 8) = (V96_zz63 <= 6)) 
and ((V96_zz63 <= 6) = ((V104_zz71 >= 3) and (V104_zz71 <= 6))) 
and (((V104_zz71 >= 3) and (V104_zz71 <= 6)) = (V88_zz55 <= 6)) 
and ((V88_zz55 <= 6) = (V104_zz71 >= 3)) 
and ((V104_zz71 >= 3) = (V104_zz71 <= 6)) 
and ((V104_zz71 <= 6) = (V188_zz156 <= 8)) 
and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) = ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) 
and (((if ((V209_zz177 = true) = false) then 0 else 1) = 0) = (not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0))) 
and (V105_zz72 = (not ((V128_zz95 >= 3) and (V128_zz95 <= 6)))) 
and ((not ((V128_zz95 >= 3) and (V128_zz95 <= 6))) = ((not ((V128_zz95 >= 3) and (V128_zz95 <= 6))) and ((V104_zz71 >= 3) and (V104_zz71 <= 6)))) 
and (V97_zz64 = ((not ((V134_zz101 >= 3) and (V134_zz101 <= 6))) and ((V96_zz63 >= 3) and (V96_zz63 <= 6)))) 
and (((not ((V134_zz101 >= 3) and (V134_zz101 <= 6))) and ((V96_zz63 >= 3) and (V96_zz63 <= 6))) = (not ((V134_zz101 >= 3) and (V134_zz101 <= 6)))) 
and (V89_zz56 = (not ((V139_zz106 >= 3) and (V139_zz106 <= 6)))) 
and ((not ((V139_zz106 >= 3) and (V139_zz106 <= 6))) = ((not ((V139_zz106 >= 3) and (V139_zz106 <= 6))) and ((V88_zz55 >= 3) and (V88_zz55 <= 6)))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) = V149_zz116) 
and (V149_zz116 = (not ((V179_zz146 >= 2) and (V179_zz146 <= 8)))) 
and ((V188_zz156 = 1) = (V173_zz140 = 1)) 
and ((V141_zz108 <= 6) = (V139_zz106 <= 6)) 
and (V214_zz182 = (carSpeed >= 15)) 
and ((carGear = 3) = V213_zz181) 
and ((((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs) = (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) 
and ((not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)) = V218_zz186) 
and (V217_zz185 = ((not V216_zz184) and decelSet)) 
and (((not V216_zz184) and decelSet) = (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) = (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) 
and (((if ((V218_zz186 = true) = false) then 0 else 1) = 0) = (not V218_zz186)) 
and (V178_zz145 = (V177_zz144 or V172_zz139)) 
and ((onOff and (not V172_zz139)) = onOff) 
and ((V141_zz108 >= 3) = ((V180_zz147 >= 2) and (V180_zz147 <= 8))) 
and (((V180_zz147 >= 2) and (V180_zz147 <= 8)) = (V180_zz147 >= 2)) 
and ((V180_zz147 >= 2) = (V180_zz147 >= 3)) 
and (((V175_zz142 = 1) and (onOff and (not V172_zz139))) = V177_zz144) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) = V212_zz180) 
and (V212_zz180 = ((not V211_zz179) and accelResume)) 
and (V138_zz105 = (V137_zz104 or V133_zz100)) 
and ((V61_zz28 = 4) = (V141_zz108 = 4)) 
and (V76_zz43 = (V75_zz42 or V70_zz37)) 
and (V70_zz37 = (V69_zz36 or V64_zz31)) 
and ((V63_zz30 or V57_zz24) = V64_zz31) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) = V57_zz24) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) = V137_zz104) 
and ((not (V173_zz140 = 1)) = (not (V188_zz156 = 1))) 
and ((V188_zz156 >= 3) = ((V188_zz156 >= 2) and (V188_zz156 <= 8))) 
and (((V188_zz156 >= 2) and (V188_zz156 <= 8)) = (V188_zz156 >= 2)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) = V172_zz139) 
and (((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) = ((V179_zz146 >= 2) and (V179_zz146 <= 8))) 
and (((V179_zz146 >= 2) and (V179_zz146 <= 8)) = (V179_zz146 >= 2)) 
and ((V132_zz99 or V127_zz94) = V133_zz100) 
and (V127_zz94 = (V126_zz93 or V121_zz88)) 
and (V121_zz88 = (((V180_zz147 >= 3) and (V180_zz147 <= 6)) and (not V218_zz186))) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) = ((V128_zz95 >= 3) and (V128_zz95 <= 6))) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) = V126_zz93) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) = V132_zz99) 
and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) = V209_zz177) 
and (V209_zz177 = ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) 
and (((if ((V209_zz177 = false) = false) then 0 else 1) = 0) = (V208_zz176 = 20)) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) = V69_zz36) 
and (((if ((V203_zz171 = false) = false) then 0 else 1) = 0) = V203_zz171) 
and (V203_zz171 = (V202_zz170 = 20)) 
and ((V202_zz170 = 20) = (not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0))) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) = V63_zz30) 
and (V75_zz42 = ((V73_zz40 = 6) and ((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37)))) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) = V80_zz47) 
and (false = ((V185_zz153 >= 2) and (V185_zz153 <= 8))) 
and (((V185_zz153 >= 2) and (V185_zz153 <= 8)) = (V185_zz153 >= 2)) 
and ((V185_zz153 >= 2) = (if true then false else (pre V187_zz155))) 
and (V75_zz42 => (V71_zz38 = 6)) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) => (V65_zz32 = 5)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V204_zz172 <= 20)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V78_zz45 = 5)) 
and ((V117_zz84 = 6) => (V163_zz130 = 6)) 
and ((V65_zz32 = 5) => (not V57_zz24)) 
and ((V65_zz32 = 5) => (not V64_zz31)) 
and ((V65_zz32 = 5) => (not V76_zz43)) 
and ((V65_zz32 = 5) => (not (V71_zz38 = 6))) 
and ((V65_zz32 = 5) => (not (V82_zz49 = 4))) 
and ((V65_zz32 = 5) => (V116_zz83 = 5)) 
and ((V65_zz32 = 5) => (not V70_zz37)) 
and ((V65_zz32 = 5) => (not cancel)) 
and ((V65_zz32 = 5) => (not (V122_zz89 = 8))) 
and ((V65_zz32 = 5) => (not V133_zz100)) 
and ((V65_zz32 = 5) => (V141_zz108 <= 6)) 
and ((V65_zz32 = 5) => (V188_zz156 >= 3)) 
and ((V116_zz83 = 5) => (not (V71_zz38 = 6))) 
and ((V116_zz83 = 5) => (V162_zz129 = 5)) 
and (((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31)) => (not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0))) 
and ((V71_zz38 = 6) => (V117_zz84 = 6)) 
and (V105_zz72 => (not (V65_zz32 = 5))) 
and (V105_zz72 => (not (V104_zz71 = 4))) 
and (V97_zz64 => (not (V96_zz63 = 4))) 
and (V89_zz56 => (not (V88_zz55 = 4))) 
and ((not V76_zz43) => (not V70_zz37)) 
and ((not (V82_zz49 = 4)) => (not (V77_zz44 = 4))) 
and ((V61_zz28 = 4) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and ((V77_zz44 = 4) => (V82_zz49 = 4)) 
and (V70_zz37 => V76_zz43) 
and ((V188_zz156 = 4) => ((V188_zz156 >= 3) and (V188_zz156 <= 6))) 
and ((V180_zz147 = 4) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V88_zz55 = 4) => ((V139_zz106 >= 3) and (V139_zz106 <= 6))) 
and ((V96_zz63 = 4) => ((V134_zz101 >= 3) and (V134_zz101 <= 6))) 
and ((V104_zz71 = 4) => ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6)))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => V76_zz43) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (V198_zz166 <= 20)) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (V73_zz40 = 6)) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((V65_zz32 = 5) => (not V127_zz94)) 
and ((V65_zz32 = 5) => ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6)))) 
and ((V162_zz129 = 5) => (not V70_zz37)) 
and ((not V64_zz31) => (not V57_zz24)) 
and ((V67_zz34 = 4) => (V61_zz28 = 4)) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (V63_zz30 or V57_zz24)) 
and ((V71_zz38 = 6) => (not (V65_zz32 = 5))) 
and (V75_zz42 => (0 >= V206_zz174)) 
and ((V71_zz38 = 6) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and ((V163_zz130 = 6) => (not (V65_zz32 = 5))) 
and ((V163_zz130 = 6) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and ((V65_zz32 = 5) => (V78_zz45 = 5)) 
and ((V116_zz83 = 5) => (V180_zz147 <= 6)) 
and ((V116_zz83 = 5) => (V188_zz156 >= 3)) 
and ((V116_zz83 = 5) => (V188_zz156 <= 6)) 
and ((V116_zz83 = 5) => (not V57_zz24)) 
and ((V116_zz83 = 5) => (not (V82_zz49 = 4))) 
and ((V162_zz129 = 5) => (V180_zz147 <= 6)) 
and ((V162_zz129 = 5) => (V188_zz156 >= 3)) 
and ((V162_zz129 = 5) => (V188_zz156 <= 6)) 
and ((V162_zz129 = 5) => (not V57_zz24)) 
and ((V162_zz129 = 5) => (not (V71_zz38 = 6))) 
and ((V162_zz129 = 5) => (not (V82_zz49 = 4))) 
and ((V71_zz38 = 6) => (not cancel)) 
and ((V71_zz38 = 6) => ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6)))) 
and ((V163_zz130 = 6) => (V188_zz156 <= 6)) 
and ((V163_zz130 = 6) => (V180_zz147 <= 6)) 
and ((V117_zz84 = 6) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V163_zz130 = 6) => ((V188_zz156 >= 3) and (V188_zz156 <= 6))) 
and (((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43)) => (not V76_zz43)) 
and ((V116_zz83 = 5) => (not V64_zz31)) 
and ((V116_zz83 = 5) => (not V76_zz43)) 
and ((V162_zz129 = 5) => (not V64_zz31)) 
and ((V162_zz129 = 5) => (not V76_zz43)) 
and ((V163_zz130 = 6) => (not V70_zz37)) 
and ((V163_zz130 = 6) => (not (V77_zz44 = 4))) 
and ((V65_zz32 = 5) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V116_zz83 = 5) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V117_zz84 = 6) => (not (V65_zz32 = 5))) 
and ((V117_zz84 = 6) => (V128_zz95 >= 3)) 
and ((V117_zz84 = 6) => (V139_zz106 >= 3)) 
and ((V117_zz84 = 6) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and ((V163_zz130 = 6) => (V188_zz156 >= 3)) 
and ((V163_zz130 = 6) => (not (V148_zz115 = 7))) 
and ((V163_zz130 = 6) => (not V64_zz31)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (not (V65_zz32 = 5))) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and ((V78_zz45 = 5) => (not V57_zz24)) 
and ((V78_zz45 = 5) => (V128_zz95 >= 3)) 
and ((V78_zz45 = 5) => (V139_zz106 >= 3)) 
and ((V78_zz45 = 5) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V180_zz147 = 4)) 
and ((V78_zz45 = 5) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V78_zz45 = 5) => (V180_zz147 <= 6)) 
and ((V78_zz45 = 5) => (V188_zz156 >= 3)) 
and ((V78_zz45 = 5) => (V188_zz156 <= 6)) 
and ((V78_zz45 = 5) => (not (V148_zz115 = 7))) 
and ((V78_zz45 = 5) => (not (V71_zz38 = 6))) 
and ((V78_zz45 = 5) => (not (V82_zz49 = 4))) 
and ((V78_zz45 = 5) => (not (V122_zz89 = 8))) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) 
and ((V78_zz45 = 5) => (not (V77_zz44 = 4))) 
and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) => (V198_zz166 <= 20)) 
and ((V65_zz32 = 5) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and ((V116_zz83 = 5) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and ((V116_zz83 = 5) => (not V172_zz139)) 
and ((V116_zz83 = 5) => (V141_zz108 >= 3)) 
and ((V162_zz129 = 5) => (not (V122_zz89 = 8))) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V63_zz30 or V57_zz24)) 
and ((V78_zz45 = 5) => (V141_zz108 <= 6)) 
and ((V78_zz45 = 5) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and ((V78_zz45 = 5) => (V134_zz101 >= 3)) 
and ((V78_zz45 = 5) => (not cancel)) 
and (V75_zz42 => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((V65_zz32 = 5) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (V75_zz42 => (V82_zz49 = 4)) 
and ((V71_zz38 = 6) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and (((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24)) => ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) 
and (((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43)) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((not V70_zz37) => (not V64_zz31)) 
and ((V77_zz44 = 4) => (V67_zz34 = 4)) 
and ((V82_zz49 = 4) => (not (V65_zz32 = 5))) 
and ((V82_zz49 = 4) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (not (V65_zz32 = 5))) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (not (V71_zz38 = 6))) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => decelSet) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (V67_zz34 = 4)) 
and ((V63_zz30 or V57_zz24) => V70_zz37) 
and ((V65_zz32 = 5) => (V134_zz101 <= 6)) 
and ((V116_zz83 = 5) => (V128_zz95 >= 3)) 
and ((V71_zz38 = 6) => (not V127_zz94)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V58_zz25 = 4)) 
and ((V78_zz45 = 5) => (not V127_zz94)) 
and (V75_zz42 => V76_zz43) 
and ((V71_zz38 = 6) => (V73_zz40 = 6)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => V70_zz37) 
and (((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24)) => (not V57_zz24)) 
and (((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24)) => (not (V77_zz44 = 4))) 
and (((if ((V209_zz177 = true) = false) then 0 else 1) = 0) => (V204_zz172 <= 20)) 
and (((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37)) => (not V70_zz37)) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) => ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) 
and ((V73_zz40 = 6) => (not (V65_zz32 = 5))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (not (V65_zz32 = 5))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (not (V71_zz38 = 6))) 
and ((V73_zz40 = 6) => (not cancel)) 
and ((V73_zz40 = 6) => (V128_zz95 >= 3)) 
and ((V73_zz40 = 6) => (V139_zz106 >= 3)) 
and ((V73_zz40 = 6) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) 
and ((V73_zz40 = 6) => (not (V148_zz115 = 7))) 
and ((V73_zz40 = 6) => (not V64_zz31)) 
and ((V73_zz40 = 6) => (not (V77_zz44 = 4))) 
and ((V73_zz40 = 6) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and ((V73_zz40 = 6) => (V188_zz156 >= 3)) 
and ((V175_zz142 = 1) => ((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8)))) 
and ((pre accelResume) => V211_zz179) 
and ((V141_zz108 >= 3) => (onOff and (not V172_zz139))) 
and ((V188_zz156 >= 3) => (not (V173_zz140 = 1))) 
and (V75_zz42 => ((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37))) 
and ((V71_zz38 = 6) => (not V70_zz37)) 
and ((V65_zz32 = 5) => (not V172_zz139)) 
and ((V65_zz32 = 5) => (V188_zz156 <= 6)) 
and ((V65_zz32 = 5) => (not V138_zz105)) 
and ((V65_zz32 = 5) => (V180_zz147 <= 6)) 
and ((V65_zz32 = 5) => (V128_zz95 <= 6)) 
and ((V65_zz32 = 5) => V211_zz179) 
and ((V65_zz32 = 5) => (not (V173_zz140 = 1))) 
and ((V116_zz83 = 5) => V211_zz179) 
and ((V116_zz83 = 5) => (not (V173_zz140 = 1))) 
and ((V162_zz129 = 5) => (not (V88_zz55 = 4))) 
and ((V162_zz129 = 5) => (not (V148_zz115 = 7))) 
and ((V162_zz129 = 5) => V211_zz179) 
and ((V162_zz129 = 5) => (not (V173_zz140 = 1))) 
and ((V117_zz84 = 6) => (not V172_zz139)) 
and ((V71_zz38 = 6) => (not V138_zz105)) 
and ((V71_zz38 = 6) => (V141_zz108 <= 6)) 
and ((V71_zz38 = 6) => (V128_zz95 <= 6)) 
and ((V163_zz130 = 6) => (not (V173_zz140 = 1))) 
and ((V78_zz45 = 5) => (not V172_zz139)) 
and ((V78_zz45 = 5) => (not V138_zz105)) 
and ((V78_zz45 = 5) => (V128_zz95 <= 6)) 
and ((V78_zz45 = 5) => V211_zz179) 
and ((V78_zz45 = 5) => (not (V173_zz140 = 1))) 
and (((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24)) => V211_zz179) 
and (((if ((V203_zz171 = false) = false) then 0 else 1) = 0) => V211_zz179) 
and ((V73_zz40 = 6) => (not V172_zz139)) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (not (V82_zz49 = 4))) 
and ((V73_zz40 = 6) => (V141_zz108 <= 6)) 
and ((V73_zz40 = 6) => (not (V173_zz140 = 1))) 
and (((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31)) => (not V64_zz31)) 
and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) => (not V57_zz24)) 
and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) => (not (V82_zz49 = 4))) 
and ((V132_zz99 or V127_zz94) => (V124_zz91 = 8)) 
and (V89_zz56 => V97_zz64) 
and ((not (V88_zz55 = 4)) => (not (V96_zz63 = 4))) 
and ((not V133_zz100) => (not V127_zz94)) 
and ((V128_zz95 <= 6) => (V134_zz101 <= 6)) 
and ((V134_zz101 >= 3) => (V141_zz108 >= 3)) 
and (V127_zz94 => (V132_zz99 or V127_zz94)) 
and (V121_zz88 => (V132_zz99 or V127_zz94)) 
and (V121_zz88 => (not V76_zz43)) 
and (V121_zz88 => (V130_zz97 = 8)) 
and ((V96_zz63 = 4) => (V61_zz28 = 4)) 
and (((V134_zz101 >= 3) and (V134_zz101 <= 6)) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and ((V96_zz63 = 4) => (V88_zz55 = 4)) 
and (((V134_zz101 >= 3) and (V134_zz101 <= 6)) => ((V139_zz106 >= 3) and (V139_zz106 <= 6))) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (not V127_zz94)) 
and ((V104_zz71 = 4) => (not (V65_zz32 = 5))) 
and ((V104_zz71 = 4) => (not (V71_zz38 = 6))) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (V128_zz95 >= 3)) 
and ((V104_zz71 = 4) => (V61_zz28 = 4)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and ((V104_zz71 = 4) => (V88_zz55 = 4)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => ((V139_zz106 >= 3) and (V139_zz106 <= 6))) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (not (V65_zz32 = 5))) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (not (V71_zz38 = 6))) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V204_zz172 <= 20)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => V105_zz72) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (not V216_zz184)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V132_zz99 or V127_zz94)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V77_zz44 = 4)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V67_zz34 = 4)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V88_zz55 = 4)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (not cancel)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V122_zz89 = 8)) 
and (V187_zz155 => ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) 
and (V187_zz155 => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and (V187_zz155 => ((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37))) 
and (V187_zz155 => (not (V65_zz32 = 5))) 
and (V187_zz155 => (V198_zz166 <= 20)) 
and (V187_zz155 => (not V64_zz31)) 
and (V187_zz155 => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (V58_zz25 = 4)) 
and ((V73_zz40 = 6) => (not V127_zz94)) 
and ((V73_zz40 = 6) => ((V139_zz106 >= 3) and (V139_zz106 <= 6))) 
and (V187_zz155 => (not (V71_zz38 = 6))) 
and (V187_zz155 => (V204_zz172 <= 20)) 
and (V187_zz155 => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V128_zz95 <= 6)) 
and ((V122_zz89 = 8) => (not (V65_zz32 = 5))) 
and ((V122_zz89 = 8) => (not (V71_zz38 = 6))) 
and ((V122_zz89 = 8) => V105_zz72) 
and ((V122_zz89 = 8) => (V168_zz135 = 8)) 
and ((((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94)) => ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)))) 
and (V89_zz56 => V105_zz72) 
and ((not (V88_zz55 = 4)) => (not (V104_zz71 = 4))) 
and ((not (V88_zz55 = 4)) => (not (V58_zz25 = 4))) 
and (V97_zz64 => V105_zz72) 
and ((not (V96_zz63 = 4)) => (not (V104_zz71 = 4))) 
and ((not V127_zz94) => (not V121_zz88)) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => ((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)))) 
and ((V128_zz95 >= 3) => (V141_zz108 >= 3)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (not (V65_zz32 = 5))) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (not (V71_zz38 = 6))) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (V204_zz172 <= 20)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => V138_zz105) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => ((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)))) 
and (V121_zz88 => (not (V65_zz32 = 5))) 
and (V121_zz88 => (not (V71_zz38 = 6))) 
and (V121_zz88 => V127_zz94) 
and ((V130_zz97 = 8) => (V124_zz91 = 8)) 
and ((V104_zz71 = 4) => (V96_zz63 = 4)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => ((V134_zz101 >= 3) and (V134_zz101 <= 6))) 
and ((V58_zz25 = 4) => (V88_zz55 = 4)) 
and (((if ((V203_zz171 = false) = false) then 0 else 1) = 0) => (pre accelResume)) 
and (V187_zz155 => V211_zz179) 
and (V187_zz155 => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not (V65_zz32 = 5))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not (V71_zz38 = 6))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V198_zz166 <= 20)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((V116_zz83 = 5) => (not (V58_zz25 = 4))) 
and ((V116_zz83 = 5) => (V134_zz101 >= 3)) 
and ((V71_zz38 = 6) => ((V134_zz101 >= 3) and (V134_zz101 <= 6))) 
and ((V117_zz84 = 6) => (V134_zz101 >= 3)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V96_zz63 = 4)) 
and ((V78_zz45 = 5) => ((V134_zz101 >= 3) and (V134_zz101 <= 6))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => decelSet) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => (V67_zz34 = 4)) 
and ((V73_zz40 = 6) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and (((V67_zz34 = 4) and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) and (not V64_zz31))) => V70_zz37) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V132_zz99 or V127_zz94)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V67_zz34 = 4)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V88_zz55 = 4)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not cancel)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V122_zz89 = 8)) 
and (V89_zz56 => (not (V65_zz32 = 5))) 
and (V89_zz56 => (not (V71_zz38 = 6))) 
and (V97_zz64 => (not (V65_zz32 = 5))) 
and (V97_zz64 => (not (V71_zz38 = 6))) 
and (V105_zz72 => (not (V71_zz38 = 6))) 
and ((not (V77_zz44 = 4)) => (not V57_zz24)) 
and ((not onOff) => (not V76_zz43)) 
and ((not onOff) => (not V138_zz105)) 
and ((not onOff) => (V180_zz147 <= 6)) 
and ((not onOff) => (V128_zz95 <= 6)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (not (V122_zz89 = 8))) 
and ((V63_zz30 or V57_zz24) => (not (V65_zz32 = 5))) 
and ((V63_zz30 or V57_zz24) => (V204_zz172 <= 20)) 
and (V70_zz37 => (not (V65_zz32 = 5))) 
and (V70_zz37 => (not (V71_zz38 = 6))) 
and (V76_zz43 => (not (V65_zz32 = 5))) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (V134_zz101 >= 3)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (V128_zz95 >= 3)) 
and ((V63_zz30 or V57_zz24) => (V134_zz101 >= 3)) 
and (V76_zz43 => (V141_zz108 >= 3)) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (V77_zz44 = 4)) 
and ((V63_zz30 or V57_zz24) => (V61_zz28 = 4)) 
and (V70_zz37 => (V61_zz28 = 4)) 
and (V76_zz43 => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and (V121_zz88 => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V130_zz97 = 8) => (not (V65_zz32 = 5))) 
and ((V130_zz97 = 8) => (not (V71_zz38 = 6))) 
and ((V130_zz97 = 8) => (V128_zz95 >= 3)) 
and ((V130_zz97 = 8) => (V139_zz106 >= 3)) 
and ((V130_zz97 = 8) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (V127_zz94 => (V134_zz101 >= 3)) 
and ((V124_zz91 = 8) => (V139_zz106 >= 3)) 
and ((V124_zz91 = 8) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (V187_zz155 => (not (V122_zz89 = 8))) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) => (0 >= V200_zz168)) 
and ((V65_zz32 = 5) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and ((V116_zz83 = 5) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and ((V162_zz129 = 5) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and ((V78_zz45 = 5) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and (((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24)) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and (((if ((V203_zz171 = false) = false) then 0 else 1) = 0) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and ((V168_zz135 = 8) => (not (V65_zz32 = 5))) 
and ((V168_zz135 = 8) => (not (V71_zz38 = 6))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not V211_zz179)) 
and ((not ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and (V187_zz155 => (not V127_zz94)) 
and (((V61_zz28 = 4) and ((not ((if ((V203_zz171 = true) = false) then 0 else 1) = 0)) and (not V57_zz24))) => (V104_zz71 = 4)) 
and ((V78_zz45 = 5) => ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6)))) 
and (V187_zz155 => (not V138_zz105)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V58_zz25 = 4)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V96_zz63 = 4)) 
and ((V122_zz89 = 8) => (V139_zz106 >= 3)) 
and ((V122_zz89 = 8) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and ((V168_zz135 = 8) => (not (V148_zz115 = 7))) 
and (V121_zz88 => ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)) 
and ((V130_zz97 = 8) => V97_zz64) 
and (V127_zz94 => (not (V65_zz32 = 5))) 
and (V127_zz94 => (not (V71_zz38 = 6))) 
and (V127_zz94 => V105_zz72) 
and (V127_zz94 => (not (V58_zz25 = 4))) 
and ((V124_zz91 = 8) => (not (V65_zz32 = 5))) 
and ((V124_zz91 = 8) => (not (V71_zz38 = 6))) 
and ((V124_zz91 = 8) => V105_zz72) 
and ((V180_zz147 = 4) => (V188_zz156 = 4)) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => ((V188_zz156 >= 3) and (V188_zz156 <= 6))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => (not (V65_zz32 = 5))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => (not (V71_zz38 = 6))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => (not (V122_zz89 = 8))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => V89_zz56) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => (not (V148_zz115 = 7))) 
and ((V188_zz156 = 1) => (not (V65_zz32 = 5))) 
and ((V188_zz156 = 1) => (not (V71_zz38 = 6))) 
and ((V188_zz156 = 1) => (not (V122_zz89 = 8))) 
and ((V188_zz156 = 1) => V89_zz56) 
and ((V188_zz156 = 1) => (not V172_zz139)) 
and ((V188_zz156 = 1) => (V188_zz156 <= 6)) 
and ((not onOff) => V89_zz56) 
and ((not onOff) => V97_zz64) 
and ((not onOff) => (not (V65_zz32 = 5))) 
and ((not onOff) => (not V64_zz31)) 
and ((not onOff) => (not (V71_zz38 = 6))) 
and ((not onOff) => (not (V82_zz49 = 4))) 
and ((V134_zz101 <= 6) => (not (V148_zz115 = 7))) 
and ((V135_zz102 = 7) => (not (V65_zz32 = 5))) 
and ((V135_zz102 = 7) => (not (V71_zz38 = 6))) 
and ((V135_zz102 = 7) => (not (V122_zz89 = 8))) 
and ((V135_zz102 = 7) => (V134_zz101 >= 3)) 
and ((V135_zz102 = 7) => (V128_zz95 >= 3)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => V89_zz56) 
and ((V63_zz30 or V57_zz24) => (not (V71_zz38 = 6))) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => (not (V58_zz25 = 4))) 
and ((V82_zz49 = 4) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((V67_zz34 = 4) => (not (V65_zz32 = 5))) 
and ((V67_zz34 = 4) => (not (V71_zz38 = 6))) 
and ((V61_zz28 = 4) => (not (V65_zz32 = 5))) 
and ((V61_zz28 = 4) => (not (V71_zz38 = 6))) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (not cancel)) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (V141_zz108 >= 3)) 
and ((V167_zz134 = 7) => (not (V65_zz32 = 5))) 
and ((V167_zz134 = 7) => (not (V71_zz38 = 6))) 
and ((V167_zz134 = 7) => (not (V122_zz89 = 8))) 
and ((V167_zz134 = 7) => V89_zz56) 
and ((V167_zz134 = 7) => (V188_zz156 >= 3)) 
and ((V148_zz115 = 7) => (not (V65_zz32 = 5))) 
and ((V148_zz115 = 7) => (not (V71_zz38 = 6))) 
and ((V148_zz115 = 7) => (not (V122_zz89 = 8))) 
and ((V148_zz115 = 7) => (V134_zz101 >= 3)) 
and ((V148_zz115 = 7) => (V128_zz95 >= 3)) 
and ((V148_zz115 = 7) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (V187_zz155 => V89_zz56) 
and (V187_zz155 => V97_zz64) 
and (V187_zz155 => (not (V82_zz49 = 4))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => V97_zz64) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not V64_zz31)) 
and ((V168_zz135 = 8) => V105_zz72) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and ((V58_zz25 = 4) => (not (V65_zz32 = 5))) 
and ((V58_zz25 = 4) => (not (V71_zz38 = 6))) 
and ((V58_zz25 = 4) => (not V57_zz24)) 
and ((V58_zz25 = 4) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V130_zz97 = 8)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => V127_zz94) 
and ((V122_zz89 = 8) => (V124_zz91 = 8)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (not (V122_zz89 = 8))) 
and ((V88_zz55 = 4) => (not (V65_zz32 = 5))) 
and ((V88_zz55 = 4) => (not (V71_zz38 = 6))) 
and ((V104_zz71 = 4) => (V180_zz147 = 4)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => ((V180_zz147 >= 3) and (V180_zz147 <= 6))) 
and ((V58_zz25 = 4) => (V128_zz95 >= 3)) 
and ((V58_zz25 = 4) => (V139_zz106 >= 3)) 
and ((V58_zz25 = 4) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((V134_zz101 >= 3) and (V134_zz101 <= 6)) => (V134_zz101 >= 3)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (V139_zz106 >= 3)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8))) => (not V133_zz100)) 
and ((V188_zz156 = 1) => (not V133_zz100)) 
and ((V188_zz156 <= 6) => (not (V122_zz89 = 8))) 
and (((V175_zz142 = 1) and (onOff and (not V172_zz139))) => (V135_zz102 = 7)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not (V65_zz32 = 5))) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not (V71_zz38 = 6))) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not (V122_zz89 = 8))) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not V133_zz100)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (V141_zz108 <= 6)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => V89_zz56) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (V188_zz156 >= 3)) 
and (V187_zz155 => (not V133_zz100)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) 
and ((V122_zz89 = 8) => (not V121_zz88)) 
and ((V168_zz135 = 8) => (not V121_zz88)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => V214_zz182) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => ((not cancel) and (not brakePedal))) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (not V133_zz100)) 
and ((V58_zz25 = 4) => (not V127_zz94)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (not V121_zz88)) 
and (V121_zz88 => (not (V122_zz89 = 8))) 
and (V121_zz88 => V89_zz56) 
and ((V180_zz147 = 4) => (not (V65_zz32 = 5))) 
and ((V180_zz147 = 4) => (not (V71_zz38 = 6))) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => (not (V122_zz89 = 8))) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => (not V172_zz139)) 
and ((V188_zz156 = 4) => (not (V65_zz32 = 5))) 
and ((V188_zz156 = 4) => (not (V71_zz38 = 6))) 
and (((V188_zz156 >= 3) and (V188_zz156 <= 6)) => (not (V122_zz89 = 8))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not V127_zz94)) 
and ((V73_zz40 = 6) => (V141_zz108 >= 3)) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => V138_zz105) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => ((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)))) 
and ((V122_zz89 = 8) => (V141_zz108 >= 3)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (V134_zz101 >= 3)) 
and ((V88_zz55 = 4) => (V61_zz28 = 4)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => ((V141_zz108 >= 3) and (V141_zz108 <= 6))) 
and (V121_zz88 => (V134_zz101 >= 3)) 
and ((V132_zz99 or V127_zz94) => V138_zz105) 
and ((V124_zz91 = 8) => (V141_zz108 >= 3)) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => (V134_zz101 >= 3)) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => (V128_zz95 >= 3)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((V124_zz91 = 8) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V121_zz88))) => (V134_zz101 >= 3)) 
and ((V168_zz135 = 8) => (V188_zz156 >= 3)) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8)))) 
and (((V188_zz156 >= 3) and (V188_zz156 <= 6)) => (V188_zz156 >= 3)) 
and ((V188_zz156 = 1) => (V175_zz142 = 1)) 
and ((V188_zz156 <= 6) => (not (V148_zz115 = 7))) 
and (((V175_zz142 = 1) and (onOff and (not V172_zz139))) => V178_zz145) 
and ((V135_zz102 = 7) => V89_zz56) 
and ((V135_zz102 = 7) => (not V133_zz100)) 
and (V121_zz88 => V97_zz64) 
and (V121_zz88 => (not V64_zz31)) 
and (V121_zz88 => (not (V82_zz49 = 4))) 
and ((V130_zz97 = 8) => (not V64_zz31)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (((not cancel) and (not brakePedal)) and V213_zz181)) 
and (V187_zz155 => (not (V173_zz140 = 1))) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V188_zz156 >= 3)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (V188_zz156 >= 3)) 
and (V187_zz155 => (V141_zz108 <= 6)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V141_zz108 <= 6)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (not V138_zz105)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (V180_zz147 <= 6)) 
and ((V58_zz25 = 4) => (not (V148_zz115 = 7))) 
and (((V134_zz101 >= 3) and (V134_zz101 <= 6)) => (V128_zz95 <= 6)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (V134_zz101 <= 6)) 
and (((V188_zz156 >= 3) and (V188_zz156 <= 6)) => (V180_zz147 <= 6)) 
and ((V148_zz115 = 7) => (V167_zz134 = 7)) 
and (((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) => (V188_zz156 >= 3)) 
and ((pre V187_zz155) => (not (V65_zz32 = 5))) 
and ((pre V187_zz155) => (V198_zz166 <= 20)) 
and ((pre V187_zz155) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((pre V187_zz155) => (V188_zz156 = 1)) 
and ((((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs) => ((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182)) 
and ((((not cancel) and (not brakePedal)) and V213_zz181) => (carGear = 3)) 
and (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) => (((not cancel) and (not brakePedal)) and V213_zz181)) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => (not (V71_zz38 = 6))) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => (V204_zz172 <= 20)) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => (not (V122_zz89 = 8))) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => (not (V58_zz25 = 4))) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not (V71_zz38 = 6))) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (V204_zz172 <= 20)) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not (V58_zz25 = 4))) 
and ((((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100)) => (not V133_zz100)) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not V121_zz88)) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (V141_zz108 <= 6)) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => V217_zz185) 
and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (V217_zz185 => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and (V217_zz185 => (not (V71_zz38 = 6))) 
and (V217_zz185 => (V204_zz172 <= 20)) 
and (V217_zz185 => (not (V58_zz25 = 4))) 
and (V217_zz185 => (not V216_zz184)) 
and (V216_zz184 => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and (((not cancel) and (not brakePedal)) => (not cancel)) 
and (cancel => (not (V65_zz32 = 5))) 
and (cancel => (not (V71_zz38 = 6))) 
and (cancel => V89_zz56) 
and (((V78_zz45 = 5) and ((not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0)) and (not V76_zz43))) => (V198_zz166 <= 20)) 
and (((V188_zz156 >= 3) and (V188_zz156 <= 6)) => (V188_zz156 <= 6)) 
and ((V148_zz115 = 7) => V89_zz56) 
and ((V148_zz115 = 7) => (not V133_zz100)) 
and (((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) => (not V172_zz139)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (V175_zz142 = 1)) 
and ((V167_zz134 = 7) => (not V133_zz100)) 
and (V187_zz155 => ((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8)))) 
and (V187_zz155 => (not V172_zz139)) 
and (V187_zz155 => (V188_zz156 <= 6)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (not V172_zz139)) 
and ((V122_zz89 = 8) => (not V172_zz139)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (not V172_zz139)) 
and (((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) => (V188_zz156 <= 6)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (not (V148_zz115 = 7))) 
and ((V148_zz115 = 7) => (V135_zz102 = 7)) 
and (((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) => (V141_zz108 >= 3)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => V178_zz145) 
and ((not V216_zz184) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not V76_zz43)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => V97_zz64) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not V64_zz31)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not (V82_zz49 = 4))) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not V138_zz105)) 
and ((((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94)) => (not (V65_zz32 = 5))) 
and ((((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94)) => (V198_zz166 <= 20)) 
and ((((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94)) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not (V65_zz32 = 5))) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (V198_zz166 <= 20)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94)) => (not V127_zz94)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not V121_zz88)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not cancel)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V128_zz95 >= 3)) 
and (((V139_zz106 >= 3) and (V139_zz106 <= 6)) => (V141_zz108 >= 3)) 
and (((V180_zz147 >= 3) and (V180_zz147 <= 6)) => (V139_zz106 >= 3)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => validInputs) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => V214_zz182) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => ((not cancel) and (not brakePedal))) 
and ((not V138_zz105) => (not V133_zz100)) 
and (((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37)) => (V204_zz172 <= 20)) 
and (((not ((if ((V209_zz177 = false) = false) then 0 else 1) = 0)) and (not V70_zz37)) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((not V178_zz145) => (not V172_zz139)) 
and ((not onOff) => ((not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) and ((V148_zz115 >= 2) and (V148_zz115 <= 8)))) 
and ((V134_zz101 <= 6) => (not V121_zz88)) 
and ((V180_zz147 <= 6) => (not (V122_zz89 = 8))) 
and ((V180_zz147 <= 6) => (not (V148_zz115 = 7))) 
and ((V134_zz101 <= 6) => (V141_zz108 <= 6)) 
and ((V139_zz106 >= 3) => (not V172_zz139)) 
and ((V139_zz106 >= 3) => (V141_zz108 >= 3)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => accelResume) 
and ((0 >= V200_zz168) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((0 >= V200_zz168) => (V198_zz166 <= 20)) 
and (((not cancel) and (not brakePedal)) => (not brakePedal)) 
and (brakePedal => V89_zz56) 
and (brakePedal => (not (V65_zz32 = 5))) 
and (brakePedal => (not (V71_zz38 = 6))) 
and (brakePedal => (not V76_zz43)) 
and (brakePedal => V97_zz64) 
and (brakePedal => (not V64_zz31)) 
and (brakePedal => (not (V82_zz49 = 4))) 
and (brakePedal => ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)) 
and (((V175_zz142 = 1) and (onOff and (not V172_zz139))) => (V188_zz156 = 1)) 
and ((onOff and (not V172_zz139)) => (not V172_zz139)) 
and (V178_zz145 => (V175_zz142 = 1)) 
and (V187_zz155 => (V180_zz147 <= 6)) 
and (V187_zz155 => (V128_zz95 <= 6)) 
and (((V130_zz97 = 8) and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V127_zz94))) => (V134_zz101 <= 6)) 
and (((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) => (not V178_zz145)) 
and ((((V188_zz156 >= 2) and (V188_zz156 <= 8)) and (not onOff)) => (not onOff)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not brakePedal)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0))) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (not V121_zz88)) 
and (V138_zz105 => (not (V65_zz32 = 5))) 
and (V138_zz105 => (not (V71_zz38 = 6))) 
and (V138_zz105 => V105_zz72) 
and (V138_zz105 => (not V172_zz139)) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (not brakePedal)) 
and ((0 >= V200_zz168) => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and ((V141_zz108 <= 6) => (not V121_zz88)) 
and ((((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs) => (not V121_zz88)) 
and ((((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs) => validInputs) 
and (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) => V214_zz182) 
and ((((not cancel) and (not brakePedal)) and V213_zz181) => ((not cancel) and (not brakePedal))) 
and ((not V211_zz179) => (not (V65_zz32 = 5))) 
and ((not V211_zz179) => (V198_zz166 <= 20)) 
and ((not V211_zz179) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and ((0 >= V206_zz174) => ((if ((V209_zz177 = true) = false) then 0 else 1) = 0)) 
and ((0 >= V206_zz174) => ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => validInputs) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => V214_zz182) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => ((not cancel) and (not brakePedal))) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (V135_zz102 = 7)) 
and (V76_zz43 => (not V121_zz88)) 
and (V138_zz105 => (V141_zz108 >= 3)) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) => (not (V65_zz32 = 5))) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) => (V198_zz166 <= 20)) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) => (not ((if ((V203_zz171 = false) = false) then 0 else 1) = 0))) 
and (cancel => ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) => accelResume) 
and (V217_zz185 => decelSet) 
and ((((not cancel) and (not brakePedal)) and V213_zz181) => (not cancel)) 
and (V211_zz179 => ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) 
and (((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) => (not V211_zz179)) 
and ((0 >= V206_zz174) => (V204_zz172 <= 20)) 
and (cancel => (not V76_zz43)) 
and (cancel => V97_zz64) 
and (cancel => (not V64_zz31)) 
and (cancel => (not (V82_zz49 = 4))) 
and ((not ((if ((V212_zz180 = true) = false) then 0 else 1) = 0)) => (not V211_zz179)) 
and (((V135_zz102 = 7) and (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) => (((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0))) and (not V133_zz100))) 
and (((V141_zz108 = 4) and (not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0))) => ((not ((if ((V217_zz185 = true) = false) then 0 else 1) = 0)) and (not ((if ((V218_zz186 = true) = false) then 0 else 1) = 0)))) 
and ((V63_zz30 or V57_zz24) => (V141_zz108 <= 6)) 
and ((V63_zz30 or V57_zz24) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (V76_zz43 => (V141_zz108 <= 6)) 
and (V76_zz43 => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (V141_zz108 <= 6)) 
and (((V141_zz108 >= 3) and (V141_zz108 <= 6)) => (((((not cancel) and (not brakePedal)) and V213_zz181) and V214_zz182) and validInputs)) 
and (((if ((V218_zz186 = true) = false) then 0 else 1) = 0) => V89_zz56) 
and (((if ((V217_zz185 = true) = false) then 0 else 1) = 0) => (not V57_zz24)) 
and ((if (V175_zz142 = 1) then 0 else V175_zz142) = V153_zz120) 
and ((if (V198_zz166 <= 20) then V198_zz166 else 20) = V202_zz170) 
and (V200_zz168 = V198_zz166) 
and (V198_zz166 = (if accelResume then V199_zz167 else 0)) 
and ((if accelResume then V199_zz167 else 0) = (if (0 >= V200_zz168) then 0 else V200_zz168)) 
and ((if V177_zz144 then V153_zz120 else V175_zz142) = V179_zz146) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) = V170_zz137) 
and (V173_zz140 = (if V172_zz139 then V170_zz137 else V188_zz156)) 
and (1 = V185_zz153) 
and (V185_zz153 = (if (not (V173_zz140 = 1)) then 1 else V173_zz140)) 
and ((if (not (V173_zz140 = 1)) then 1 else V173_zz140) = (if (not (V188_zz156 = 1)) then 1 else V188_zz156)) 
and ((if (not (V188_zz156 = 1)) then 1 else V188_zz156) = V154_zz121) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) = V175_zz142) 
and (V169_zz136 = V156_zz123) 
and (V156_zz123 = (if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V156_zz123 else V168_zz135)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V156_zz123 else V168_zz135) = (if (V168_zz135 = 8) then 2 else V168_zz135)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134) = V157_zz124) 
and (V157_zz124 = (if (V167_zz134 = 7) then 2 else V167_zz134)) 
and ((if (V167_zz134 = 7) then 2 else V167_zz134) = V168_zz135) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156) = V165_zz132) 
and (V165_zz132 = V167_zz134) 
and (V167_zz134 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then 2 else V164_zz131)) 
and ((if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130) = V158_zz125) 
and (V158_zz125 = V164_zz131) 
and (V164_zz131 = (if (V163_zz130 = 6) then 3 else V163_zz130)) 
and ((if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129) = V159_zz126) 
and (V159_zz126 = V163_zz130) 
and (V163_zz130 = (if (V162_zz129 = 5) then 3 else V162_zz129)) 
and (V160_zz127 = (if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V160_zz127 else V188_zz156)) 
and ((if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V160_zz127 else V188_zz156) = V162_zz129) 
and (V162_zz129 = (if (V188_zz156 = 4) then 3 else V188_zz156)) 
and ((if (V135_zz102 = 7) then 2 else V135_zz102) = V93_zz60) 
and ((if V137_zz104 then V93_zz60 else V135_zz102) = V139_zz106) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) = (if (V141_zz108 = 4) then 3 else V141_zz108)) 
and ((if (V141_zz108 = 4) then 3 else V141_zz108) = V55_zz22) 
and (V55_zz22 = V51_zz18) 
and (V47_zz14 = (if (V67_zz34 = 4) then 3 else V67_zz34)) 
and ((if V57_zz24 then V55_zz22 else V141_zz108) = V58_zz25) 
and (V44_zz11 = (if (V73_zz40 = 6) then 3 else V73_zz40)) 
and (V71_zz38 = (if V69_zz36 then V47_zz14 else V67_zz34)) 
and (V65_zz32 = (if V63_zz30 then V51_zz18 else V61_zz28)) 
and (V141_zz108 = (if V137_zz104 then V91_zz58 else V139_zz106)) 
and ((if V137_zz104 then V91_zz58 else V139_zz106) = V61_zz28) 
and (V61_zz28 = (if V57_zz24 then V53_zz20 else V58_zz25)) 
and (V67_zz34 = (if V63_zz30 then V49_zz16 else V65_zz32)) 
and (V143_zz110 = (if ((not V138_zz105) and ((V141_zz108 >= 3) and (V141_zz108 <= 6))) then V83_zz50 else V141_zz108)) 
and ((if (V78_zz45 = 5) then 3 else V78_zz45) = V41_zz8) 
and (V77_zz44 = (if V75_zz42 then V44_zz11 else V73_zz40)) 
and ((if V80_zz47 then V41_zz8 else V78_zz45) = V82_zz49) 
and (V83_zz50 = (if V80_zz47 then V39_zz6 else V82_zz49)) 
and ((if V75_zz42 then V42_zz9 else V77_zz44) = V78_zz45) 
and (V73_zz40 = (if V69_zz36 then V45_zz12 else V71_zz38)) 
and ((if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147) = V182_zz149) 
and (V119_zz86 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then 2 else V118_zz85)) 
and ((if (V124_zz91 = 8) then 2 else V124_zz91) = V109_zz76) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) = V101_zz68) 
and (V122_zz89 = (if V121_zz88 then V119_zz86 else V180_zz147)) 
and (V112_zz79 = V118_zz85) 
and (V118_zz85 = (if (V117_zz84 = 6) then 3 else V117_zz84)) 
and ((if (V117_zz84 = 6) then 3 else V117_zz84) = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V112_zz79 else V117_zz84)) 
and (V117_zz84 = V113_zz80) 
and (V113_zz80 = (if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V113_zz80 else V116_zz83)) 
and ((if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V113_zz80 else V116_zz83) = (if (V116_zz83 = 5) then 3 else V116_zz83)) 
and ((if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147) = (if (V180_zz147 = 4) then 3 else V180_zz147)) 
and ((if (V180_zz147 = 4) then 3 else V180_zz147) = V116_zz83) 
and (V116_zz83 = V114_zz81) 
and (V180_zz147 = (if V177_zz144 then V151_zz118 else V179_zz146)) 
and ((if V126_zz93 then V109_zz76 else V124_zz91) = V128_zz95) 
and ((if V132_zz99 then V101_zz68 else V130_zz97) = V134_zz101) 
and ((if V132_zz99 then V99_zz66 else V134_zz101) = V135_zz102) 
and (V130_zz97 = (if V126_zz93 then V107_zz74 else V128_zz95)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) = V124_zz91) 
and ((if (V204_zz172 <= 20) then V204_zz172 else 20) = V208_zz176) 
and ((if (0 >= V206_zz174) then 0 else V206_zz174) = V206_zz174) 
and (V206_zz174 = (if decelSet then V205_zz173 else 0)) 
and ((if decelSet then V205_zz173 else 0) = V204_zz172) 
and ((V207_zz175 + 1) = V205_zz173) 
and (V199_zz167 = (V201_zz169 + 1)) 
and ((if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146) = V148_zz115) 
and (V104_zz71 = (if (not ((V128_zz95 >= 3) and (V128_zz95 <= 6))) then 3 else V128_zz95)) 
and (V96_zz63 = (if (not ((V134_zz101 >= 3) and (V134_zz101 <= 6))) then 3 else V134_zz101)) 
and (V88_zz55 = (if (not ((V139_zz106 >= 3) and (V139_zz106 <= 6))) then 3 else V139_zz106)) 
and ((if (not (V104_zz71 = 4)) then 4 else V104_zz71) = V42_zz9) 
and (V42_zz9 = (if (not (V88_zz55 = 4)) then 4 else V88_zz55)) 
and ((if (not (V88_zz55 = 4)) then 4 else V88_zz55) = V53_zz20) 
and (V53_zz20 = V94_zz61) 
and (V94_zz61 = V86_zz53) 
and (V86_zz53 = (if (not (V58_zz25 = 4)) then 4 else V58_zz25)) 
and ((if (not (V58_zz25 = 4)) then 4 else V58_zz25) = V39_zz6) 
and (V39_zz6 = (if (not (V96_zz63 = 4)) then 4 else V96_zz63)) 
and ((if (not (V96_zz63 = 4)) then 4 else V96_zz63) = (if (not (V77_zz44 = 4)) then 4 else V77_zz44)) 
and ((if (not (V77_zz44 = 4)) then 4 else V77_zz44) = 4) 
and (4 = V102_zz69) 
and (V102_zz69 = (if (not (V82_zz49 = 4)) then 4 else V82_zz49)) 
and (V91_zz58 = (if V89_zz56 then V86_zz53 else V88_zz55)) 
and ((if V89_zz56 then V86_zz53 else V88_zz55) = V99_zz66) 
and (V99_zz66 = V107_zz74) 
and (V107_zz74 = (if V105_zz72 then V102_zz69 else V104_zz71)) 
and ((if V105_zz72 then V102_zz69 else V104_zz71) = (if V97_zz64 then V94_zz61 else V96_zz63)) 
and (5 = (if (not (V65_zz32 = 5)) then 5 else V65_zz32)) 
and ((if (not (V65_zz32 = 5)) then 5 else V65_zz32) = V49_zz16) 
and (V45_zz12 = 6) 
and (6 = (if (not (V71_zz38 = 6)) then 6 else V71_zz38)) 
and ((if V149_zz116 then V146_zz113 else V148_zz115) = V151_zz118) 
and ((if (not (V148_zz115 = 7)) then 7 else V148_zz115) = 7) 
and (7 = V146_zz113) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) = V110_zz77) 
and (V110_zz77 = 8) 
and (0 <=(if ((V209_zz177 = true) = false) then 0 else 1)) 
and (0 <=(if (V175_zz142 = 1) then 0 else V175_zz142)) 
and (0 <=(if ((V212_zz180 = true) = false) then 0 else 1)) 
and (0 <=V207_zz175) 
and (0 <=(pre V208_zz176)) 
and (0 <=(if ((V217_zz185 = true) = false) then 0 else 1)) 
and (0 <=(if ((V218_zz186 = true) = false) then 0 else 1)) 
and (0 <=(if V177_zz144 then V153_zz120 else V175_zz142)) 
and (0 <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136)) 
and (0 <=V173_zz140) 
and (0 <=(if ((V209_zz177 = false) = false) then 0 else 1)) 
and (0 <=(if ((V203_zz171 = false) = false) then 0 else 1)) 
and (0 <=(if (V204_zz172 <= 20) then V204_zz172 else 20)) 
and (0 <=(if (0 >= V206_zz174) then 0 else V206_zz174)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V201_zz169) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(pre V202_zz170)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=1) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V169_zz136) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V160_zz127) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V188_zz156) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(pre V193_zz161)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V135_zz102 = 7) then 2 else V135_zz102)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V61_zz28 = 4) then 3 else V61_zz28)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V47_zz14) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V44_zz11) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V71_zz38) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V65_zz32) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V141_zz108) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V67_zz34) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V143_zz110) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V78_zz45 = 5) then 3 else V78_zz45)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V77_zz44) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V83_zz50) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V73_zz40) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V119_zz86) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V124_zz91 = 8) then 2 else V124_zz91)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V122_zz89) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V112_zz79) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V117_zz84) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V180_zz147) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V130_zz97) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(V207_zz175 + 1)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=2) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=3) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V104_zz71) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V96_zz63) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V88_zz55) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V91_zz58) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=5) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=V45_zz12) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=1) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V169_zz136) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V160_zz127) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V188_zz156) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(pre V193_zz161)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V135_zz102 = 7) then 2 else V135_zz102)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V61_zz28 = 4) then 3 else V61_zz28)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V47_zz14) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V44_zz11) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V71_zz38) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V65_zz32) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V141_zz108) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V67_zz34) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V143_zz110) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V78_zz45 = 5) then 3 else V78_zz45)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V77_zz44) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V83_zz50) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V73_zz40) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V119_zz86) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V124_zz91 = 8) then 2 else V124_zz91)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V122_zz89) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V112_zz79) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V117_zz84) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V180_zz147) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V130_zz97) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (V204_zz172 <= 20) then V204_zz172 else 20)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (0 >= V206_zz174) then 0 else V206_zz174)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V199_zz167) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=2) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=3) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V104_zz71) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V96_zz63) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V88_zz55) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V91_zz58) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=5) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V45_zz12) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (V175_zz142 = 1) then 0 else V175_zz142) <=V173_zz140) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V203_zz171 = false) = false) then 0 else 1)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=1) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V169_zz136) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V160_zz127) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V188_zz156) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(pre V193_zz161)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V135_zz102 = 7) then 2 else V135_zz102)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V61_zz28 = 4) then 3 else V61_zz28)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V47_zz14) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V44_zz11) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V71_zz38) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V65_zz32) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V141_zz108) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V67_zz34) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V143_zz110) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V78_zz45 = 5) then 3 else V78_zz45)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V77_zz44) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V83_zz50) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V73_zz40) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V119_zz86) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V124_zz91 = 8) then 2 else V124_zz91)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V122_zz89) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V112_zz79) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V117_zz84) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V180_zz147) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V130_zz97) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(V207_zz175 + 1)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=2) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=3) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V104_zz71) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V96_zz63) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V88_zz55) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V91_zz58) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=5) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=V45_zz12) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (V198_zz166 <= 20) then V198_zz166 else 20) <=20) 
and (V207_zz175 <=(V207_zz175 + 1)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V169_zz136) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V160_zz127) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V188_zz156) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V135_zz102 = 7) then 2 else V135_zz102)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V61_zz28 = 4) then 3 else V61_zz28)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V47_zz14) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V44_zz11) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V71_zz38) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V65_zz32) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V141_zz108) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V67_zz34) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V143_zz110) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V78_zz45 = 5) then 3 else V78_zz45)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V77_zz44) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V83_zz50) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V73_zz40) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V119_zz86) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V124_zz91 = 8) then 2 else V124_zz91)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V122_zz89) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V112_zz79) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V117_zz84) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V180_zz147) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=V130_zz97) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (V204_zz172 <= 20) then V204_zz172 else 20)) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if (0 >= V206_zz174) then 0 else V206_zz174)) 
and (V201_zz169 <=V199_zz167) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=1) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V169_zz136) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V160_zz127) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (V135_zz102 = 7) then 2 else V135_zz102)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (V61_zz28 = 4) then 3 else V61_zz28)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V47_zz14) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V44_zz11) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V71_zz38) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V65_zz32) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V141_zz108) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V67_zz34) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V143_zz110) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (V78_zz45 = 5) then 3 else V78_zz45)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V77_zz44) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V83_zz50) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V73_zz40) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V119_zz86) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (V124_zz91 = 8) then 2 else V124_zz91)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V122_zz89) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V112_zz79) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V117_zz84) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V130_zz97) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(V207_zz175 + 1)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V199_zz167) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=2) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=3) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V104_zz71) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V96_zz63) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V88_zz55) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V91_zz58) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=5) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V45_zz12) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and (1 <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and (1 <=(V207_zz175 + 1)) 
and (1 <=V199_zz167) 
and (1 <=2) 
and (1 <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and (1 <=3) 
and (1 <=V104_zz71) 
and (1 <=V96_zz63) 
and (1 <=V88_zz55) 
and (1 <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and (1 <=V91_zz58) 
and (1 <=5) 
and (1 <=V45_zz12) 
and (1 <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and (1 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=V180_zz147) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and (V169_zz136 <=2) 
and (V169_zz136 <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and (V169_zz136 <=3) 
and (V169_zz136 <=V104_zz71) 
and (V169_zz136 <=V96_zz63) 
and (V169_zz136 <=V88_zz55) 
and (V169_zz136 <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and (V169_zz136 <=V91_zz58) 
and (V169_zz136 <=5) 
and (V169_zz136 <=V45_zz12) 
and (V169_zz136 <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and (V169_zz136 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=(if V57_zz24 then V55_zz22 else V141_zz108)) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=V65_zz32) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=V141_zz108) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=V130_zz97) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and (V44_zz11 <=V77_zz44) 
and (V44_zz11 <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and (V141_zz108 <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and (V141_zz108 <=V130_zz97) 
and (V141_zz108 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and (V143_zz110 <=(if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147)) 
and (V143_zz110 <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and (V119_zz86 <=V112_zz79) 
and (V119_zz86 <=V117_zz84) 
and (V119_zz86 <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if (V124_zz91 = 8) then 2 else V124_zz91) <=(if V126_zz93 then V109_zz76 else V124_zz91)) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) <=(if V132_zz99 then V101_zz68 else V130_zz97)) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) <=V130_zz97) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and (V180_zz147 <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and ((if (V204_zz172 <= 20) then V204_zz172 else 20) <=20) 
and (2 <=3) 
and (2 <=V104_zz71) 
and (2 <=V96_zz63) 
and (2 <=V88_zz55) 
and (2 <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and (2 <=V91_zz58) 
and (2 <=5) 
and (2 <=V45_zz12) 
and (2 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and (3 <=(if (not (V104_zz71 = 4)) then 4 else V104_zz71)) 
and (3 <=5) 
and ((if (not (V104_zz71 = 4)) then 4 else V104_zz71) <=5) 
and (V91_zz58 <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and (0 <=(if ((V203_zz171 = true) = false) then 0 else 1)) 
and ((if ((V203_zz171 = true) = false) then 0 else 1) <=(if (V198_zz166 <= 20) then V198_zz166 else 20)) 
and ((if (V198_zz166 <= 20) then V198_zz166 else 20) <=V200_zz168) 
and (V200_zz168 <=V199_zz167) 
and ((if ((V209_zz177 = true) = false) then 0 else 1) <=V207_zz175) 
and (V207_zz175 <=(pre V208_zz176)) 
and ((pre V208_zz176) <=20) 
and ((if (V175_zz142 = 1) then 0 else V175_zz142) <=(if V177_zz144 then V153_zz120 else V175_zz142)) 
and ((if V177_zz144 then V153_zz120 else V175_zz142) <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=V188_zz156) 
and (V188_zz156 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if ((V212_zz180 = true) = false) then 0 else 1) <=(if (V198_zz166 <= 20) then V198_zz166 else 20)) 
and ((if (V198_zz166 <= 20) then V198_zz166 else 20) <=V200_zz168) 
and (V200_zz168 <=V199_zz167) 
and ((if ((V217_zz185 = true) = false) then 0 else 1) <=(if ((V209_zz177 = false) = false) then 0 else 1)) 
and ((if ((V209_zz177 = false) = false) then 0 else 1) <=1) 
and (1 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if ((V218_zz186 = true) = false) then 0 else 1) <=1) 
and (1 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V201_zz169 <=(pre V202_zz170)) 
and ((pre V202_zz170) <=20) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then 0 else V169_zz136) <=V173_zz140) 
and (V173_zz140 <=(if V172_zz139 then V154_zz121 else V173_zz140)) 
and ((if V172_zz139 then V154_zz121 else V173_zz140) <=V188_zz156) 
and (V188_zz156 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if ((V203_zz171 = false) = false) then 0 else 1) <=1) 
and (1 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V169_zz136 <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V157_zz124 else V167_zz134) <=(if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156)) 
and ((if ((V188_zz156 >= 2) and (V188_zz156 <= 8)) then V165_zz132 else V188_zz156) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130)) 
and ((if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V158_zz125 else V163_zz130) <=(if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129)) 
and ((if ((V188_zz156 >= 3) and (V188_zz156 <= 6)) then V159_zz126 else V162_zz129) <=V160_zz127) 
and (V160_zz127 <=V188_zz156) 
and (V188_zz156 <=(pre V193_zz161)) 
and ((pre V193_zz161) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (V135_zz102 = 7) then 2 else V135_zz102) <=(if V137_zz104 then V93_zz60 else V135_zz102)) 
and ((if V137_zz104 then V93_zz60 else V135_zz102) <=V141_zz108) 
and (V141_zz108 <=V67_zz34) 
and (V67_zz34 <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (V61_zz28 = 4) then 3 else V61_zz28) <=V47_zz14) 
and (V47_zz14 <=V71_zz38) 
and (V71_zz38 <=V67_zz34) 
and (V67_zz34 <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if V57_zz24 then V55_zz22 else V141_zz108) <=V141_zz108) 
and (V141_zz108 <=V67_zz34) 
and (V67_zz34 <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V44_zz11 <=V71_zz38) 
and (V71_zz38 <=V67_zz34) 
and (V67_zz34 <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V65_zz32 <=V141_zz108) 
and (V141_zz108 <=V67_zz34) 
and (V67_zz34 <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V143_zz110 <=V83_zz50) 
and (V83_zz50 <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if V75_zz42 then V42_zz9 else V77_zz44) <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (V78_zz45 = 5) then 3 else V78_zz45) <=(if V80_zz47 then V41_zz8 else V78_zz45)) 
and ((if V80_zz47 then V41_zz8 else V78_zz45) <=V83_zz50) 
and (V83_zz50 <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if V75_zz42 then V42_zz9 else V77_zz44) <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V77_zz44 <=(if V75_zz42 then V42_zz9 else V77_zz44)) 
and ((if V75_zz42 then V42_zz9 else V77_zz44) <=V73_zz40) 
and (V73_zz40 <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if ((not V178_zz145) and ((V180_zz147 >= 2) and (V180_zz147 <= 8))) then V143_zz110 else V180_zz147) <=(if V187_zz155 then V185_zz153 else V182_zz149)) 
and ((if V187_zz155 then V185_zz153 else V182_zz149) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V119_zz86 <=V122_zz89) 
and (V122_zz89 <=V180_zz147) 
and (V180_zz147 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (V124_zz91 = 8) then 2 else V124_zz91) <=(if (V130_zz97 = 8) then 2 else V130_zz97)) 
and ((if (V130_zz97 = 8) then 2 else V130_zz97) <=V122_zz89) 
and (V122_zz89 <=V180_zz147) 
and (V180_zz147 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (V112_zz79 <=V117_zz84) 
and (V117_zz84 <=(if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147)) 
and ((if ((V180_zz147 >= 3) and (V180_zz147 <= 6)) then V114_zz81 else V180_zz147) <=V180_zz147) 
and (V180_zz147 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if V126_zz93 then V109_zz76 else V124_zz91) <=V130_zz97) 
and (V130_zz97 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if V132_zz99 then V101_zz68 else V130_zz97) <=(if V132_zz99 then V99_zz66 else V134_zz101)) 
and ((if V132_zz99 then V99_zz66 else V134_zz101) <=V130_zz97) 
and (V130_zz97 <=(if V121_zz88 then V110_zz77 else V122_zz89)) 
and ((if V121_zz88 then V110_zz77 else V122_zz89) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (V204_zz172 <= 20) then V204_zz172 else 20) <=(if (0 >= V206_zz174) then 0 else V206_zz174)) 
and ((if (0 >= V206_zz174) then 0 else V206_zz174) <=(V207_zz175 + 1)) 
and (2 <=(if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146)) 
and ((if (not ((V179_zz146 >= 2) and (V179_zz146 <= 8))) then 2 else V179_zz146) <=(if V149_zz116 then V146_zz113 else V148_zz115)) 
and ((if V149_zz116 then V146_zz113 else V148_zz115) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (3 <=V104_zz71) 
and (V104_zz71 <=V96_zz63) 
and (V96_zz63 <=V88_zz55) 
and (V88_zz55 <=V91_zz58) 
and (V91_zz58 <=V45_zz12) 
and (V45_zz12 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if (not (V148_zz115 = 7)) then 7 else V148_zz115) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and ((if (not (V104_zz71 = 4)) then 4 else V104_zz71) <=V91_zz58) 
and (V91_zz58 <=V45_zz12) 
and (V45_zz12 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if (not (V148_zz115 = 7)) then 7 else V148_zz115) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and (5 <=V45_zz12) 
and (V45_zz12 <=(if (not (V148_zz115 = 7)) then 7 else V148_zz115)) 
and ((if (not (V148_zz115 = 7)) then 7 else V148_zz115) <=(if (not (V122_zz89 = 8)) then 8 else V122_zz89)) 
and ((if (not (V122_zz89 = 8)) then 8 else V122_zz89) <=20) 
and  true ));
tel.

