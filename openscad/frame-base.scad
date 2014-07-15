
$fn=100;
include <blinds-refs.scad>;












slotframe();



module slotframe() {

 difference() {
  
   linear_extrude(height=base_thick)
   base();

	translate([0,0,base_thick-sloth])
   linear_extrude( height=sloth)
   slot1();
	translate([0,0,base_thick-sloth])
   linear_extrude( height=sloth)
   slot2();
	translate([0,0,base_thick-sloth])
   linear_extrude( height=sloth)
   slot3();

 }

}

module base() {

  minkowski() {
  polygon( [ [cornerrad,cornerrad],[framew-cornerrad,cornerrad],[framew-cornerrad,frameh-cornerrad],[cornerrad,frameh-cornerrad] ] , [   [0,1,2,3] ]);
	circle(r=cornerrad);
  }
}

module slot1() {
   color ( "blue") 
	translate([(framew-slotw)/2,1,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,slot1],[0,slot1] ] , [   [0,1,2,3] ]);
	
}
module slot2() {
   color ( "blue") 
	translate([(framew-slotw)/2,(1+slot1+gap1) ,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,slot2],[0,slot2] ] , [   [0,1,2,3] ]);
	
}
module slot3() {
   color ( "blue") 
	translate([(framew-slotw)/2,(1+slot1+gap1+slot2+gap2) ,0  ])
   polygon( [ [0,0],[slotw,0],[slotw,slot3],[0,slot3] ] , [   [0,1,2,3] ]);
	
}