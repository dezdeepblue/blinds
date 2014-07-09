$fn=100;


servoarminner();

module servoarminner () {

 difference () {

   linear_extrude( height=3)
   color ( "blue") 
   polygon( [ [0,0],[36,0],[36,16],[0,16] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate ([18,8,1]) 
   linear_extrude(height=2)	
   servoarm();

	color ("red")
	translate([18,8,0])
	linear_extrude(height=1.2)
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
 	   translate([1.5,0,0]) circle (d= 5.6);
 	   translate([14,0,0]) circle (d=4);
	  }

	  hull() 
	  { 	
 
 	   color("red")
 	   translate([-1.5,0,0]) circle ( d=5.6);
 	   translate([-14,0,0]) circle (d=4);
	  }

 }
}

