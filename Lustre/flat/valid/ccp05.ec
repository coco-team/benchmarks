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


tel.

