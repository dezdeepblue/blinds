$fn=100;


include <blinds-refs.scad>;

thickness=2;
hornthickness=1.5;


servoarminner();
//servoarm();
module servoarminner () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[armw,0],[armw,armh],[0,armh] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate ([armw/2,armh/2,thickness-hornthickness]) 
   linear_extrude(height=hornthickness)	
   servoarm();

	color ("red")
	translate([armw/2,armh/2,0])
	linear_extrude(height=thickness-hornthickness+.1)
	circle(d=3.8);

  }

}
module servoarm() {
 union() {

      color("red")
	   circle(d=7.6);

	

	  hull() 
	  {
 
 	   color( "red") 
 	   translate([1.5,0,0]) circle (d= 5.8);
 	   translate([14.3,0,0]) circle (d=4);
	  }

	  hull() 
	  { 	
 
 	   color("red")
 	   translate([-1.5,0,0]) circle ( d=5.8);
 	   translate([-14.3,0,0]) circle (d=4);
	  }

 }
}

