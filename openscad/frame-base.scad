
$fn=100;

cornerrad=2;

baseextra=2;

wallwidth=42;
3dpcomp=0.12;

thickness=6;
gap1=30;
gap2=26 + 2; //v.2 made this gap 26 +2 for buffer


slotw=wallwidth+3dpcomp+.08;
slot1=8+3dpcomp;
slot2=6.5+3dpcomp;
slot3=4 + 3dpcomp;
sloth=4;
framew=slotw+baseextra;
frameh=slot1+slot2+slot3+gap1+gap2+baseextra;

slotframe();



module slotframe() {

 difference() {
  
   linear_extrude(height=thickness)
   base();

	translate([0,0,thickness-sloth])
   linear_extrude( height=sloth)
   slot1();
	translate([0,0,thickness-sloth])
   linear_extrude( height=sloth)
   slot2();
	translate([0,0,thickness-sloth])
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