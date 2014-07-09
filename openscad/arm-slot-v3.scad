$fn=100;


servoarmouter();

module servoarmouter () {

 difference () {

   linear_extrude( height=3.5)
   color ( "blue") 
   polygon( [ [0,0],[36,0],[36,16],[0,16] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate([0,0,1.1]) 
   linear_extrude(height=2.4)	
   polygon( [ [0,2.4],[36,3.2],[36,12.8],[0,13.6] ] , [   [0,1,2,3] ]);

	color ("red")
	translate([18,8,0])
	linear_extrude(height=1.2)
	circle(d=4.8);

  }

}


