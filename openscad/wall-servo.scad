
$fn=100;

3dprinter=0.4;


thickness=6.5;
wallh=44;
wallw=40;
distfrombottom=wallh-10;
distfromleft=wallw-16;
servobigcircle=11.5+ 3dprinter; 
servosmallcircle=5.8+ 3dprinter;
polygonlefth=5.8+ 3dprinter;
polygonrighth=6+ 3dprinter;
polygonw=6;


linear_extrude(height=thickness)
servosocketwall();


module servosocketwall() {

 difference() {
  servowall();

  color("red")
  translate([distfromleft,distfrombottom])
  servosocket();

 }

}

module servowall() {

polygon( [ [0,0],[wallw,0],[wallw,wallh],[0,wallh] ] , [   [0,1,2,3] ]);

}

module servosocket() {

	union() {
	circle (d=servobigcircle);

	
	translate([-6,0])
	circle (d=servosmallcircle);
	
	
   polygon( [ 	[-polygonw,-polygonlefth/2],
					[-0,-polygonrighth/2],
					[0,polygonrighth/2],
					[-polygonw,polygonlefth/2] ] , 
									[   [0,1,2,3] ]);
   }
	
}