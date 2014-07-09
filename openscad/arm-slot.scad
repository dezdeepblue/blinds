
$fn=100;


difference() {

  linear_extrude( height=3)
  color ( "blue") polygon( [ [0,0],[36,0],[36,16],[0,16] ] , [   [0,1,2,3] ]);
  linear_extrude( height=2)
  union() {
	  translate ([18,8,3]) circle(7.5/2);

 	
	  hull() 
	  {
 
 	   color( "Red") 
 	   translate([19.5,8,3]) circle ( 5.6/2);
 	   translate([31,8,3]) circle (1.5);
	  }

	  hull() 
	  { 	
 
 	   color("Red")
 	   translate([16.5,8,3]) circle ( 5.6/2);
 	   translate([5,8,3]) circle (1.5);
	  }

 }

}