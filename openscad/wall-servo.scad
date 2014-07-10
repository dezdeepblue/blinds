
$fn=100;

3dprinter=0.2;


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

servo9gw=22.5;
servomounth=4 -.2 ;
servomountsize=6; //mount is 4mm square
servomountax=distfromleft+servobigcircle/2 +1;
servomountay=distfrombottom - servomountsize/2;
servomountbx=servomountax - servo9gw -servomountsize/2 -1 ;
servomountby=servomountay;


union() {
  linear_extrude(height=thickness)
  servosocketwall();
  servomounts();

}


module servomounts () {
 color("blue")
	translate([servomountax,servomountay])
	linear_extrude(height=thickness+servomounth)
	square(servomountsize);

 color("blue")
	translate([servomountbx,servomountby])
   linear_extrude(height=thickness+servomounth)
	square(servomountsize);


}


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