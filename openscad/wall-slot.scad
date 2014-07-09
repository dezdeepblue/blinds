
thickness=4;
wallh=44;
wallw=40;
distfrombottom=wallh-10;
distfromleft=wallw-16;
slotw=36;
sloth=16;
slotd=3;



slotwall();



module slotwall() {

 difference() {
  
   linear_extrude(height=thickness)
   wall();

	translate([0,0,1])
   linear_extrude( height=slotd)
   slot();

 }

}

module wall() {

 
polygon( [ [0,0],[wallw,0],[wallw,wallh],[0,wallh] ] , [   [0,1,2,3] ]);

}

module slot() {

	

	   
   color ( "blue") 
	translate([wallw-slotw -.5,distfrombottom - sloth/2,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,sloth],[0,sloth] ] , [   [0,1,2,3] ]);
	

   
	
}