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
