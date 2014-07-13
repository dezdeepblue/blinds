
thickness=3;
wallh=44;
wallw=42;



linear_extrude(height=thickness)
wall();





module wall() {

 
polygon( [ [0,0],[wallw,0],[wallw,wallh],[0,wallh] ] , [   [0,1,2,3] ]);

}

