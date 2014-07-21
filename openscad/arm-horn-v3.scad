$fn=120;


include <blinds-refs.scad>;

thickness=3;
hornthickness=1.5;

servoarmfinal() ;

module servoarmfinal() {
   
  union ( ){ 
   servoarminner();


     difference () {
      color ("red")
	   translate([armw/2,armh/2,1])
	   linear_extrude(height=1.2)
	   circle(d=3); 
	   color ("yellow")
	   translate([armw/2,armh/2,0])
	   linear_extrude(height=3)
	   circle(d=2);   
        

      }

   }
}


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
	linear_extrude(height=1)
	circle(d=3);
 	color ("red")
	translate([armw/2,armh/2,1])
	linear_extrude(height=.5)
	circle(d=3);

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

