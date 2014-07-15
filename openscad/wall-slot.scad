$fn=100;

include <blinds-refs.scad>;







slotwall();



module slotwall() {

 difference() {
  
   linear_extrude(height=wall3_thick)
   wall();

	translate([0,0,wall3_thick-wall3slotd])
   linear_extrude( height=wall3slotd)
   slot();

	translate([0,0,wall3_thick-wall3slotd])
   linear_extrude( height=wall3slotd)
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
	translate([(wallw-wall3slotw)/2 ,distfrombottom - wall3sloth/2,0  ])
   polygon( [ [0,0],[wall3slotw,0],[wall3slotw,wall3sloth],[0,wall3sloth] ] , [   [0,1,2,3] ]);
}

module wideslot() {
   color ( "blue") 
	translate([0 ,distfrombottom - wall3sloth/2,0  ])
   polygon( [ [0,0],[wall3slotw,0],[wall3slotw,wall3sloth],[0,wall3sloth] ] , [   [0,1,2,3] ]);
}