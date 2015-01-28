//1. Sensorbohrung lks
wts1 = (360 - 20)/360*2*Pi;
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
wts2 = (360 +100)/360*2*Pi;
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
wts3 = (360 +220)/360*2*Pi;
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
