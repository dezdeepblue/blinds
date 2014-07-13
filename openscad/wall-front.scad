
thickness=3;
wallh=44;
wallw=42;

cornerrad=2;


linear_extrude(height=thickness)
wall();





module wall() {

 minkowski(){
	
   polygon( [ [cornerrad,cornerrad],[wallw-cornerrad,cornerrad],[wallw-cornerrad,wallh-cornerrad],[cornerrad,wallh-cornerrad] ] , [   [0,1,2,3] ]);
	circle(r=cornerrad);

 }
}

