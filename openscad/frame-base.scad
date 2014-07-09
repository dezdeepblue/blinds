
$fn=100;

3dpcomp=1;

thickness=6;
gap1=25;
gap2=21;


slotw=40+3dpcomp;
slot1=3+3dpcomp;
slot2=6.5+3dpcomp;
slot3=4 + 3dpcomp;
sloth=4;
framew=slotw+1+1;
frameh=slot1+slot2+slot3+gap1+gap2+1+1;

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

 
polygon( [ [0,0],[framew,0],[framew,frameh],[0,frameh] ] , [   [0,1,2,3] ]);

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