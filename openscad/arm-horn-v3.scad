$fn=100;

thickness=2;
hornthickness=1.5;
w=36;
h=16;

servoarminner();
//servoarm();
module servoarminner () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[w,0],[w,h],[0,h] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate ([18,8,thickness-hornthickness]) 
   linear_extrude(height=hornthickness)	
   servoarm();

	color ("red")
	translate([w/2,h/2,0])
	linear_extrude(height=thickness-hornthickness)
	circle(d=4.8);

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

