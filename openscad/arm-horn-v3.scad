$fn=100;

thickness=3;
hornthickness=1.5;

servoarminner();
//servoarm();
module servoarminner () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[36,0],[36,16],[0,16] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate ([18,8,thickness-hornthickness]) 
   linear_extrude(height=hornthickness)	
   servoarm();

	color ("red")
	translate([18,8,0])
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

