

//1. Sensorbohrung lks
// Dicke/ Annäherung
wts1 = (360-20)/360*2*Pi;
zts1 = fhl + 5;

dd = 1.0;
//T-Sensor Radius
tsr = 4.0/2;
dwtsu = Atan(tsr/(ir+dd));
// Radius der Punkte aussen
rtsa =Sqrt((ir+dd)^2 + tsr^2);
// Fläche auf Mantel
// Zentumspkt.
tsmz = Sqrt(r1^2 - tsr^2);
dwtso = Atan(tsr/r1);

 Point(20000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1};
 Point(20001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts1};
 Point(20003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts1};
 Point(20002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 - tsr};
 Point(20004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 + tsr};
 Point(20005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts1};
 Point(20006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts1};
 Point(20008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts1};
 Point(20007) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 - tsr};
 Point(20009) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 + tsr};
Circle(20101) = {20001,20000 , 20002};
Circle(20102) = {20002,20000 , 20003};
Circle(20103) = {20003,20000 , 20004};
Circle(20104) = {20004,20000 , 20001};
Circle(20201) = {20006,20005 , 20007};
Circle(20202) = {20007,20005 , 20008};
Circle(20203) = {20008,20005 , 20009};
Circle(20204) = {20009,20005 , 20006};
  Line(20301) = {20001, 20006};
  Line(20302) = {20002, 20007};
  Line(20303) = {20003, 20008};
  Line(20304) = {20004, 20009};


//2. Sensorbohrung lks
wts1 = (360-20+120)/360*2*Pi;

 Point(21000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1};
 Point(21001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts1};
 Point(21003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts1};
 Point(21002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 - tsr};
 Point(21004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 + tsr};
 Point(21005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts1};
 Point(21006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts1};
 Point(21008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts1};
 Point(21007) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 - tsr};
 Point(21009) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 + tsr};
Circle(21101) = {21001, 21000 , 21002};
Circle(21102) = {21002, 21000 , 21003};
Circle(21103) = {21003, 21000 , 21004};
Circle(21104) = {21004, 21000 , 21001};
Circle(21201) = {21006, 21005 , 21007};
Circle(21202) = {21007, 21005 , 21008};
Circle(21203) = {21008, 21005 , 21009};
Circle(21204) = {21009, 21005 , 21006};
  Line(21301) = {21001, 21006};
  Line(21302) = {21002, 21007};
  Line(21303) = {21003, 21008};
  Line(21304) = {21004, 21009};
  
//3. Sensorbohrung lks
wts1 = (360-20+240)/360*2*Pi;

 Point(22000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1};
 Point(22001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts1};
 Point(22003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts1};
 Point(22002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 - tsr};
 Point(22004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 + tsr};
 Point(22005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts1};
 Point(22006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts1};
 Point(22008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts1};
 Point(22007) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 - tsr};
 Point(22009) = {r1*Sin(wts1), r1*Cos(wts1),  zts1 + tsr};
Circle(22101) = {22001, 22000 , 22002};
Circle(22102) = {22002, 22000 , 22003};
Circle(22103) = {22003, 22000 , 22004};
Circle(22104) = {22004, 22000 , 22001};
Circle(22201) = {22006, 22005 , 22007};
Circle(22202) = {22007, 22005 , 22008};
Circle(22203) = {22008, 22005 , 22009};
Circle(22204) = {22009, 22005 , 22006};
  Line(22301) = {22001, 22006};
  Line(22302) = {22002, 22007};
  Line(22303) = {22003, 22008};
  Line(22304) = {22004, 22009};


//1. Sensorbohrung rechts
// Dicke/ Annäherung
wts1 = (360-20)/360*2*Pi;
zts2 = fhr - 5;

dd = 1.0;
//T-Sensor Radius
tsr = 4.0/2;
dwtsu = Atan(tsr/(ir+dd));
// Radius der Punkte aussen
rtsa =Sqrt((ir+dd)^2 + tsr^2);
// Fläche auf Mantel
// Zentumspkt.
tsmz = Sqrt(r1^2 - tsr^2);
dwtso = Atan(tsr/r1);

 Point(23000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(23001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(23003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(23002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(23004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(23005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(23006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(23008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(23007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(23009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(23101) = {23001, 23000 , 23002};
Circle(23102) = {23002, 23000 , 23003};
Circle(23103) = {23003, 23000 , 23004};
Circle(23104) = {23004, 23000 , 23001};
Circle(23201) = {23006, 23005 , 23007};
Circle(23202) = {23007, 23005 , 23008};
Circle(23203) = {23008, 23005 , 23009};
Circle(23204) = {23009, 23005 , 23006};
  Line(23301) = {23001, 23006};
  Line(23302) = {23002, 23007};
  Line(23303) = {23003, 23008};
  Line(23304) = {23004, 23009};


//2. Sensorbohrung lks
wts1 = (360-20+120)/360*2*Pi;

 Point(24000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(24001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(24003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(24002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(24004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(24005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(24006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(24008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(24007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(24009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(24101) = {24001, 24000 , 24002};
Circle(24102) = {24002, 24000 , 24003};
Circle(24103) = {24003, 24000 , 24004};
Circle(24104) = {24004, 24000 , 24001};
Circle(24201) = {24006, 24005 , 24007};
Circle(24202) = {24007, 24005 , 24008};
Circle(24203) = {24008, 24005 , 24009};
Circle(24204) = {24009, 24005 , 24006};
  Line(24301) = {24001, 24006};
  Line(24302) = {24002, 24007};
  Line(24303) = {24003, 24008};
  Line(24304) = {24004, 24009};
  
//3. Sensorbohrung lks
wts1 = (360-20+240)/360*2*Pi;

 Point(25000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(25001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(25003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(25002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(25004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(25005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(25006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(25008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(25007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(25009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(25101) = {25001, 25000 , 25002};
Circle(25102) = {25002, 25000 , 25003};
Circle(25103) = {25003, 25000 , 25004};
Circle(25104) = {25004, 25000 , 25001};
Circle(25201) = {25006, 25005 , 25007};
Circle(25202) = {25007, 25005 , 25008};
Circle(25203) = {25008, 25005 , 25009};
Circle(25204) = {25009, 25005 , 25006};
  Line(25301) = {25001, 25006};
  Line(25302) = {25002, 25007};
  Line(25303) = {25003, 25008};
  Line(25304) = {25004, 25009};


//1. Sensorbohrung mitte
// Dicke/ Annäherung
wts1 = (40)/360*2*Pi;
zts2 = (fhr + fhl)/2;

dd = 1.0;
//T-Sensor Radius
tsr = 4.0/2;
dwtsu = Atan(tsr/(ir+dd));
// Radius der Punkte aussen
rtsa =Sqrt((ir+dd)^2 + tsr^2);
// Fläche auf Mantel
// Zentumspkt.
tsmz = Sqrt(r1^2 - tsr^2);
dwtso = Atan(tsr/r1);

 Point(26000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(26001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(26003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(26002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(26004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(26005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(26006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(26008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(26007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(26009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(26101) = {26001, 26000 , 26002};
Circle(26102) = {26002, 26000 , 26003};
Circle(26103) = {26003, 26000 , 26004};
Circle(26104) = {26004, 26000 , 26001};
Circle(26201) = {26006, 26005 , 26007};
Circle(26202) = {26007, 26005 , 26008};
Circle(26203) = {26008, 26005 , 26009};
Circle(26204) = {26009, 26005 , 26006};
  Line(26301) = {26001, 26006};
  Line(26302) = {26002, 26007};
  Line(26303) = {26003, 26008};
  Line(26304) = {26004, 26009};


//2. Sensorbohrung lks
wts1 = (40+120)/360*2*Pi;

 Point(27000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(27001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(27003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(27002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(27004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(27005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(27006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(27008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(27007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(27009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(27101) = {27001, 27000 , 27002};
Circle(27102) = {27002, 27000 , 27003};
Circle(27103) = {27003, 27000 , 27004};
Circle(27104) = {27004, 27000 , 27001};
Circle(27201) = {27006, 27005 , 27007};
Circle(27202) = {27007, 27005 , 27008};
Circle(27203) = {27008, 27005 , 27009};
Circle(27204) = {27009, 27005 , 27006};
  Line(27301) = {27001, 27006};
  Line(27302) = {27002, 27007};
  Line(27303) = {27003, 27008};
  Line(27304) = {27004, 27009};
  
//3. Sensorbohrung lks
wts1 = (40+240)/360*2*Pi;

 Point(28000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
 Point(28001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
 Point(28003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
 Point(28002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
 Point(28004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
 Point(28005) = {tsmz*Sin(wts1), tsmz*Cos(wts1),  zts2};
 Point(28006) = {r1*Sin(wts1 + dwtso), r1*Cos(wts1 + dwtso),  zts2};
 Point(28008) = {r1*Sin(wts1 - dwtso), r1*Cos(wts1 - dwtso),  zts2};
 Point(28007) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 - tsr};
 Point(28009) = {r1*Sin(wts1), r1*Cos(wts1),  zts2 + tsr};
Circle(28101) = {28001, 28000 , 28002};
Circle(28102) = {28002, 28000 , 28003};
Circle(28103) = {28003, 28000 , 28004};
Circle(28104) = {28004, 28000 , 28001};
Circle(28201) = {28006, 28005 , 28007};
Circle(28202) = {28007, 28005 , 28008};
Circle(28203) = {28008, 28005 , 28009};
Circle(28204) = {28009, 28005 , 28006};
  Line(28301) = {28001, 28006};
  Line(28302) = {28002, 28007};
  Line(28303) = {28003, 28008};
  Line(28304) = {28004, 28009};
  