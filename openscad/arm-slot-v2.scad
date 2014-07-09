
$fn=100;


difference() {

  
color ("blue") cube ( [36,16,3]);


 union() {
	   
		translate ([18,8,1]) 
		cylinder(h=2,d=7.5,center=false);
 	
	 
   hull() {
 	   color( "Red") 
 	   translate([19.5,8,1]) cylinder ( h=2,d=5.6);
 	   translate([32.6,8,1]) cylinder (h=2,d=4);
	  }

		
   hull () {
 	   color("Red")
 	   translate([16.5,8,1]) cylinder (h=2, d=5.6);
 	   translate([3.4,8,1]) cylinder (h=2,d=4);
	
     }

 }

} 