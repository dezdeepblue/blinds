$fn=100;


include  <blinds-refs.scad>;



sloty1=(armh-adapterh)/2;
slotx1=(armw-adapterw)/2;

sloty2=sloty1+adapterh;
slotx2=slotx1+adapterw;

servoarmouter();

module servoarmouter () {

 difference () {

   linear_extrude( height=armslotthick)
   color ( "blue") 
   polygon( [ [0,0],[armw,0],[armw,armh],[0,armh] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate([0,0,armslotthick-armslotdepth]) 
   linear_extrude(height=armslotdepth)	
   polygon( [ [0,sloty1],[slotx2,sloty1],[slotx2,sloty2],[0,sloty2] ] , [   [0,1,2,3] ]);

	color ("red")
	translate([armw/2,armh/2,0])
	linear_extrude(height=1.2)
	circle(d=5.2);

  }

}


