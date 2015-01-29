//1. Sensorbohrung lks
wts1 = (360 - 15)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts1 = fhl + 5;
// Dicke/ Annäherung
dd = 1.0;
//T-Sensor Radius
tsr = 4.0/2;
dwtsu = Atan(tsr/(ir+dd));


// Radius der Punkte aussen
rtsa =Sqrt((ir+dd)^2 + tsr^2);

// Mantelfläche
//flächensegment 6x6mm
fb = 6.0;
// radius fläche zentrum
fr = Sqrt(r1^2 - (1/2*fb)^2);
// winkel Fläche
dwfl = Asin(1/2 * fb/r1);
// Radius der Flächenpunkte oben Mantel
rtsm =Sqrt(fr^2 + tsr^2);
// winkel sensor mantel
dws = Asin(tsr/fr);

        Point(20000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1};
        Point(20001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts1};
        Point(20003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts1};
        Point(20002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 - tsr};
        Point(20004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts1 + tsr};
        Point(20010) = {fr*Sin(wts1), fr*Cos(wts1),  zts1};
        Point(20020) = {0, 0, zts1 - fb/2};
        Point(20021) = {0, 0, zts1 + fb/2};
        Point(20022) = {r1*Sin(wts1 + dwfl), r1*Cos(wts1 + dwfl),  zts1 + fb/2};
        Point(20023) = {r1*Sin(wts1 - dwfl), r1*Cos(wts1 - dwfl),  zts1 + fb/2};
        Point(20024) = {r1*Sin(wts1 + dwfl), r1*Cos(wts1 + dwfl),  zts1 - fb/2};
        Point(20025) = {r1*Sin(wts1 - dwfl), r1*Cos(wts1 - dwfl),  zts1 - fb/2};
        Point(20031) = {rtsm*Sin(wts1 + dws), rtsm*Cos(wts1 + dws),  zts1};
        Point(20033) = {rtsm*Sin(wts1 - dws), rtsm*Cos(wts1 - dws),  zts1};
        Point(20032) = {fr*Sin(wts1), fr*Cos(wts1),  zts1 - tsr};
        Point(20034) = {fr*Sin(wts1), fr*Cos(wts1),  zts1 + tsr};
       Circle(20549) = {20023, 20021, 20022};
       Circle(20550) = {20025, 20020, 20024};
       Circle(20551) = {20002, 20000, 20003};
       Circle(20552) = {20003, 20000, 20004};
       Circle(20553) = {20004, 20000, 20001};
       Circle(20554) = {20001, 20000, 20002};
       Circle(20555) = {20031, 20010, 20032};
       Circle(20556) = {20032, 20010, 20033};
       Circle(20557) = {20033, 20010, 20034};
       Circle(20558) = {20034, 20010, 20031};
         Line(20559) = {20024, 20022};
         Line(20560) = {20025, 20023};
         Line(20561) = {20025, 20024};
         Line(20562) = {20022, 20023};
         Line(20563) = {20033, 20003};
         Line(20564) = {20002, 20032};
         Line(20565) = {20001, 20031};
         Line(20566) = {20004, 20034};
    Line Loop(20567) = {20549, 20562};
    Line Loop(20569) = {20550,-20561};
    Line Loop(20571) = {20561, 20559, 20562,-20560};
    Line Loop(20572) = {20558, 20555, 20556, 20557};
    Line Loop(20574) = {20563, 20552, 20566,-20557};
    Line Loop(20576) = {20558,-20565,-20553, 20566};
    Line Loop(20578) = {20554, 20564,-20555,-20565};
    Line Loop(20580) = {20564, 20556, 20563,-20551};
    Line Loop(20582) = {20551, 20552, 20553, 20554};
Plane Surface(20573) = {20571, 20572};
Plane Surface(20583) = {20582};
Plane Surface(20568) = {20567};
Plane Surface(20570) = {20569};
Ruled Surface(20581) = {20580};
Ruled Surface(20579) = {20578};
Ruled Surface(20577) = {20576};
Ruled Surface(20575) = {20574};

//2. Sensorbohrung lks
wts2 = (360 +115)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts1 = fhl + 5;

        Point(21000) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts1};
        Point(21001) = {rtsa*Sin(wts2 + dwtsu), rtsa*Cos(wts2 + dwtsu),  zts1};
        Point(21003) = {rtsa*Sin(wts2 - dwtsu), rtsa*Cos(wts2 - dwtsu),  zts1};
        Point(21002) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts1 - tsr};
        Point(21004) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts1 + tsr};
        Point(21010) = {fr*Sin(wts2), fr*Cos(wts2),  zts1};
        Point(21020) = {0, 0, zts1 - fb/2};
        Point(21021) = {0, 0, zts1 + fb/2};
        Point(21022) = {r1*Sin(wts2 + dwfl), r1*Cos(wts2 + dwfl),  zts1 + fb/2};
        Point(21023) = {r1*Sin(wts2 - dwfl), r1*Cos(wts2 - dwfl),  zts1 + fb/2};
        Point(21024) = {r1*Sin(wts2 + dwfl), r1*Cos(wts2 + dwfl),  zts1 - fb/2};
        Point(21025) = {r1*Sin(wts2 - dwfl), r1*Cos(wts2 - dwfl),  zts1 - fb/2};
        Point(21031) = {rtsm*Sin(wts2 + dws), rtsm*Cos(wts2 + dws),  zts1};
        Point(21033) = {rtsm*Sin(wts2 - dws), rtsm*Cos(wts2 - dws),  zts1};
        Point(21032) = {fr*Sin(wts2), fr*Cos(wts2),  zts1 - tsr};
        Point(21034) = {fr*Sin(wts2), fr*Cos(wts2),  zts1 + tsr};
       Circle(21549) = {21023, 21021, 21022};
       Circle(21550) = {21025, 21020, 21024};
       Circle(21551) = {21002, 21000, 21003};
       Circle(21552) = {21003, 21000, 21004};
       Circle(21553) = {21004, 21000, 21001};
       Circle(21554) = {21001, 21000, 21002};
       Circle(21555) = {21031, 21010, 21032};
       Circle(21556) = {21032, 21010, 21033};
       Circle(21557) = {21033, 21010, 21034};
       Circle(21558) = {21034, 21010, 21031};
         Line(21559) = {21024, 21022};
         Line(21560) = {21025, 21023};
         Line(21561) = {21025, 21024};
         Line(21562) = {21022, 21023};
         Line(21563) = {21033, 21003};
         Line(21564) = {21002, 21032};
         Line(21565) = {21001, 21031};
         Line(21566) = {21004, 21034};
    Line Loop(21567) = {21549, 21562};
    Line Loop(21569) = {21550,-21561};
    Line Loop(21571) = {21561, 21559, 21562,-21560};
    Line Loop(21572) = {21558, 21555, 21556, 21557};
    Line Loop(21574) = {21563, 21552, 21566,-21557};
    Line Loop(21576) = {21558,-21565,-21553, 21566};
    Line Loop(21578) = {21554, 21564,-21555,-21565};
    Line Loop(21580) = {21564, 21556, 21563,-21551};
    Line Loop(21582) = {21551, 21552, 21553, 21554};
Plane Surface(21573) = {21571, 21572};
Plane Surface(21583) = {21582};
Plane Surface(21568) = {21567};
Plane Surface(21570) = {21569};
Ruled Surface(21581) = {21580};
Ruled Surface(21579) = {21578};
Ruled Surface(21577) = {21576};
Ruled Surface(21575) = {21574};


//3. Sensorbohrung lks
wts3 = (360 +235)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts1 = fhl + 5;

        Point(22000) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts1};
        Point(22001) = {rtsa*Sin(wts3 + dwtsu), rtsa*Cos(wts3 + dwtsu),  zts1};
        Point(22003) = {rtsa*Sin(wts3 - dwtsu), rtsa*Cos(wts3 - dwtsu),  zts1};
        Point(22002) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts1 - tsr};
        Point(22004) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts1 + tsr};
        Point(22010) = {fr*Sin(wts3), fr*Cos(wts3),  zts1};
        Point(22020) = {0, 0, zts1 - fb/2};
        Point(22021) = {0, 0, zts1 + fb/2};
        Point(22022) = {r1*Sin(wts3 + dwfl), r1*Cos(wts3 + dwfl),  zts1 + fb/2};
        Point(22023) = {r1*Sin(wts3 - dwfl), r1*Cos(wts3 - dwfl),  zts1 + fb/2};
        Point(22024) = {r1*Sin(wts3 + dwfl), r1*Cos(wts3 + dwfl),  zts1 - fb/2};
        Point(22025) = {r1*Sin(wts3 - dwfl), r1*Cos(wts3 - dwfl),  zts1 - fb/2};
        Point(22031) = {rtsm*Sin(wts3 + dws), rtsm*Cos(wts3 + dws),  zts1};
        Point(22033) = {rtsm*Sin(wts3 - dws), rtsm*Cos(wts3 - dws),  zts1};
        Point(22032) = {fr*Sin(wts3), fr*Cos(wts3),  zts1 - tsr};
        Point(22034) = {fr*Sin(wts3), fr*Cos(wts3),  zts1 + tsr};
       Circle(22549) = {22023, 22021, 22022};
       Circle(22550) = {22025, 22020, 22024};
       Circle(22551) = {22002, 22000, 22003};
       Circle(22552) = {22003, 22000, 22004};
       Circle(22553) = {22004, 22000, 22001};
       Circle(22554) = {22001, 22000, 22002};
       Circle(22555) = {22031, 22010, 22032};
       Circle(22556) = {22032, 22010, 22033};
       Circle(22557) = {22033, 22010, 22034};
       Circle(22558) = {22034, 22010, 22031};
         Line(22559) = {22024, 22022};
         Line(22560) = {22025, 22023};
         Line(22561) = {22025, 22024};
         Line(22562) = {22022, 22023};
         Line(22563) = {22033, 22003};
         Line(22564) = {22002, 22032};
         Line(22565) = {22001, 22031};
         Line(22566) = {22004, 22034};
    Line Loop(22567) = {22549, 22562};
    Line Loop(22569) = {22550,-22561};
    Line Loop(22571) = {22561, 22559, 22562,-22560};
    Line Loop(22572) = {22558, 22555, 22556, 22557};
    Line Loop(22574) = {22563, 22552, 22566,-22557};
    Line Loop(22576) = {22558,-22565,-22553, 22566};
    Line Loop(22578) = {22554, 22564,-22555,-22565};
    Line Loop(22580) = {22564, 22556, 22563,-22551};
    Line Loop(22582) = {22551, 22552, 22553, 22554};
Plane Surface(22573) = {22571, 22572};
Plane Surface(22583) = {22582};
Plane Surface(22568) = {22567};
Plane Surface(22570) = {22569};
Ruled Surface(22581) = {22580};
Ruled Surface(22579) = {22578};
Ruled Surface(22577) = {22576};
Ruled Surface(22575) = {22574};

//1. Sensorbohrung lks
wts1 = (360 - 15)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts2 = fhr - 5;

        Point(23000) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2};
        Point(23001) = {rtsa*Sin(wts1 + dwtsu), rtsa*Cos(wts1 + dwtsu),  zts2};
        Point(23003) = {rtsa*Sin(wts1 - dwtsu), rtsa*Cos(wts1 - dwtsu),  zts2};
        Point(23002) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 - tsr};
        Point(23004) = {(ir+dd)*Sin(wts1), (ir+dd)*Cos(wts1),  zts2 + tsr};
        Point(23010) = {fr*Sin(wts1), fr*Cos(wts1),  zts2};
        Point(23020) = {0, 0, zts2 - fb/2};
        Point(23021) = {0, 0, zts2 + fb/2};
        Point(23022) = {r1*Sin(wts1 + dwfl), r1*Cos(wts1 + dwfl),  zts2 + fb/2};
        Point(23023) = {r1*Sin(wts1 - dwfl), r1*Cos(wts1 - dwfl),  zts2 + fb/2};
        Point(23024) = {r1*Sin(wts1 + dwfl), r1*Cos(wts1 + dwfl),  zts2 - fb/2};
        Point(23025) = {r1*Sin(wts1 - dwfl), r1*Cos(wts1 - dwfl),  zts2 - fb/2};
        Point(23031) = {rtsm*Sin(wts1 + dws), rtsm*Cos(wts1 + dws),  zts2};
        Point(23033) = {rtsm*Sin(wts1 - dws), rtsm*Cos(wts1 - dws),  zts2};
        Point(23032) = {fr*Sin(wts1), fr*Cos(wts1),  zts2 - tsr};
        Point(23034) = {fr*Sin(wts1), fr*Cos(wts1),  zts2 + tsr};
       Circle(23549) = {23023, 23021, 23022};
       Circle(23550) = {23025, 23020, 23024};
       Circle(23551) = {23002, 23000, 23003};
       Circle(23552) = {23003, 23000, 23004};
       Circle(23553) = {23004, 23000, 23001};
       Circle(23554) = {23001, 23000, 23002};
       Circle(23555) = {23031, 23010, 23032};
       Circle(23556) = {23032, 23010, 23033};
       Circle(23557) = {23033, 23010, 23034};
       Circle(23558) = {23034, 23010, 23031};
         Line(23559) = {23024, 23022};
         Line(23560) = {23025, 23023};
         Line(23561) = {23025, 23024};
         Line(23562) = {23022, 23023};
         Line(23563) = {23033, 23003};
         Line(23564) = {23002, 23032};
         Line(23565) = {23001, 23031};
         Line(23566) = {23004, 23034};
    Line Loop(23567) = {23549, 23562};
    Line Loop(23569) = {23550,-23561};
    Line Loop(23571) = {23561, 23559, 23562,-23560};
    Line Loop(23572) = {23558, 23555, 23556, 23557};
    Line Loop(23574) = {23563, 23552, 23566,-23557};
    Line Loop(23576) = {23558,-23565,-23553, 23566};
    Line Loop(23578) = {23554, 23564,-23555,-23565};
    Line Loop(23580) = {23564, 23556, 23563,-23551};
    Line Loop(23582) = {23551, 23552, 23553, 23554};
Plane Surface(23573) = {23571, 23572};
Plane Surface(23583) = {23582};
Plane Surface(23568) = {23567};
Plane Surface(23570) = {23569};
Ruled Surface(23581) = {23580};
Ruled Surface(23579) = {23578};
Ruled Surface(23577) = {23576};
Ruled Surface(23575) = {23574};

//2. Sensorbohrung lks
wts2 = (360 +115)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts2 = fhr - 5;

        Point(24000) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2};
        Point(24001) = {rtsa*Sin(wts2 + dwtsu), rtsa*Cos(wts2 + dwtsu),  zts2};
        Point(24003) = {rtsa*Sin(wts2 - dwtsu), rtsa*Cos(wts2 - dwtsu),  zts2};
        Point(24002) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2 - tsr};
        Point(24004) = {(ir+dd)*Sin(wts2), (ir+dd)*Cos(wts2),  zts2 + tsr};
        Point(24010) = {fr*Sin(wts2), fr*Cos(wts2),  zts2};
        Point(24020) = {0, 0, zts2 - fb/2};
        Point(24021) = {0, 0, zts2 + fb/2};
        Point(24022) = {r1*Sin(wts2 + dwfl), r1*Cos(wts2 + dwfl),  zts2 + fb/2};
        Point(24023) = {r1*Sin(wts2 - dwfl), r1*Cos(wts2 - dwfl),  zts2 + fb/2};
        Point(24024) = {r1*Sin(wts2 + dwfl), r1*Cos(wts2 + dwfl),  zts2 - fb/2};
        Point(24025) = {r1*Sin(wts2 - dwfl), r1*Cos(wts2 - dwfl),  zts2 - fb/2};
        Point(24031) = {rtsm*Sin(wts2 + dws), rtsm*Cos(wts2 + dws),  zts2};
        Point(24033) = {rtsm*Sin(wts2 - dws), rtsm*Cos(wts2 - dws),  zts2};
        Point(24032) = {fr*Sin(wts2), fr*Cos(wts2),  zts2 - tsr};
        Point(24034) = {fr*Sin(wts2), fr*Cos(wts2),  zts2 + tsr};
       Circle(24549) = {24023, 24021, 24022};
       Circle(24550) = {24025, 24020, 24024};
       Circle(24551) = {24002, 24000, 24003};
       Circle(24552) = {24003, 24000, 24004};
       Circle(24553) = {24004, 24000, 24001};
       Circle(24554) = {24001, 24000, 24002};
       Circle(24555) = {24031, 24010, 24032};
       Circle(24556) = {24032, 24010, 24033};
       Circle(24557) = {24033, 24010, 24034};
       Circle(24558) = {24034, 24010, 24031};
         Line(24559) = {24024, 24022};
         Line(24560) = {24025, 24023};
         Line(24561) = {24025, 24024};
         Line(24562) = {24022, 24023};
         Line(24563) = {24033, 24003};
         Line(24564) = {24002, 24032};
         Line(24565) = {24001, 24031};
         Line(24566) = {24004, 24034};
    Line Loop(24567) = {24549, 24562};
    Line Loop(24569) = {24550,-24561};
    Line Loop(24571) = {24561, 24559, 24562,-24560};
    Line Loop(24572) = {24558, 24555, 24556, 24557};
    Line Loop(24574) = {24563, 24552, 24566,-24557};
    Line Loop(24576) = {24558,-24565,-24553, 24566};
    Line Loop(24578) = {24554, 24564,-24555,-24565};
    Line Loop(24580) = {24564, 24556, 24563,-24551};
    Line Loop(24582) = {24551, 24552, 24553, 24554};
Plane Surface(24573) = {24571, 24572};
Plane Surface(24583) = {24582};
Plane Surface(24568) = {24567};
Plane Surface(24570) = {24569};
Ruled Surface(24581) = {24580};
Ruled Surface(24579) = {24578};
Ruled Surface(24577) = {24576};
Ruled Surface(24575) = {24574};


//3. Sensorbohrung lks
wts3 = (360 +235)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts2 = fhr - 5;

        Point(25000) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts2};
        Point(25001) = {rtsa*Sin(wts3 + dwtsu), rtsa*Cos(wts3 + dwtsu),  zts2};
        Point(25003) = {rtsa*Sin(wts3 - dwtsu), rtsa*Cos(wts3 - dwtsu),  zts2};
        Point(25002) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts2 - tsr};
        Point(25004) = {(ir+dd)*Sin(wts3), (ir+dd)*Cos(wts3),  zts2 + tsr};
        Point(25010) = {fr*Sin(wts3), fr*Cos(wts3),  zts2};
        Point(25020) = {0, 0, zts2 - fb/2};
        Point(25021) = {0, 0, zts2 + fb/2};
        Point(25022) = {r1*Sin(wts3 + dwfl), r1*Cos(wts3 + dwfl),  zts2 + fb/2};
        Point(25023) = {r1*Sin(wts3 - dwfl), r1*Cos(wts3 - dwfl),  zts2 + fb/2};
        Point(25024) = {r1*Sin(wts3 + dwfl), r1*Cos(wts3 + dwfl),  zts2 - fb/2};
        Point(25025) = {r1*Sin(wts3 - dwfl), r1*Cos(wts3 - dwfl),  zts2 - fb/2};
        Point(25031) = {rtsm*Sin(wts3 + dws), rtsm*Cos(wts3 + dws),  zts2};
        Point(25033) = {rtsm*Sin(wts3 - dws), rtsm*Cos(wts3 - dws),  zts2};
        Point(25032) = {fr*Sin(wts3), fr*Cos(wts3),  zts2 - tsr};
        Point(25034) = {fr*Sin(wts3), fr*Cos(wts3),  zts2 + tsr};
       Circle(25549) = {25023, 25021, 25022};
       Circle(25550) = {25025, 25020, 25024};
       Circle(25551) = {25002, 25000, 25003};
       Circle(25552) = {25003, 25000, 25004};
       Circle(25553) = {25004, 25000, 25001};
       Circle(25554) = {25001, 25000, 25002};
       Circle(25555) = {25031, 25010, 25032};
       Circle(25556) = {25032, 25010, 25033};
       Circle(25557) = {25033, 25010, 25034};
       Circle(25558) = {25034, 25010, 25031};
         Line(25559) = {25024, 25022};
         Line(25560) = {25025, 25023};
         Line(25561) = {25025, 25024};
         Line(25562) = {25022, 25023};
         Line(25563) = {25033, 25003};
         Line(25564) = {25002, 25032};
         Line(25565) = {25001, 25031};
         Line(25566) = {25004, 25034};
    Line Loop(25567) = {25549, 25562};
    Line Loop(25569) = {25550,-25561};
    Line Loop(25571) = {25561, 25559, 25562,-25560};
    Line Loop(25572) = {25558, 25555, 25556, 25557};
    Line Loop(25574) = {25563, 25552, 25566,-25557};
    Line Loop(25576) = {25558,-25565,-25553, 25566};
    Line Loop(25578) = {25554, 25564,-25555,-25565};
    Line Loop(25580) = {25564, 25556, 25563,-25551};
    Line Loop(25582) = {25551, 25552, 25553, 25554};
Plane Surface(25573) = {25571, 25572};
Plane Surface(25583) = {25582};
Plane Surface(25568) = {25567};
Plane Surface(25570) = {25569};
Ruled Surface(25581) = {25580};
Ruled Surface(25579) = {25578};
Ruled Surface(25577) = {25576};
Ruled Surface(25575) = {25574};


//1. Sensorbohrung mitte
wts4 = (55)/360*2*Pi;
// Abstand von Flanschfläche aussen
zts3 = (fhr + fhl)/2;

        Point(26000) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts3};
        Point(26001) = {rtsa*Sin(wts4 + dwtsu), rtsa*Cos(wts4 + dwtsu),  zts3};
        Point(26003) = {rtsa*Sin(wts4 - dwtsu), rtsa*Cos(wts4 - dwtsu),  zts3};
        Point(26002) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts3 - tsr};
        Point(26004) = {(ir+dd)*Sin(wts4), (ir+dd)*Cos(wts4),  zts3 + tsr};
        Point(26010) = {fr*Sin(wts4), fr*Cos(wts4),  zts3};
        Point(26020) = {0, 0, zts3 - fb/2};
        Point(26021) = {0, 0, zts3 + fb/2};
        Point(26022) = {r1*Sin(wts4 + dwfl), r1*Cos(wts4 + dwfl),  zts3 + fb/2};
        Point(26023) = {r1*Sin(wts4 - dwfl), r1*Cos(wts4 - dwfl),  zts3 + fb/2};
        Point(26024) = {r1*Sin(wts4 + dwfl), r1*Cos(wts4 + dwfl),  zts3 - fb/2};
        Point(26025) = {r1*Sin(wts4 - dwfl), r1*Cos(wts4 - dwfl),  zts3 - fb/2};
        Point(26031) = {rtsm*Sin(wts4 + dws), rtsm*Cos(wts4 + dws),  zts3};
        Point(26033) = {rtsm*Sin(wts4 - dws), rtsm*Cos(wts4 - dws),  zts3};
        Point(26032) = {fr*Sin(wts4), fr*Cos(wts4),  zts3 - tsr};
        Point(26034) = {fr*Sin(wts4), fr*Cos(wts4),  zts3 + tsr};
       Circle(26549) = {26023, 26021, 26022};
       Circle(26550) = {26025, 26020, 26024};
       Circle(26551) = {26002, 26000, 26003};
       Circle(26552) = {26003, 26000, 26004};
       Circle(26553) = {26004, 26000, 26001};
       Circle(26554) = {26001, 26000, 26002};
       Circle(26555) = {26031, 26010, 26032};
       Circle(26556) = {26032, 26010, 26033};
       Circle(26557) = {26033, 26010, 26034};
       Circle(26558) = {26034, 26010, 26031};
         Line(26559) = {26024, 26022};
         Line(26560) = {26025, 26023};
         Line(26561) = {26025, 26024};
         Line(26562) = {26022, 26023};
         Line(26563) = {26033, 26003};
         Line(26564) = {26002, 26032};
         Line(26565) = {26001, 26031};
         Line(26566) = {26004, 26034};
    Line Loop(26567) = {26549, 26562};
    Line Loop(26569) = {26550,-26561};
    Line Loop(26571) = {26561, 26559, 26562,-26560};
    Line Loop(26572) = {26558, 26555, 26556, 26557};
    Line Loop(26574) = {26563, 26552, 26566,-26557};
    Line Loop(26576) = {26558,-26565,-26553, 26566};
    Line Loop(26578) = {26554, 26564,-26555,-26565};
    Line Loop(26580) = {26564, 26556, 26563,-26551};
    Line Loop(26582) = {26551, 26552, 26553, 26554};
Plane Surface(26573) = {26571, 26572};
Plane Surface(26583) = {26582};
Plane Surface(26568) = {26567};
Plane Surface(26570) = {26569};
Ruled Surface(26581) = {26580};
Ruled Surface(26579) = {26578};
Ruled Surface(26577) = {26576};
Ruled Surface(26575) = {26574};

//2. Sensorbohrung lks
wts5 = (165)/360*2*Pi;
// Abstand von Flanschfläche aussen


        Point(27000) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts3};
        Point(27001) = {rtsa*Sin(wts5 + dwtsu), rtsa*Cos(wts5 + dwtsu),  zts3};
        Point(27003) = {rtsa*Sin(wts5 - dwtsu), rtsa*Cos(wts5 - dwtsu),  zts3};
        Point(27002) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts3 - tsr};
        Point(27004) = {(ir+dd)*Sin(wts5), (ir+dd)*Cos(wts5),  zts3 + tsr};
        Point(27010) = {fr*Sin(wts5), fr*Cos(wts5),  zts3};
        Point(27020) = {0, 0, zts3 - fb/2};
        Point(27021) = {0, 0, zts3 + fb/2};
        Point(27022) = {r1*Sin(wts5 + dwfl), r1*Cos(wts5 + dwfl),  zts3 + fb/2};
        Point(27023) = {r1*Sin(wts5 - dwfl), r1*Cos(wts5 - dwfl),  zts3 + fb/2};
        Point(27024) = {r1*Sin(wts5 + dwfl), r1*Cos(wts5 + dwfl),  zts3 - fb/2};
        Point(27025) = {r1*Sin(wts5 - dwfl), r1*Cos(wts5 - dwfl),  zts3 - fb/2};
        Point(27031) = {rtsm*Sin(wts5 + dws), rtsm*Cos(wts5 + dws),  zts3};
        Point(27033) = {rtsm*Sin(wts5 - dws), rtsm*Cos(wts5 - dws),  zts3};
        Point(27032) = {fr*Sin(wts5), fr*Cos(wts5),  zts3 - tsr};
        Point(27034) = {fr*Sin(wts5), fr*Cos(wts5),  zts3 + tsr};
       Circle(27549) = {27023, 27021, 27022};
       Circle(27550) = {27025, 27020, 27024};
       Circle(27551) = {27002, 27000, 27003};
       Circle(27552) = {27003, 27000, 27004};
       Circle(27553) = {27004, 27000, 27001};
       Circle(27554) = {27001, 27000, 27002};
       Circle(27555) = {27031, 27010, 27032};
       Circle(27556) = {27032, 27010, 27033};
       Circle(27557) = {27033, 27010, 27034};
       Circle(27558) = {27034, 27010, 27031};
         Line(27559) = {27024, 27022};
         Line(27560) = {27025, 27023};
         Line(27561) = {27025, 27024};
         Line(27562) = {27022, 27023};
         Line(27563) = {27033, 27003};
         Line(27564) = {27002, 27032};
         Line(27565) = {27001, 27031};
         Line(27566) = {27004, 27034};
    Line Loop(27567) = {27549, 27562};
    Line Loop(27569) = {27550,-27561};
    Line Loop(27571) = {27561, 27559, 27562,-27560};
    Line Loop(27572) = {27558, 27555, 27556, 27557};
    Line Loop(27574) = {27563, 27552, 27566,-27557};
    Line Loop(27576) = {27558,-27565,-27553, 27566};
    Line Loop(27578) = {27554, 27564,-27555,-27565};
    Line Loop(27580) = {27564, 27556, 27563,-27551};
    Line Loop(27582) = {27551, 27552, 27553, 27554};
Plane Surface(27573) = {27571, 27572};
Plane Surface(27583) = {27582};
Plane Surface(27568) = {27567};
Plane Surface(27570) = {27569};
Ruled Surface(27581) = {27580};
Ruled Surface(27579) = {27578};
Ruled Surface(27577) = {27576};
Ruled Surface(27575) = {27574};


//3. Sensorbohrung lks
wts6 = (295)/360*2*Pi;
// Abstand von Flanschfläche aussen


        Point(29000) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3};
        Point(29001) = {rtsa*Sin(wts6 + dwtsu), rtsa*Cos(wts6 + dwtsu),  zts3};
        Point(29003) = {rtsa*Sin(wts6 - dwtsu), rtsa*Cos(wts6 - dwtsu),  zts3};
        Point(29002) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3 - tsr};
        Point(29004) = {(ir+dd)*Sin(wts6), (ir+dd)*Cos(wts6),  zts3 + tsr};
        Point(29010) = {fr*Sin(wts6), fr*Cos(wts6),  zts3};
        Point(29020) = {0, 0, zts3 - fb/2};
        Point(29021) = {0, 0, zts3 + fb/2};
        Point(29022) = {r1*Sin(wts6 + dwfl), r1*Cos(wts6 + dwfl),  zts3 + fb/2};
        Point(29023) = {r1*Sin(wts6 - dwfl), r1*Cos(wts6 - dwfl),  zts3 + fb/2};
        Point(29024) = {r1*Sin(wts6 + dwfl), r1*Cos(wts6 + dwfl),  zts3 - fb/2};
        Point(29025) = {r1*Sin(wts6 - dwfl), r1*Cos(wts6 - dwfl),  zts3 - fb/2};
        Point(29031) = {rtsm*Sin(wts6 + dws), rtsm*Cos(wts6 + dws),  zts3};
        Point(29033) = {rtsm*Sin(wts6 - dws), rtsm*Cos(wts6 - dws),  zts3};
        Point(29032) = {fr*Sin(wts6), fr*Cos(wts6),  zts3 - tsr};
        Point(29034) = {fr*Sin(wts6), fr*Cos(wts6),  zts3 + tsr};
       Circle(29549) = {29023, 29021, 29022};
       Circle(29550) = {29025, 29020, 29024};
       Circle(29551) = {29002, 29000, 29003};
       Circle(29552) = {29003, 29000, 29004};
       Circle(29553) = {29004, 29000, 29001};
       Circle(29554) = {29001, 29000, 29002};
       Circle(29555) = {29031, 29010, 29032};
       Circle(29556) = {29032, 29010, 29033};
       Circle(29557) = {29033, 29010, 29034};
       Circle(29558) = {29034, 29010, 29031};
         Line(29559) = {29024, 29022};
         Line(29560) = {29025, 29023};
         Line(29561) = {29025, 29024};
         Line(29562) = {29022, 29023};
         Line(29563) = {29033, 29003};
         Line(29564) = {29002, 29032};
         Line(29565) = {29001, 29031};
         Line(29566) = {29004, 29034};
    Line Loop(29567) = {29549, 29562};
    Line Loop(29569) = {29550,-29561};
    Line Loop(29571) = {29561, 29559, 29562,-29560};
    Line Loop(29572) = {29558, 29555, 29556, 29557};
    Line Loop(29574) = {29563, 29552, 29566,-29557};
    Line Loop(29576) = {29558,-29565,-29553, 29566};
    Line Loop(29578) = {29554, 29564,-29555,-29565};
    Line Loop(29580) = {29564, 29556, 29563,-29551};
    Line Loop(29582) = {29551, 29552, 29553, 29554};
Plane Surface(29573) = {29571, 29572};
Plane Surface(29583) = {29582};
Plane Surface(29568) = {29567};
Plane Surface(29570) = {29569};
Ruled Surface(29581) = {29580};
Ruled Surface(29579) = {29578};
Ruled Surface(29577) = {29576};
Ruled Surface(29575) = {29574};
