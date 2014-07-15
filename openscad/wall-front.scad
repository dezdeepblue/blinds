
$fn=100;

include <blinds-refs.scad>;


linear_extrude(height=wall1_thick)
wall();





module wall() {

 minkowski(){
	
   polygon( [ [cornerrad,cornerrad],[wallw-cornerrad,cornerrad],[wallw-cornerrad,wallh-cornerrad],[cornerrad,wallh-cornerrad] ] , [   [0,1,2,3] ]);
	circle(r=cornerrad);

 }
}

