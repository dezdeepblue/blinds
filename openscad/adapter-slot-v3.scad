$fn=100;

w=32;
h=16;
thickness=6.0;
slotdepth=2.0;
fanhb=11.0;
fanhs=9.6;

x1=0;    	y1=(h-fanhb)/2;

x2=w;			y2=(h-fanhs)/2;

x3=w;			y3=y2+fanhs;

x4=0;			y4=y1+fanhb;
servoarmouter();

module servoarmouter () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[w,0],[w,h],[0,h] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate([0,0,thickness-slotdepth]) 
   linear_extrude(height=slotdepth)	
   polygon( [ [x1,y1],[x2,y2],[x3,y3],[x4,y4] ] , [   [0,1,2,3] ]);

	color ("red")
	translate([w/2,h/2,0])
	linear_extrude(height=thickness-slotdepth)
	circle(d=5.2);

  }

}


