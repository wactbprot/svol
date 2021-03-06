// kleines Startvolumen
// Einheit mm
// x, y, z

ir = 8.00;
// Ventilvolumen mm^3
vv = 5000.0;
// geplantes gesamtvolumen
vg = 20000.0;
// res. Zylindervolumen
vz = vg - 2* vv;
l  = vz/(Pi*ir^2);

Point(10) = {0.0, 0.0, 0.0};
Point(11) = {ir, 0.0, 0.0};
Point(12) = {0.0, ir, 0.0};
Point(13) = {-ir, 0.0, 0.0};
Point(14) = {0.0, -ir, 0.0};

Circle(10) = {11,10,12};
Circle(11) = {12,10,13};
Circle(12) = {13,10,14};
Circle(13) = {14,10,11};

Point(20) = {0.0, 0.0, l};
Point(21) = {ir, 0.0,  l};
Point(22) = {0.0, ir,  l};
Point(23) = {-ir, 0.0, l};
Point(24) = {0.0, -ir, l};

Circle(20) = {21,20,22};
Circle(21) = {22,20,23};
Circle(22) = {23,20,24};
Circle(23) = {24,20,21};

Line(1) = {10,20};
Line(2) = {11,21};
Line(3) = {12,22};
Line(4) = {13,23};
Line(5) = {14,24};


// Radius Schneide
r6 = 18.3/2;
// Schneidenschutzhöhe
ssh = 1.2;

//Höhe Schneide
hs = ssh - 0.65;

//vorderer Winkel
wv = 2 /360*2*Pi;
//Radius Fusspunkt Schneide Innen
r6f = r6*Cos(wv);

// linke Seite
Point(150) = {r6f, 0.0, 0.0};
Point(160) = {0.0, r6f, 0.0};
Point(170) = {-r6f, 0.0, 0.0};
Point(180) = {0.0, -r6f, 0.0};

Circle(140) = {150,10,160};
Circle(150) = {160,10,170};
Circle(160) = {170,10,180};
Circle(170) = {180,10,150};

// SchneidePoint
Point(110) = {0.0, 0.0, -hs};
Point(151) = {r6, 0.0, -hs};
Point(161) = {0.0, r6, -hs};
Point(171) = {-r6, 0.0, -hs};
Point(181) = {0.0, -r6, -hs};

Circle(141) = {151,110,161};
Circle(151) = {161,110,171};
Circle(161) = {171,110,181};
Circle(171) = {181,110,151};

Line(142) ={11,150};
Line(143) ={12,160};
Line(144) ={13,170};
Line(145) ={14,180};

Line(152) ={150,151};
Line(153) ={160,161};
Line(154) ={170,171};
Line(155) ={180,181};



// rechte Seite
Point(250) = {r6f, 0.0, l};
Point(260) = {0.0, r6f, l};
Point(270) = {-r6f, 0.0, l};
Point(280) = {0.0, -r6f, l};

Circle(240) = {250,20,260};
Circle(250) = {260,20,270};
Circle(260) = {270,20,280};
Circle(270) = {280,20,250};




// SchneidePoint
Point(210) = {0.0, 0.0, l+hs};
Point(251) = {r6, 0.0, l+hs};
Point(261) = {0.0, r6, l+hs};
Point(271) = {-r6, 0.0, l+hs};
Point(281) = {0.0, -r6, l+hs};

Circle(241) = {251,210,261};
Circle(251) = {261,210,271};
Circle(261) = {271,210,281};
Circle(271) = {281,210,251};

Line(242) ={21,250};
Line(243) ={22,260};
Line(244) ={23,270};
Line(245) ={24,280};

Line(252) ={250,251};
Line(253) ={260,261};
Line(254) ={270,271};
Line(255) ={280,281};


//hinterer Winkel
wh = 20 /360*2*Pi;
r5 = 21.40/2;
//Radius Fusspunkt Schneide außen
dh = (r5 - r6)*Tan(wh);

// linke Seite
Point(310) = {0.0, 0.0, -hs + dh};
Point(350) = {r5, 0.0, -hs + dh};
Point(360) = {0.0, r5, -hs + dh};
Point(370) = {-r5, 0.0,-hs + dh};
Point(380) = {0.0, -r5,-hs + dh};

Circle(341) = {350,310,360};
Circle(351) = {360,310,370};
Circle(361) = {370,310,380};
Circle(371) = {380,310,350};

// rechte Seite
Point(410) = {0.0, 0.0, l + hs - dh};
Point(450) = {r5, 0.0, l + hs - dh};
Point(460) = {0.0, r5, l + hs - dh};
Point(470) = {-r5, 0.0,l + hs - dh};
Point(480) = {0.0, -r5,l + hs - dh};

Circle(441) = {450,410,460};
Circle(451) = {460,410,470};
Circle(461) = {470,410,480};
Circle(471) = {480,410,450};

Line(552) ={151,350};
Line(553) ={161,360};
Line(554) ={171,370};
Line(555) ={181,380};

Line(562) ={251,450};
Line(563) ={261,460};
Line(564) ={271,470};
Line(565) ={281,480};

// hoch auf Flanschhöhe
// linke Seite
fhl = -hs + dh - ssh;
Point(1010) = {0.0, 0.0, fhl};
Point(1020) = {r5, 0.0,  fhl};
Point(1030) = {0.0, r5,  fhl};
Point(1040) = {-r5, 0.0, fhl};
Point(1050) = {0.0, -r5, fhl};

Circle(1011) = {1020, 1010, 1030};
Circle(1012) = {1030, 1010, 1040};
Circle(1013) = {1040, 1010, 1050};
Circle(1014) = {1050, 1010, 1020};


Line(1100) ={350,1020};
Line(1101) ={360,1030};
Line(1102) ={370,1040};
Line(1103) ={380,1050};

// rechte Seite
fhr =  hs - dh + ssh + l;
Point(2010) = {0.0, 0.0,fhr};
Point(2020) = {r5, 0.0,fhr};
Point(2030) = {0.0, r5,fhr};
Point(2040) = {-r5, 0.0,fhr};
Point(2050) = {0.0, -r5,fhr};

Circle(2011) = {2020, 2010, 2030};
Circle(2012) = {2030, 2010, 2040};
Circle(2013) = {2040, 2010, 2050};
Circle(2014) = {2050, 2010, 2020};

Line(2100) ={450,2020};
Line(2101) ={460,2030};
Line(2102) ={470,2040};
Line(2103) ={480,2050};

// Flansch Kante 
// Ausenradius
r1 = 33.8/2;
// links
Point(1021) = {r1, 0.0,  fhl};
Point(1031) = {0.0, r1,  fhl};
Point(1041) = {-r1, 0.0, fhl};
Point(1051) = {0.0, -r1, fhl};


Circle(1111) = {1021, 1010, 1031};
Circle(1112) = {1031, 1010, 1041};
Circle(1113) = {1041, 1010, 1051};
Circle(1114) = {1051, 1010, 1021};

Line(5010)={1020,1021};
Line(5020)={1030,1031};
Line(5030)={1040,1041};
Line(5040)={1050,1051};

// rechts
Point(2021) = {r1, 0.0,  fhr};
Point(2031) = {0.0, r1,  fhr};
Point(2041) = {-r1, 0.0, fhr};
Point(2051) = {0.0, -r1, fhr};


Circle(2111) = {2021, 2010, 2031};
Circle(2112) = {2031, 2010, 2041};
Circle(2113) = {2041, 2010, 2051};
Circle(2114) = {2051, 2010, 2021};

Line(6010)={2020,2021};
Line(6020)={2030,2031};
Line(6030)={2040,2041};
Line(6040)={2050,2051};

Include "g.geo";
Include "sp.geo";

// Mantelstreben
Line(7010)={1021,2021};
Line(7020)={1031,2031};
Line(7030)={1041,2041};
Line(7040)={1051,2051};

Line Loop(28207) = {6020, -2111, -6010, 2011};
Line Loop(28208) = {1122, 1123, 1120, 1121};
Line Loop(28209) = {3123, 3120, 3121, 3122};
Ruled Surface(28210) = {28207, 28208, 28209};
Line Loop(28211) = {6020, 2112, -6030, -2012};
Line Loop(28212) = {11122, 11123, 11120, 11121};
Ruled Surface(28213) = {28211, 28212};
Line Loop(28214) = {6030, 2113, -6040, -2013};
Line Loop(28215) = {7122, 7123, 7120, 7121};
Line Loop(28216) = {9121, 9122, 9123, 9120};
Ruled Surface(28217) = {28214, 28215, 28216};
Line Loop(28218) = {6040, 2114, -6010, -2014};
Line Loop(28219) = {5123, 5120, 5121, 5122};
Ruled Surface(28220) = {28218, 28219};
Line Loop(28221) = {2012, -2102, -451, 2101};
Ruled Surface(28222) = {28221};
Line Loop(28223) = {2102, 2013, -2103, -461};
Ruled Surface(28224) = {28223};
Line Loop(28225) = {2103, 2014, -2100, -471};
Ruled Surface(28226) = {28225};
Line Loop(28227) = {2011, -2101, -441, 2100};
Ruled Surface(28228) = {28227};
Line Loop(28229) = {563, -441, -562, 241};
Ruled Surface(28230) = {28229};
Line Loop(28231) = {562, -471, -565, 271};
Ruled Surface(28232) = {28231};
Line Loop(28233) = {565, -461, -564, 261};
Ruled Surface(28234) = {28233};
Line Loop(28235) = {564, -451, -563, 251};
Ruled Surface(28236) = {28235};
Line Loop(28237) = {250, 254, -251, -253};
Ruled Surface(28238) = {28237};
Line Loop(28239) = {240, 253, -241, -252};
Ruled Surface(28240) = {28239};
Line Loop(28241) = {252, -271, -255, 270};
Ruled Surface(28242) = {28241};
Line Loop(28243) = {255, -261, -254, 260};
Ruled Surface(28244) = {28243};
Line Loop(28245) = {22, 245, -260, -244};
Ruled Surface(28246) = {28245};
Line Loop(28247) = {245, 270, -242, -23};
Ruled Surface(28248) = {28247};
Line Loop(28249) = {242, 240, -243, -20};
Ruled Surface(28250) = {28249};
Line Loop(28251) = {243, 250, -244, -21};
Ruled Surface(28252) = {28251};
Line Loop(28253) = {21, -4, -11, 3};
Ruled Surface(28254) = {28253};
Line Loop(28255) = {3, -20, -2, 10};
Ruled Surface(28256) = {28255};
Line Loop(28257) = {2, -23, -5, 13};
Ruled Surface(28258) = {28257};
Line Loop(28259) = {5, -22, -4, 12};
Ruled Surface(28260) = {28259};
Line Loop(28261) = {7122, -7317, -7222, 7316};
Ruled Surface(28262) = {28261};
Line Loop(28263) = {7121, -7316, -7221, 7315};
Ruled Surface(28264) = {28263};
Line Loop(28265) = {7315, -7120, -7314, 7220};
Ruled Surface(28266) = {28265};
Line Loop(28267) = {7223, 7314, -7123, -7317};
Ruled Surface(28268) = {28267};
Line Loop(28269) = {7222, 7313, -7312};
Ruled Surface(28270) = {28269};
Line Loop(28271) = {7313, -7310, -7223};
Ruled Surface(28272) = {28271};
Line Loop(28273) = {7310, -7311, -7220};
Ruled Surface(28274) = {28273};
Line Loop(28275) = {7312, -7311, 7221};
Ruled Surface(28276) = {28275};
Line Loop(28326) = {12, 145, -160, -144};
Ruled Surface(28327) = {28326};
Line Loop(28328) = {144, -150, -143, 11};
Ruled Surface(28329) = {28328};
Line Loop(28330) = {143, -140, -142, 10};
Ruled Surface(28331) = {28330};
Line Loop(28332) = {142, -170, -145, 13};
Ruled Surface(28333) = {28332};
Line Loop(28334) = {153, 151, -154, -150};
Ruled Surface(28335) = {28334};
Line Loop(28336) = {141, -153, -140, 152};
Ruled Surface(28337) = {28336};
Line Loop(28338) = {152, -171, -155, 170};
Ruled Surface(28339) = {28338};
Line Loop(28340) = {161, -155, -160, 154};
Ruled Surface(28341) = {28340};
Line Loop(28342) = {161, 555, -361, -554};
Ruled Surface(28343) = {28342};
Line Loop(28344) = {555, 371, -552, -171};
Ruled Surface(28345) = {28344};
Line Loop(28346) = {552, 341, -553, -141};
Ruled Surface(28347) = {28346};
Line Loop(28348) = {151, 554, -351, -553};
Ruled Surface(28349) = {28348};
Line Loop(28350) = {1102, -1012, -1101, 351};
Ruled Surface(28351) = {28350};
Line Loop(28352) = {1101, -1011, -1100, 341};
Ruled Surface(28353) = {28352};
Line Loop(28354) = {1100, -1014, -1103, 371};
Ruled Surface(28355) = {28354};
Line Loop(28356) = {1103, -1013, -1102, 361};
Ruled Surface(28357) = {28356};
Line Loop(28358) = {5030, 1113, -5040, -1013};
Line Loop(28359) = {15121, 15122, 15123, 15120};
Ruled Surface(28360) = {28358, 28359};
Delete {
  Surface{28360};
}
Line Loop(28360) = {16120, 16121, 16122, 16123};
Ruled Surface(28361) = {28358, 28359, 28360};
Line Loop(28362) = {5030, -1112, -5020, 1012};
Line Loop(28363) = {17120, 17121, 17122, 17123};
Ruled Surface(28364) = {28362, 28363};
Line Loop(28365) = {5020, -1111, -5010, 1011};
Line Loop(28366) = {13120, 13121, 13122, 13123};
Line Loop(28367) = {12120, 12121, 12122, 12123};
Ruled Surface(28368) = {28365, 28366, 28367};
Line Loop(28369) = {5010, -1114, -5040, 1014};
Line Loop(28370) = {14122, 14123, 14120, 14121};
Ruled Surface(28371) = {28369, 28370};
Line Loop(28372) = {12317, 12123, -12314, -12223};
Ruled Surface(28373) = {28372};
Line Loop(28374) = {12314, 12120, -12315, -12220};
Ruled Surface(28375) = {28374};
Line Loop(28376) = {12315, 12121, -12316, -12221};
Ruled Surface(28377) = {28376};
Line Loop(28378) = {12316, 12122, -12317, -12222};
Ruled Surface(28379) = {28378};
Line Loop(28380) = {12220, 12311, -12310};
Ruled Surface(28381) = {28380};
Line Loop(28382) = {12311, -12312, -12221};
Ruled Surface(28383) = {28382};
Line Loop(28384) = {12312, -12313, -12222};
Ruled Surface(28385) = {28384};
Line Loop(28386) = {12313, -12310, -12223};
Ruled Surface(28387) = {28386};
Line Loop(28388) = {17123, -17314, -17223, 17317};
Ruled Surface(28389) = {28388};
Line Loop(28390) = {17314, 17120, -17315, -17220};
Ruled Surface(28391) = {28390};
Line Loop(28392) = {17315, 17121, -17316, -17221};
Ruled Surface(28393) = {28392};
Line Loop(28394) = {17316, 17122, -17317, -17222};
Ruled Surface(28395) = {28394};
Line Loop(28396) = {17222, 17313, -17312};
Ruled Surface(28397) = {28396};
Line Loop(28398) = {17312, -17311, 17221};
Ruled Surface(28399) = {28398};
Line Loop(28400) = {17311, -17310, 17220};
Ruled Surface(28401) = {28400};
Line Loop(28402) = {17310, -17313, 17223};
Ruled Surface(28403) = {28402};
Line Loop(28404) = {16123, -16314, -16223, 16317};
Ruled Surface(28405) = {28404};
Line Loop(28406) = {16315, 16121, -16316, -16221};
Ruled Surface(28407) = {28406};
Line Loop(28408) = {16315, -16120, -16314, 16220};
Ruled Surface(28409) = {28408};
Line Loop(28410) = {16316, 16122, -16317, -16222};
Ruled Surface(28411) = {28410};
Line Loop(28412) = {16221, 16312, -16311};
Ruled Surface(28413) = {28412};
Line Loop(28414) = {16311, -16310, 16220};
Ruled Surface(28415) = {28414};
Line Loop(28416) = {16310, -16313, 16223};
Ruled Surface(28417) = {28416};
Line Loop(28418) = {16313, -16312, 16222};
Ruled Surface(28419) = {28418};
Line Loop(28420) = {15122, -15317, -15222, 15316};
Ruled Surface(28421) = {28420};
Line Loop(28422) = {15316, -15121, -15315, 15221};
Ruled Surface(28423) = {28422};
Line Loop(28424) = {15315, -15120, -15314, 15220};
Ruled Surface(28425) = {28424};
Line Loop(28426) = {15314, -15123, -15317, 15223};
Ruled Surface(28427) = {28426};
Line Loop(28428) = {15220, 15311, -15310};
Ruled Surface(28429) = {28428};
Line Loop(28430) = {15311, -15312, -15221};
Ruled Surface(28431) = {28430};
Line Loop(28432) = {15312, -15313, -15222};
Ruled Surface(28433) = {28432};
Line Loop(28434) = {15313, -15310, -15223};
Ruled Surface(28435) = {28434};
Line Loop(28436) = {14222, 14313, -14312};
Ruled Surface(28437) = {28436};
Line Loop(28438) = {14312, -14311, 14221};
Ruled Surface(28439) = {28438};
Line Loop(28440) = {14220, 14311, -14310};
Ruled Surface(28441) = {28440};
Line Loop(28442) = {14310, -14313, 14223};
Ruled Surface(28443) = {28442};
Line Loop(28444) = {14122, -14317, -14222, 14316};
Ruled Surface(28445) = {28444};
Line Loop(28446) = {14223, 14314, -14123, -14317};
Ruled Surface(28447) = {28446};
Ruled Surface(28448) = {28444};
Line Loop(28449) = {14314, 14120, -14315, -14220};
Ruled Surface(28450) = {28449};
Line Loop(28451) = {14315, 14121, -14316, -14221};
Line Loop(28452) = {13223, 13314, -13123, -13317};
Ruled Surface(28453) = {28452};
Line Loop(28454) = {13314, 13120, -13315, -13220};
Ruled Surface(28455) = {28454};
Line Loop(28456) = {13315, 13121, -13316, -13221};
Ruled Surface(28457) = {28456};
Line Loop(28458) = {13316, 13122, -13317, -13222};
Ruled Surface(28459) = {28458};
Line Loop(28460) = {13311, -13312, -13221};
Ruled Surface(28461) = {28460};
Line Loop(28462) = {13311, -13310, 13220};
Ruled Surface(28463) = {28462};
Line Loop(28464) = {13310, -13313, 13223};
Ruled Surface(28465) = {28464};
Line Loop(28466) = {13222, 13313, -13312};
Ruled Surface(28467) = {28466};
Line Loop(28468) = {5120, -5315, -5220, 5314};
Ruled Surface(28469) = {28468};
Line Loop(28470) = {5314, -5123, -5317, 5223};
Ruled Surface(28471) = {28470};
Line Loop(28472) = {5317, -5122, -5316, 5222};
Ruled Surface(28473) = {28472};
Line Loop(28474) = {5316, -5121, -5315, 5221};
Ruled Surface(28475) = {28474};
Line Loop(28476) = {5313, -5310, -5223};
Ruled Surface(28477) = {28476};
Line Loop(28478) = {5310, -5311, -5220};
Ruled Surface(28479) = {28478};
Line Loop(28480) = {5311, -5312, -5221};
Ruled Surface(28481) = {28480};
Line Loop(28482) = {5313, -5312, 5222};
Ruled Surface(28483) = {28482};
Ruled Surface(28484) = {28451};
Line Loop(28485) = {9310, -9313, 9223};
Ruled Surface(28486) = {28485};
Line Loop(28487) = {9313, -9312, 9222};
Ruled Surface(28488) = {28487};
Line Loop(28489) = {9312, -9311, 9221};
Ruled Surface(28490) = {28489};
Line Loop(28491) = {9311, -9310, 9220};
Ruled Surface(28492) = {28491};
Line Loop(28493) = {9122, -9317, -9222, 9316};
Ruled Surface(28494) = {28493};
Line Loop(28495) = {9223, 9314, -9123, -9317};
Ruled Surface(28496) = {28495};
Line Loop(28497) = {9314, 9120, -9315, -9220};
Ruled Surface(28498) = {28497};
Line Loop(28499) = {9121, -9316, -9221, 9315};
Ruled Surface(28500) = {28499};
Line Loop(28501) = {11317, -11122, -11316, 11222};
Ruled Surface(28502) = {28501};
Line Loop(28503) = {11317, 11123, -11314, -11223};
Ruled Surface(28504) = {28503};
Line Loop(28505) = {11314, 11120, -11315, -11220};
Ruled Surface(28506) = {28505};
Line Loop(28507) = {11315, 11121, -11316, -11221};
Ruled Surface(28508) = {28507};
Line Loop(28509) = {11223, 11310, -11313};
Ruled Surface(28510) = {28509};
Line Loop(28511) = {11313, -11312, 11222};
Line Loop(28512) = {11310, -11311, -11220};
Ruled Surface(28513) = {28512};
Line Loop(28514) = {11311, -11312, -11221};
Ruled Surface(28515) = {28514};
Ruled Surface(28516) = {28511};
Line Loop(28517) = {1120, -1315, -1220, 1314};
Line Loop(28518) = {3310, -3313, 3223};
Line Loop(28519) = {1123, -1314, -1223, 1317};
Ruled Surface(28520) = {28519};
Line Loop(28521) = {1317, -1122, -1316, 1222};
Ruled Surface(28522) = {28521};
Line Loop(28523) = {1316, -1121, -1315, 1221};
Ruled Surface(28524) = {28523};
Ruled Surface(28525) = {28517};
Line Loop(28526) = {1311, -1310, 1220};
Ruled Surface(28527) = {28526};
Line Loop(28528) = {1310, -1313, 1223};
Ruled Surface(28529) = {28528};
Line Loop(28530) = {1313, -1312, 1222};
Ruled Surface(28531) = {28530};
Line Loop(28532) = {1312, -1311, 1221};
Ruled Surface(28533) = {28532};
Line Loop(28534) = {3315, 3121, -3316, -3221};
Ruled Surface(28535) = {28534};
Line Loop(28536) = {3316, 3122, -3317, -3222};
Ruled Surface(28537) = {28536};
Line Loop(28538) = {3317, 3123, -3314, -3223};
Ruled Surface(28539) = {28538};
Line Loop(28540) = {3314, 3120, -3315, -3220};
Ruled Surface(28541) = {28540};
Line Loop(28542) = {3311, -3310, 3220};
Ruled Surface(28543) = {28542};
Ruled Surface(28544) = {28518};
Line Loop(28545) = {3313, -3312, 3222};
Ruled Surface(28546) = {28545};
Line Loop(28547) = {3312, -3311, 3221};
Ruled Surface(28548) = {28547};
Line Loop(28584) = {1112, 7030, -2112, -7020};
Delete {
  Surface{28445};
}
Delete {
  Line{7030};
}
Delete {
  Line{7020};
}
Delete {
  Line{7010};
}
Delete {
  Line{7040};
}
Delete {
  Surface{28364};
}
Delete {
  Surface{28368};
}
Delete {
  Surface{28371};
}
Delete {
  Surface{28361};
}
Delete {
  Line{1112};
}
Delete {
  Line{1111};
}
Delete {
  Line{1114};
}
Delete {
  Line{1113};
}
Circle(29669) = {1041, 1010, 22124};
Circle(29670) = {22124, 1010, 22125};
Circle(29671) = {22125, 1010, 1051};
Circle(29672) = {1051, 1010, 27124};
Circle(29673) = {27124, 1010, 27125};
Circle(29674) = {27125, 1010, 21124};
Circle(29675) = {21124, 1010, 21125};
Circle(29676) = {21125, 1010, 1021};

Circle(29677) = {1021, 1010, 26124};
Circle(29678) = {26124, 1010, 26125};
Circle(29679) = {26125, 1010, 20124};
Circle(29680) = {20124, 1010, 20125};
Circle(29681) = {20125, 1010, 29124};
Circle(29682) = {29124, 1010, 1041};
Delete {
  Line{2113};
}
Delete {
  Line{2113};
}
Delete {
  Line{29679};
}
Circle(29683) = {26125, 1010, 1031};
Circle(29684) = {1031, 1010, 20124};
Delete {
  Surface{28220};
}
Delete {
  Surface{28217};
}
Delete {
  Surface{28213};
}
Delete {
  Surface{28210};
}
Delete {
  Line{2113};
}
Delete {
  Line{2114};
}
Delete {
  Line{2111};
}
Delete {
  Line{2112};
}
Circle(29685) = {2051, 2010, 25123};
Circle(29686) = {25123, 2010, 25122};
Circle(29687) = {25122, 2010, 2041};
Circle(29688) = {2041, 2010, 29123};
Circle(29689) = {29123, 2010, 29122};
Circle(29690) = {29122, 2010, 23123};
Circle(29691) = {23123, 2010, 23122};
Circle(29692) = {23122, 2010, 2031};
Circle(29693) = {2031, 2010, 26123};
Circle(29694) = {26123, 2010, 26122};
Circle(29695) = {26122, 2010, 2021};
Circle(29696) = {2021, 2010, 24123};
Circle(29697) = {24123, 2010, 24122};
Circle(29698) = {24122, 2010, 27123};
Circle(29699) = {27123, 2010, 27122};
Circle(29700) = {27122, 2010, 2051};

