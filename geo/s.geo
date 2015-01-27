//1. Sensorbohrung lks
wts1 = (360 - 20)/360*2*Pi;
// abstand von Flanschfläche aussen
zts1 = fhl + 5;
// Dicke/ Annäherung
dd = 1.0;
//T-Sensor Radius
tsr = 4.0/2;
dwtsu = Atan(tsr/(ir+dd));
// Radius der Punkte aussen
rtsa =Sqrt((ir+dd)^2 + tsr^2);
phi1 = 0/360*2*Pi;
phi2 = 90/360*2*Pi;
phi3 = 180/360*2*Pi;
phi4 = 270/360*2*Pi;
phi5 = 45/360*2*Pi;
phi6 = (90+45)/360*2*Pi;
phi7 = (180+45)/360*2*Pi;
phi8 = (270+45)/360*2*Pi;

  Point(20000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1};
  Point(20001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts1};
  Point(20003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts1};
  Point(20002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 - tsr};
  Point(20004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 + tsr};
  Point(20010) = {r1*Sin(wts1 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts1 - Asin(tsr*Sin( phi1)/r1)), zts1+ tsr*Cos(phi1 ) }; 
  Point(20011)	= {r1*Sin(wts1 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi2)/r1)), zts1+ tsr*Cos(phi2 ) }; 
  Point(20012) = {r1*Sin(wts1 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi3)/r1)) , zts1+ tsr*Cos(phi3 ) }; 
  Point(20013) = {r1*Sin(wts1 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi4)/r1)), zts1+ tsr*Cos(phi4) }; 
  Point(20014) = {r1*Sin(wts1 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts1 - Asin(tsr*Sin( phi5)/r1)), zts1+ tsr*Cos(phi5 ) }; 
  Point(20015) = {r1*Sin(wts1 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi6)/r1)), zts1+ tsr*Cos(phi6) }; 
  Point(20016) = {r1*Sin(wts1 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi7)/r1)) , zts1+ tsr*Cos(phi7 ) }; 
  Point(20017) = {r1*Sin(wts1 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts1 - Asin(tsr*Sin( phi8)/r1)), zts1+ tsr*Cos(phi8) }; 
   Line(20201) = {20002, 20012};
   Line(20202) = {20001, 20013};
   Line(20203) = {20004, 20010};
   Line(20204) = {20003, 20011};
 Circle(20101) = {20001, 20000, 20002};
 Circle(20102) = {20002, 20000, 20003};
 Circle(20103) = {20003, 20000, 20004};
 Circle(20104) = {20004, 20000, 20001};

//2. Sensorbohrung mitte
wts2 = (40)/360*2*Pi;
// abstand von Flanschfläche aussen
zts2 = (fhl + fhr)/2;

  Point(21000) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2};
  Point(21001) = {rtsa*Sin(wts2 + dwtsu), rtsa*Cos(wts2 + dwtsu),  zts2};
  Point(21003) = {rtsa*Sin(wts2 - dwtsu), rtsa*Cos(wts2 - dwtsu),  zts2};
  Point(21002) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2 - tsr};
  Point(21004) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2 + tsr};
  Point(21010) = {r1*Sin(wts2 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts2 - Asin(tsr*Sin( phi1)/r1)), zts2+ tsr*Cos(phi1 ) }; 
  Point(21011)	= {r1*Sin(wts2 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi2)/r1)), zts2+ tsr*Cos(phi2 ) }; 
  Point(21012) = {r1*Sin(wts2 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi3)/r1)) , zts2+ tsr*Cos(phi3 ) }; 
  Point(21013) = {r1*Sin(wts2 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi4)/r1)), zts2+ tsr*Cos(phi4) }; 
  Point(21014) = {r1*Sin(wts2 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts2 - Asin(tsr*Sin( phi5)/r1)), zts2+ tsr*Cos(phi5 ) }; 
  Point(21015) = {r1*Sin(wts2 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi6)/r1)), zts2+ tsr*Cos(phi6) }; 
  Point(21016) = {r1*Sin(wts2 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi7)/r1)) , zts2+ tsr*Cos(phi7 ) }; 
  Point(21017) = {r1*Sin(wts2 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts2 - Asin(tsr*Sin( phi8)/r1)), zts2+ tsr*Cos(phi8) }; 
   Line(21201) = {21002, 21012};
   Line(21202) = {21001, 21013};
   Line(21203) = {21004, 21010};
   Line(21204) = {21003, 21011};
 Circle(21101) = {21001, 21000, 21002};
 Circle(21102) = {21002, 21000, 21003};
 Circle(21103) = {21003, 21000, 21004};
 Circle(21104) = {21004, 21000, 21001};

//3. Sensorbohrung rechts
wts3 = (360-20)/360*2*Pi;
// abstand von Flanschfläche aussen
zts3 =  fhr - 5;

  Point(22000) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts3};
  Point(22001) = {rtsa*Sin(wts3 + dwtsu), rtsa*Cos(wts3 + dwtsu),  zts3};
  Point(22003) = {rtsa*Sin(wts3 - dwtsu), rtsa*Cos(wts3 - dwtsu),  zts3};
  Point(22002) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts3 - tsr};
  Point(22004) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts3 + tsr};
  Point(22010) = {r1*Sin(wts3 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts3 - Asin(tsr*Sin( phi1)/r1)), zts3+ tsr*Cos(phi1 ) }; 
  Point(22011)	= {r1*Sin(wts3 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi2)/r1)), zts3+ tsr*Cos(phi2 ) }; 
  Point(22012) = {r1*Sin(wts3 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi3)/r1)) , zts3+ tsr*Cos(phi3 ) }; 
  Point(22013) = {r1*Sin(wts3 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi4)/r1)), zts3+ tsr*Cos(phi4) }; 
  Point(22014) = {r1*Sin(wts3 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts3 - Asin(tsr*Sin( phi5)/r1)), zts3+ tsr*Cos(phi5 ) }; 
  Point(22015) = {r1*Sin(wts3 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi6)/r1)), zts3+ tsr*Cos(phi6) }; 
  Point(22016) = {r1*Sin(wts3 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi7)/r1)) , zts3+ tsr*Cos(phi7 ) }; 
  Point(22017) = {r1*Sin(wts3 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts3 - Asin(tsr*Sin( phi8)/r1)), zts3+ tsr*Cos(phi8) }; 
 Circle(22101) = {22001, 22000 , 22002};
 Circle(22102) = {22002, 22000 , 22003};
 Circle(22103) = {22003, 22000 , 22004};
 Circle(22104) = {22004, 22000 , 22001};
   Line(22201) = {22002, 22012};
   Line(22202) = {22001, 22013};
   Line(22203) = {22004, 22010};
   Line(22204) = {22003, 22011};


//4. Sensorbohrung lks
wts4 = (360 - 20 + 120)/360*2*Pi;
// abstand von Flanschfläche aussen
zts1 = fhl + 5;

  Point(23000) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts1};
  Point(23001) = {rtsa*Sin(wts4 + dwtsu), rtsa*Cos(wts4 + dwtsu),  zts1};
  Point(23003) = {rtsa*Sin(wts4 - dwtsu), rtsa*Cos(wts4 - dwtsu),  zts1};
  Point(23002) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts1 - tsr};
  Point(23004) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts1 + tsr};
  Point(23010) = {r1*Sin(wts4 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts4 - Asin(tsr*Sin( phi1)/r1)), zts1+ tsr*Cos(phi1 ) }; 
  Point(23011)	= {r1*Sin(wts4 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi2)/r1)), zts1+ tsr*Cos(phi2 ) }; 
  Point(23012) = {r1*Sin(wts4 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi3)/r1)) , zts1+ tsr*Cos(phi3 ) }; 
  Point(23013) = {r1*Sin(wts4 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi4)/r1)), zts1+ tsr*Cos(phi4) }; 
  Point(23014) = {r1*Sin(wts4 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts4 - Asin(tsr*Sin( phi5)/r1)), zts1+ tsr*Cos(phi5 ) }; 
  Point(23015) = {r1*Sin(wts4 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi6)/r1)), zts1+ tsr*Cos(phi6) }; 
  Point(23016) = {r1*Sin(wts4 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi7)/r1)) , zts1+ tsr*Cos(phi7 ) }; 
  Point(23017) = {r1*Sin(wts4 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts4 - Asin(tsr*Sin( phi8)/r1)), zts1+ tsr*Cos(phi8) }; 
   Line(23201) = {23002, 23012};
   Line(23202) = {23001, 23013};
   Line(23203) = {23004, 23010};
   Line(23204) = {23003, 23011};
 Circle(23101) = {23001, 23000, 23002};
 Circle(23102) = {23002, 23000, 23003};
 Circle(23103) = {23003, 23000, 23004};
 Circle(23104) = {23004, 23000, 23001};

//5. Sensorbohrung mitte
wts5 = (40 + 120)/360*2*Pi;
// abstand von Flanschfläche aussen
zts2 = (fhl + fhr)/2;

  Point(24000) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts2};
  Point(24001) = {rtsa*Sin(wts5 + dwtsu), rtsa*Cos(wts5 + dwtsu),  zts2};
  Point(24003) = {rtsa*Sin(wts5 - dwtsu), rtsa*Cos(wts5 - dwtsu),  zts2};
  Point(24002) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts2 - tsr};
  Point(24004) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts2 + tsr};
  Point(24010) = {r1*Sin(wts5 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts5 - Asin(tsr*Sin( phi1)/r1)), zts2+ tsr*Cos(phi1 ) }; 
  Point(24011)	= {r1*Sin(wts5 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi2)/r1)), zts2+ tsr*Cos(phi2 ) }; 
  Point(24012) = {r1*Sin(wts5 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi3)/r1)) , zts2+ tsr*Cos(phi3 ) }; 
  Point(24013) = {r1*Sin(wts5 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi4)/r1)), zts2+ tsr*Cos(phi4) }; 
  Point(24014) = {r1*Sin(wts5 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts5 - Asin(tsr*Sin( phi5)/r1)), zts2+ tsr*Cos(phi5 ) }; 
  Point(24015) = {r1*Sin(wts5 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi6)/r1)), zts2+ tsr*Cos(phi6) }; 
  Point(24016) = {r1*Sin(wts5 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi7)/r1)) , zts2+ tsr*Cos(phi7 ) }; 
  Point(24017) = {r1*Sin(wts5 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts5 - Asin(tsr*Sin( phi8)/r1)), zts2+ tsr*Cos(phi8) }; 
   Line(24201) = {24002, 24012};
   Line(24202) = {24001, 24013};
   Line(24203) = {24004, 24010};
   Line(24204) = {24003, 24011};
 Circle(24101) = {24001, 24000, 24002};
 Circle(24102) = {24002, 24000, 24003};
 Circle(24103) = {24003, 24000, 24004};
 Circle(24104) = {24004, 24000, 24001};

//6. Sensorbohrung rechts
wts6 = (360-20 +120)/360*2*Pi;
// abstand von Flanschfläche aussen
zts3 =  fhr - 5;

  Point(25000) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3};
  Point(25001) = {rtsa*Sin(wts6 + dwtsu), rtsa*Cos(wts6 + dwtsu),  zts3};
  Point(25003) = {rtsa*Sin(wts6 - dwtsu), rtsa*Cos(wts6 - dwtsu),  zts3};
  Point(25002) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3 - tsr};
  Point(25004) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3 + tsr};
  Point(25010) = {r1*Sin(wts6 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts6 - Asin(tsr*Sin( phi1)/r1)), zts3+ tsr*Cos(phi1 ) }; 
  Point(25011)	= {r1*Sin(wts6 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi2)/r1)), zts3+ tsr*Cos(phi2 ) }; 
  Point(25012) = {r1*Sin(wts6 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi3)/r1)) , zts3+ tsr*Cos(phi3 ) }; 
  Point(25013) = {r1*Sin(wts6 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi4)/r1)), zts3+ tsr*Cos(phi4) }; 
  Point(25014) = {r1*Sin(wts6 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts6 - Asin(tsr*Sin( phi5)/r1)), zts3+ tsr*Cos(phi5 ) }; 
  Point(25015) = {r1*Sin(wts6 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi6)/r1)), zts3+ tsr*Cos(phi6) }; 
  Point(25016) = {r1*Sin(wts6 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi7)/r1)) , zts3+ tsr*Cos(phi7 ) }; 
  Point(25017) = {r1*Sin(wts6 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts6 - Asin(tsr*Sin( phi8)/r1)), zts3+ tsr*Cos(phi8) }; 
 Circle(25101) = {25001, 25000 , 25002};
 Circle(25102) = {25002, 25000 , 25003};
 Circle(25103) = {25003, 25000 , 25004};
 Circle(25104) = {25004, 25000 , 25001};
   Line(25201) = {25002, 25012};
   Line(25202) = {25001, 25013};
   Line(25203) = {25004, 25010};
   Line(25204) = {25003, 25011};



//7. Sensorbohrung lks
wts7 = (360 - 20 + 240)/360*2*Pi;
// abstand von Flanschfläche aussen
zts1 = fhl + 5;

  Point(26000) = {(ir+dd)*Sin(wts7), (ir+dd)*Cos(wts7),  zts1};
  Point(26001) = {rtsa*Sin(wts7 + dwtsu), rtsa*Cos(wts7 + dwtsu),  zts1};
  Point(26003) = {rtsa*Sin(wts7 - dwtsu), rtsa*Cos(wts7 - dwtsu),  zts1};
  Point(26002) = {(ir+dd)*Sin(wts7), (ir+dd)*Cos(wts7),  zts1 - tsr};
  Point(26004) = {(ir+dd)*Sin(wts7), (ir+dd)*Cos(wts7),  zts1 + tsr};
  Point(26010) = {r1*Sin(wts7 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts7 - Asin(tsr*Sin( phi1)/r1)), zts1+ tsr*Cos(phi1 ) }; 
  Point(26011)	= {r1*Sin(wts7 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi2)/r1)), zts1+ tsr*Cos(phi2 ) }; 
  Point(26012) = {r1*Sin(wts7 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi3)/r1)) , zts1+ tsr*Cos(phi3 ) }; 
  Point(26013) = {r1*Sin(wts7 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi4)/r1)), zts1+ tsr*Cos(phi4) }; 
  Point(26014) = {r1*Sin(wts7 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts7 - Asin(tsr*Sin( phi5)/r1)), zts1+ tsr*Cos(phi5 ) }; 
  Point(26015) = {r1*Sin(wts7 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi6)/r1)), zts1+ tsr*Cos(phi6) }; 
  Point(26016) = {r1*Sin(wts7 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi7)/r1)) , zts1+ tsr*Cos(phi7 ) }; 
  Point(26017) = {r1*Sin(wts7 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts7 - Asin(tsr*Sin( phi8)/r1)), zts1+ tsr*Cos(phi8) }; 
   Line(26201) = {26002, 26012};
   Line(26202) = {26001, 26013};
   Line(26203) = {26004, 26010};
   Line(26204) = {26003, 26011};
 Circle(26101) = {26001, 26000, 26002};
 Circle(26102) = {26002, 26000, 26003};
 Circle(26103) = {26003, 26000, 26004};
 Circle(26104) = {26004, 26000, 26001};

//8. Sensorbohrung mitte
wts8 = (40 + 240)/360*2*Pi;
// abstand von Flanschfläche aussen
zts2 = (fhl + fhr)/2;

  Point(27000) = {(ir+dd)*Sin(wts8), (ir+dd)*Cos(wts8),  zts2};
  Point(27001) = {rtsa*Sin(wts8 + dwtsu), rtsa*Cos(wts8 + dwtsu),  zts2};
  Point(27003) = {rtsa*Sin(wts8 - dwtsu), rtsa*Cos(wts8 - dwtsu),  zts2};
  Point(27002) = {(ir+dd)*Sin(wts8), (ir+dd)*Cos(wts8),  zts2 - tsr};
  Point(27004) = {(ir+dd)*Sin(wts8), (ir+dd)*Cos(wts8),  zts2 + tsr};
  Point(27010) = {r1*Sin(wts8 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts8 - Asin(tsr*Sin( phi1)/r1)), zts2+ tsr*Cos(phi1 ) }; 
  Point(27011)	= {r1*Sin(wts8 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi2)/r1)), zts2+ tsr*Cos(phi2 ) }; 
  Point(27012) = {r1*Sin(wts8 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi3)/r1)) , zts2+ tsr*Cos(phi3 ) }; 
  Point(27013) = {r1*Sin(wts8 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi4)/r1)), zts2+ tsr*Cos(phi4) }; 
  Point(27014) = {r1*Sin(wts8 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts8 - Asin(tsr*Sin( phi5)/r1)), zts2+ tsr*Cos(phi5 ) }; 
  Point(27015) = {r1*Sin(wts8 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi6)/r1)), zts2+ tsr*Cos(phi6) }; 
  Point(27016) = {r1*Sin(wts8 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi7)/r1)) , zts2+ tsr*Cos(phi7 ) }; 
  Point(27017) = {r1*Sin(wts8 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts8 - Asin(tsr*Sin( phi8)/r1)), zts2+ tsr*Cos(phi8) }; 
   Line(27201) = {27002, 27012};
   Line(27202) = {27001, 27013};
   Line(27203) = {27004, 27010};
   Line(27204) = {27003, 27011};
 Circle(27101) = {27001, 27000, 27002};
 Circle(27102) = {27002, 27000, 27003};
 Circle(27103) = {27003, 27000, 27004};
 Circle(27104) = {27004, 27000, 27001};

//9. Sensorbohrung rechts
wts9 = (360-20 + 240)/360*2*Pi;
// abstand von Flanschfläche aussen
zts3 =  fhr - 5;

  Point(28000) = {(ir+dd)*Sin(wts9), (ir+dd)*Cos(wts9),  zts3};
  Point(28001) = {rtsa*Sin(wts9 + dwtsu), rtsa*Cos(wts9 + dwtsu),  zts3};
  Point(28003) = {rtsa*Sin(wts9 - dwtsu), rtsa*Cos(wts9 - dwtsu),  zts3};
  Point(28002) = {(ir+dd)*Sin(wts9), (ir+dd)*Cos(wts9),  zts3 - tsr};
  Point(28004) = {(ir+dd)*Sin(wts9), (ir+dd)*Cos(wts9),  zts3 + tsr};
  Point(28010) = {r1*Sin(wts9 - Asin(tsr*Sin( phi1)/r1)) , r1*Cos(wts9 - Asin(tsr*Sin( phi1)/r1)), zts3+ tsr*Cos(phi1 ) }; 
  Point(28011)	= {r1*Sin(wts9 - Asin(tsr*Sin( phi2)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi2)/r1)), zts3+ tsr*Cos(phi2 ) }; 
  Point(28012) = {r1*Sin(wts9 - Asin(tsr*Sin( phi3)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi3)/r1)) , zts3+ tsr*Cos(phi3 ) }; 
  Point(28013) = {r1*Sin(wts9 - Asin(tsr*Sin( phi4)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi4)/r1)), zts3+ tsr*Cos(phi4) }; 
  Point(28014) = {r1*Sin(wts9 - Asin(tsr*Sin( phi5)/r1)) , r1*Cos(wts9 - Asin(tsr*Sin( phi5)/r1)), zts3+ tsr*Cos(phi5 ) }; 
  Point(28015) = {r1*Sin(wts9 - Asin(tsr*Sin( phi6)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi6)/r1)), zts3+ tsr*Cos(phi6) }; 
  Point(28016) = {r1*Sin(wts9 - Asin(tsr*Sin( phi7)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi7)/r1)) , zts3+ tsr*Cos(phi7 ) }; 
  Point(28017) = {r1*Sin(wts9 - Asin(tsr*Sin( phi8)/r1)), r1*Cos(wts9 - Asin(tsr*Sin( phi8)/r1)), zts3+ tsr*Cos(phi8) }; 
 Circle(28101) = {28001, 28000 , 28002};
 Circle(28102) = {28002, 28000 , 28003};
 Circle(28103) = {28003, 28000 , 28004};
 Circle(28104) = {28004, 28000 , 28001};
   Line(28201) = {28002, 28012};
   Line(28202) = {28001, 28013};
   Line(28203) = {28004, 28010};
   Line(28204) = {28003, 28011};


Spline(28277) = {24011, 24014, 24010};
Spline(28278) = {24010, 24017, 24013};
Spline(28279) = {24013, 24016, 24012};
Spline(28280) = {24012, 24015, 24011};
Spline(28294) = {27011, 27014, 27010};
Spline(28295) = {27010, 27017, 27013};
Spline(28296) = {27013, 27016, 27012};
Spline(28297) = {27012, 27015, 27011};
Spline(28298) = {28013, 28016, 28012};
Spline(28299) = {28012, 28015, 28011};
Spline(28300) = {28011, 28014, 28010};
Spline(28301) = {28010, 28017, 28013};
Spline(28302) = {20012, 20015, 20011};
Spline(28303) = {20011, 20014, 20010};
Spline(28304) = {20010, 20017, 20013};
Spline(28305) = {20013, 20016, 20012};
Spline(28306) = {26010, 26017, 26013};
Spline(28307) = {26013, 26016, 26012};
Spline(28308) = {26012, 26015, 26011};
Spline(28309) = {26011, 26014, 26010};
Spline(28310) = {23013, 23016, 23012};
Spline(28311) = {23012, 23015, 23011};
Spline(28312) = {23011, 23014, 23010};
Spline(28313) = {23010, 23017, 23013};
Spline(28314) = {21011, 21014, 21010};
Spline(28315) = {21010, 21017, 21013};
Spline(28316) = {21013, 21016, 21012};
Spline(28317) = {21012, 21015, 21011};
Spline(28318) = {22012, 22015, 22011};
Spline(28319) = {22011, 22014, 22010};
Spline(28320) = {22010, 22017, 22013};
Spline(28321) = {22013, 22016, 22012};
Spline(28322) = {25011, 25014, 25010};
Spline(28323) = {25010, 25017, 25013};
Spline(28324) = {25013, 25016, 25012};
Spline(28325) = {25012, 25015, 25011};
