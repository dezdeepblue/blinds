
linear_extrude(height=1)
servosocketwall();


module servosocketwall() {

 difference() {
  servowall();

  color("red")
  translate([011,10])
  servosocket();

 }

}

module servowall() {

polygon( [ [0,0],[20,0],[20,20],[0,20] ] , [   [0,1,2,3] ]);

}

module servosocket() {

	union() {
	circle (d=11.6);

	
	translate([-6,0])
	circle (d=5.8);
	
	
   polygon( [ [-6,-2.9],[-0,-3],[0,3],[-6,2.9] ] , [   [0,1,2,3] ]);
   }
	
}