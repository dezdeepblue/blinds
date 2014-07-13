
$fn=100;

3dprinter=0.2;

cornerrad=2;

thickness=6.4;
wallh=44;
wallw=42;
distfrombottom=wallh-10;
distfromleft=wallw-18;
servobigcircle=11.5+ 3dprinter; 
servosmallcircle=5.8+ 3dprinter;
polygonlefth=5.8+ 3dprinter;
polygonrighth=6+ 3dprinter;
polygonw=6;

servo9gw=22.8;
servomounth=4 -.1 ;
servomountsize=6; //mount is 4mm square
servomountax=distfromleft+servobigcircle/2 +1;
servomountay=distfrombottom - servomountsize/2;
servomountbx=servomountax - servo9gw -servomountsize -1 ;
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

 minkowski() {
  polygon( [ [cornerrad,cornerrad],[wallw-cornerrad,cornerrad],[wallw-cornerrad,wallh-cornerrad],[cornerrad,wallh-cornerrad] ] , [   [0,1,2,3] ]);
  circle(r=cornerrad);
 }
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