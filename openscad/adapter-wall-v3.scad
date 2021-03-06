$fn=100;

include <blinds-refs.scad>;

thickness=6.0;
slotdepth=2.0;



x1=0;    	y1=(adapterh-fanhb)/2;

x2=adapterw;			y2=(adapterh-fanhs)/2;

x3=adapterw;			y3=y2+fanhs;

x4=0;			y4=y1+fanhb;
servoarmouter();

module servoarmouter () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[adapterw-3dpcomp,0],[adapterw-3dpcomp,adapterh],[0,adapterh] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate([0,0,thickness-slotdepth]) 
   linear_extrude(height=slotdepth)	
   polygon( [ [x1,y1],[x2,y2],[x3,y3],[x4,y4] ] , [   [0,1,2,3] ]);

	color ("red")
	translate([adapterw/2,(adapterh)/2,0])
	linear_extrude(height=thickness-slotdepth)
	circle(d=5.2);

  }

}


