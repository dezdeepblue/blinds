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
 	   translate([13,0,0]) circle (d=4);
	  }

	  hull() 
	  { 	
 
 	   color("red")
 	   translate([-1.5,0,0]) circle ( d=5.6);
 	   translate([-13,0,0]) circle (d=4);
	  }

 }
}

