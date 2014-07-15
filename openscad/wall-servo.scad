
$fn=100;

include <blinds-refs.scad>;


union() {
  linear_extrude(height=wall2_thick)
  servosocketwall();
  servomounts();

}


module servomounts () {
 color("blue")
	translate([servomountax,servomountay])
	linear_extrude(height=wall2_thick+servomounth)
	square(servomountsize);

 color("blue")
	translate([servomountbx,servomountby])
   linear_extrude(height=wall2_thick+servomounth)
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