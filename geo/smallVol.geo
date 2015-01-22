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

Include "gewinde.geo";
Include "sensoren.geo";

// Mantelstreben
Line(7010)={1021,2021};
Line(7020)={1031,2031};
Line(7030)={1041,2041};
Line(7040)={1051,2051};
Line Loop(28305) = {26302, 26202, -26303, -26102};
Ruled Surface(28306) = {28305};
Line Loop(28307) = {26103, 26304, -26203, -26303};
Ruled Surface(28308) = {28307};
Line Loop(28309) = {26204, -26301, -26104, 26304};
Ruled Surface(28310) = {28309};
Line Loop(28311) = {26301, 26201, -26302, -26101};
Ruled Surface(28312) = {28311};
Line Loop(28313) = {26102, 26103, 26104, 26101};
Ruled Surface(28314) = {28313};
Line Loop(28315) = {27103, 27304, -27203, -27303};
Ruled Surface(28316) = {28315};
Line Loop(28317) = {27303, -27202, -27302, 27102};
Ruled Surface(28318) = {28317};
Line Loop(28319) = {27101, 27302, -27201, -27301};
Ruled Surface(28320) = {28319};
Line Loop(28321) = {27301, -27204, -27304, 27104};
Ruled Surface(28322) = {28321};
Line Loop(28323) = {27102, 27103, 27104, 27101};
Ruled Surface(28324) = {28323};
Line Loop(28325) = {28203, -28304, -28103, 28303};
Ruled Surface(28326) = {28325};
Line Loop(28327) = {28104, 28301, -28204, -28304};
Ruled Surface(28328) = {28327};
Line Loop(28329) = {28101, 28302, -28201, -28301};
Ruled Surface(28330) = {28329};
Line Loop(28331) = {28302, 28202, -28303, -28102};
Ruled Surface(28332) = {28331};
Line Loop(28333) = {28103, 28104, 28101, 28102};
Ruled Surface(28334) = {28333};
Line Loop(28335) = {25103, 25304, -25203, -25303};
Ruled Surface(28336) = {28335};
Line Loop(28337) = {25304, 25204, -25301, -25104};
Ruled Surface(28338) = {28337};
Line Loop(28339) = {25301, 25201, -25302, -25101};
Ruled Surface(28340) = {28339};
Line Loop(28341) = {25302, 25202, -25303, -25102};
Ruled Surface(28342) = {28341};
Line Loop(28343) = {25103, 25104, 25101, 25102};
Ruled Surface(28344) = {28343};
Line Loop(28345) = {23103, 23304, -23203, -23303};
Ruled Surface(28346) = {28345};
Line Loop(28347) = {23304, 23204, -23301, -23104};
Ruled Surface(28348) = {28347};
Line Loop(28349) = {23301, 23201, -23302, -23101};
Ruled Surface(28350) = {28349};
Line Loop(28351) = {23302, 23202, -23303, -23102};
Ruled Surface(28352) = {28351};
Line Loop(28353) = {23103, 23104, 23101, 23102};
Ruled Surface(28354) = {28353};
Line Loop(28355) = {24103, 24304, -24203, -24303};
Ruled Surface(28356) = {28355};
Line Loop(28357) = {24304, 24204, -24301, -24104};
Ruled Surface(28358) = {28357};
Line Loop(28359) = {24301, 24201, -24302, -24101};
Ruled Surface(28360) = {28359};
Line Loop(28361) = {24202, -24303, -24102, 24302};
Ruled Surface(28362) = {28361};
Line Loop(28363) = {24102, 24103, 24104, 24101};
Ruled Surface(28364) = {28363};
Line Loop(28365) = {22201, -22302, -22101, 22301};
Ruled Surface(28366) = {28365};
Line Loop(28367) = {22302, 22202, -22303, -22102};
Ruled Surface(28368) = {28367};
Line Loop(28369) = {22301, -22204, -22304, 22104};
Ruled Surface(28370) = {28369};
Line Loop(28371) = {22203, -22304, -22103, 22303};
Ruled Surface(28372) = {28371};
Line Loop(28373) = {21102, 21303, -21202, -21302};
Ruled Surface(28374) = {28373};
Line Loop(28375) = {21203, -21304, -21103, 21303};
Ruled Surface(28376) = {28375};
Line Loop(28377) = {21204, -21301, -21104, 21304};
Ruled Surface(28378) = {28377};
Line Loop(28379) = {21302, -21201, -21301, 21101};
Ruled Surface(28380) = {28379};
Line Loop(28381) = {22103, 22104, 22101, 22102};
Ruled Surface(28382) = {28381};
Line Loop(28383) = {21103, 21104, 21101, 21102};
Ruled Surface(28384) = {28383};
Line Loop(28385) = {20104, 20101, 20102, 20103};
Ruled Surface(28386) = {28385};
Line Loop(28387) = {20304, 20204, -20301, -20104};
Ruled Surface(28388) = {28387};
Line Loop(28389) = {20203, -20304, -20103, 20303};
Ruled Surface(28390) = {28389};
Line Loop(28391) = {20303, -20202, -20302, 20102};
Ruled Surface(28392) = {28391};
Line Loop(28393) = {20201, -20302, -20101, 20301};
Ruled Surface(28394) = {28393};
Line Loop(28395) = {16310, -16311, -16220};
Ruled Surface(28396) = {28395};
Line Loop(28397) = {16310, -16313, 16223};
Ruled Surface(28398) = {28397};
Line Loop(28399) = {16311, -16312, -16221};
Ruled Surface(28400) = {28399};
Line Loop(28401) = {16313, -16312, 16222};
Ruled Surface(28402) = {28401};
Line Loop(28403) = {16222, 16317, -16122, -16316};
Ruled Surface(28404) = {28403};
Line Loop(28405) = {16317, 16123, -16314, -16223};
Ruled Surface(28406) = {28405};
Line Loop(28407) = {16314, 16120, -16315, -16220};
Ruled Surface(28408) = {28407};
Line Loop(28409) = {16315, 16121, -16316, -16221};
Ruled Surface(28410) = {28409};
Line Loop(28411) = {15223, 15310, -15313};
Ruled Surface(28412) = {28411};
Line Loop(28413) = {15310, -15311, -15220};
Ruled Surface(28414) = {28413};
Delete {
  Surface{28412};
}
Ruled Surface(28415) = {28411};
Delete {
  Surface{28415};
}
Line Loop(28415) = {15312, -15311, 15221};
Ruled Surface(28416) = {28415};
Ruled Surface(28417) = {28411};
Line Loop(28418) = {15313, -15312, 15222};
Ruled Surface(28419) = {28418};
Line Loop(28420) = {5223, 5310, -5313};
Ruled Surface(28421) = {28420};
Line Loop(28422) = {5311, -5310, 5220};
Ruled Surface(28423) = {28422};
Line Loop(28424) = {5311, -5312, -5221};
Ruled Surface(28425) = {28424};
Line Loop(28426) = {5312, -5313, -5222};
Ruled Surface(28427) = {28426};
Line Loop(28428) = {5221, 5316, -5121, -5315};
Ruled Surface(28429) = {28428};
Line Loop(28430) = {5315, -5120, -5314, 5220};
Ruled Surface(28431) = {28430};
Line Loop(28432) = {5314, -5123, -5317, 5223};
Ruled Surface(28433) = {28432};
Line Loop(28434) = {5317, -5122, -5316, 5222};
Ruled Surface(28435) = {28434};
Line Loop(28436) = {7223, 7310, -7313};
Ruled Surface(28437) = {28436};
Line Loop(28438) = {7310, -7311, -7220};
Ruled Surface(28439) = {28438};
Line Loop(28440) = {7311, -7312, -7221};
Ruled Surface(28441) = {28440};
Line Loop(28442) = {7312, -7313, -7222};
Ruled Surface(28443) = {28442};
Line Loop(28444) = {7123, -7314, -7223, 7317};
Ruled Surface(28445) = {28444};
Line Loop(28446) = {7314, 7120, -7315, -7220};
Ruled Surface(28447) = {28446};
Line Loop(28448) = {7315, 7121, -7316, -7221};
Ruled Surface(28449) = {28448};
Line Loop(28450) = {7316, 7122, -7317, -7222};
Ruled Surface(28451) = {28450};
Line Loop(28452) = {9312, -9313, -9222};
Ruled Surface(28453) = {28452};
Line Loop(28454) = {9312, -9311, 9221};
Ruled Surface(28455) = {28454};
Line Loop(28456) = {9311, -9310, 9220};
Ruled Surface(28457) = {28456};
Line Loop(28458) = {9223, 9310, -9313};
Ruled Surface(28459) = {28458};
Line Loop(28460) = {9222, 9317, -9122, -9316};
Ruled Surface(28461) = {28460};
Line Loop(28462) = {9316, -9121, -9315, 9221};
Ruled Surface(28463) = {28462};
Line Loop(28464) = {9315, -9120, -9314, 9220};
Ruled Surface(28465) = {28464};
Line Loop(28466) = {9317, 9123, -9314, -9223};
Ruled Surface(28467) = {28466};
Line Loop(28468) = {11222, 11317, -11122, -11316};
Ruled Surface(28469) = {28468};
Line Loop(28470) = {11317, 11123, -11314, -11223};
Ruled Surface(28471) = {28470};
Line Loop(28472) = {11314, 11120, -11315, -11220};
Ruled Surface(28473) = {28472};
Line Loop(28474) = {11315, 11121, -11316, -11221};
Ruled Surface(28475) = {28474};
Line Loop(28476) = {11221, 11312, -11311};
Ruled Surface(28477) = {28476};
Line Loop(28478) = {11311, -11310, 11220};
Ruled Surface(28479) = {28478};
Line Loop(28480) = {11310, -11313, 11223};
Ruled Surface(28481) = {28480};
Line Loop(28482) = {11313, -11312, 11222};
Ruled Surface(28483) = {28482};
Line Loop(28484) = {1313, -1310, -1223};
Ruled Surface(28485) = {28484};
Line Loop(28486) = {1310, -1311, -1220};
Ruled Surface(28487) = {28486};
Line Loop(28488) = {1311, -1312, -1221};
Ruled Surface(28489) = {28488};
Line Loop(28490) = {1312, -1313, -1222};
Ruled Surface(28491) = {28490};
Line Loop(28492) = {1221, 1316, -1121, -1315};
Ruled Surface(28493) = {28492};
Line Loop(28494) = {1316, 1122, -1317, -1222};
Ruled Surface(28495) = {28494};
Line Loop(28496) = {1315, -1120, -1314, 1220};
Ruled Surface(28497) = {28496};
Line Loop(28498) = {1314, -1123, -1317, 1223};
Ruled Surface(28499) = {28498};
Line Loop(28500) = {3310, -3311, -3220};
Ruled Surface(28501) = {28500};
Line Loop(28502) = {3221, 3312, -3311};
Ruled Surface(28503) = {28502};
Line Loop(28504) = {3312, -3313, -3222};
Ruled Surface(28505) = {28504};
Line Loop(28506) = {3313, -3310, -3223};
Ruled Surface(28507) = {28506};
Line Loop(28508) = {3221, 3316, -3121, -3315};
Ruled Surface(28509) = {28508};
Line Loop(28510) = {3315, -3120, -3314, 3220};
Ruled Surface(28511) = {28510};
Line Loop(28512) = {3317, -3122, -3316, 3222};
Ruled Surface(28513) = {28512};
Line Loop(28514) = {3317, 3123, -3314, -3223};
Ruled Surface(28515) = {28514};
Line Loop(28516) = {15317, 15123, -15314, -15223};
Ruled Surface(28517) = {28516};
Line Loop(28518) = {15317, -15122, -15316, 15222};
Ruled Surface(28519) = {28518};
Line Loop(28520) = {15220, 15315, -15120, -15314};
Ruled Surface(28521) = {28520};
Line Loop(28522) = {15316, -15121, -15315, 15221};
Ruled Surface(28523) = {28522};
Line Loop(28524) = {14313, -14312, 14222};
Ruled Surface(28525) = {28524};
Line Loop(28526) = {14312, -14311, 14221};
Ruled Surface(28527) = {28526};
Line Loop(28528) = {14311, -14310, 14220};
Ruled Surface(28529) = {28528};
Line Loop(28530) = {14310, -14313, 14223};
Ruled Surface(28531) = {28530};
Line Loop(28532) = {14315, 14121, -14316, -14221};
Ruled Surface(28533) = {28532};
Line Loop(28534) = {14316, 14122, -14317, -14222};
Ruled Surface(28535) = {28534};
Line Loop(28536) = {14317, 14123, -14314, -14223};
Ruled Surface(28537) = {28536};
Line Loop(28538) = {14314, 14120, -14315, -14220};
Ruled Surface(28539) = {28538};
Line Loop(28540) = {13221, 13312, -13311};
Ruled Surface(28541) = {28540};
Line Loop(28542) = {13311, -13310, 13220};
Ruled Surface(28543) = {28542};
Line Loop(28544) = {13223, 13310, -13313};
Ruled Surface(28545) = {28544};
Line Loop(28546) = {13313, -13312, 13222};
Ruled Surface(28547) = {28546};
Delete {
  Surface{28547};
}
Delete {
  Surface{28541};
}
Delete {
  Surface{28545};
}
Delete {
  Surface{28543};
}
Ruled Surface(28547) = {28546};
Ruled Surface(28548) = {28540};
Ruled Surface(28549) = {28542};
Ruled Surface(28550) = {28544};
Line Loop(28551) = {13314, -13123, -13317, 13223};
Ruled Surface(28552) = {28551};
Line Loop(28553) = {13317, -13122, -13316, 13222};
Ruled Surface(28554) = {28553};
Line Loop(28555) = {13121, -13316, -13221, 13315};
Ruled Surface(28556) = {28555};
Line Loop(28557) = {13315, -13120, -13314, 13220};
Ruled Surface(28558) = {28557};
Line Loop(28559) = {12310, -12311, -12220};
Ruled Surface(28560) = {28559};
Line Loop(28561) = {12221, 12312, -12311};
Ruled Surface(28562) = {28561};
Line Loop(28563) = {12312, -12313, -12222};
Ruled Surface(28564) = {28563};
Line Loop(28565) = {12313, -12310, -12223};
Ruled Surface(28566) = {28565};
Line Loop(28567) = {12314, -12123, -12317, 12223};
Ruled Surface(28568) = {28567};
Line Loop(28569) = {12314, 12120, -12315, -12220};
Ruled Surface(28570) = {28569};
Line Loop(28571) = {12315, 12121, -12316, -12221};
Ruled Surface(28572) = {28571};
Line Loop(28573) = {12122, -12317, -12222, 12316};
Ruled Surface(28574) = {28573};
Line Loop(28575) = {17122, -17317, -17222, 17316};
Ruled Surface(28576) = {28575};
Line Loop(28577) = {17316, -17121, -17315, 17221};
Ruled Surface(28578) = {28577};
Line Loop(28579) = {17315, -17120, -17314, 17220};
Ruled Surface(28580) = {28579};
Line Loop(28581) = {17314, -17123, -17317, 17223};
Ruled Surface(28582) = {28581};
Line Loop(28583) = {17222, 17313, -17312};
Ruled Surface(28584) = {28583};
Line Loop(28585) = {17312, -17311, 17221};
Ruled Surface(28586) = {28585};
Line Loop(28587) = {17311, -17310, 17220};
Ruled Surface(28588) = {28587};
Line Loop(28589) = {17310, -17313, 17223};
Ruled Surface(28590) = {28589};
Line Loop(28591) = {1113, 7040, -2113, -7030};
Line Loop(28592) = {25202, 25203, 25204, 25201};
Line Loop(28593) = {22203, 22204, 22201, 22202};
Ruled Surface(28594) = {28591, 28592, 28593};
Line Loop(28595) = {2112, -7030, -1112, 7020};
Line Loop(28596) = {23202, 23203, 23204, 23201};
Line Loop(28597) = {20203, 20204, 20201, 20202};
Line Loop(28598) = {28204, 28201, 28202, 28203};
Ruled Surface(28599) = {28595, 28596, 28597, 28598};
Line Loop(28600) = {7020, -2111, -7010, 1111};
Line Loop(28601) = {26201, 26202, 26203, 26204};
Ruled Surface(28602) = {28600, 28601};
Line Loop(28603) = {7010, -2114, -7040, 1114};
Line Loop(28604) = {21204, 21201, 21202, 21203};
Line Loop(28605) = {27202, 27203, 27204, 27201};
Line Loop(28606) = {24202, 24203, 24204, 24201};
Ruled Surface(28607) = {28603, 28604, 28605, 28606};
