$fn=100;

thickness=4;
wallh=44;
wallw=42;
distfrombottom=wallh-10;
distfromleft=wallw-18;
slotw=32;
sloth=16+ 0.02;
slotd=2;

cornerrad=2;

slotwall();



module slotwall() {

 difference() {
  
   linear_extrude(height=thickness)
   wall();

	translate([0,0,thickness-slotd])
   linear_extrude( height=slotd)
   slot();

	translate([0,0,thickness-slotd])
   linear_extrude( height=slotd)
   wideslot();
	
 }

}

module wall() {

 minkowski(){

polygon( [ [cornerrad,cornerrad],[wallw-cornerrad,cornerrad],[wallw-cornerrad,wallh-cornerrad],[cornerrad,wallh-cornerrad] ] , [   [0,1,2,3] ]);
 
	circle(r=cornerrad);
}

}

module slot() {
   color ( "blue") 
	translate([(wallw-slotw)/2 ,distfrombottom - sloth/2,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,sloth],[0,sloth] ] , [   [0,1,2,3] ]);
}

module wideslot() {
   color ( "blue") 
	translate([0 ,distfrombottom - sloth/2,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,sloth],[0,sloth] ] , [   [0,1,2,3] ]);
}