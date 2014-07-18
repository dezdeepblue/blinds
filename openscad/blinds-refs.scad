wallh=44;
wallw=42;
cornerrad=2;

3dpcomp=0.12;
distfrombottom=wallh-10;
distfromleft=wallw-18;

//fan
fanhb=11.0;
fanhs=9.6;

//arms
armw=36;
armh=20;
armslotthick=3.0;
armslotdepth=2.0;

//adapters
adapterw=32 -0.2; // to slide in fully 
adapterh=16 -0.2 ; //for sliding easier



//wall1 
wall1_thick=8;


//wall2
wall2_thick=6.4;
servobigcircle=11.5+ 3dpcomp; 
servosmallcircle=5.8+ 3dpcomp;
polygonlefth=5.8+ 3dpcomp;
polygonrighth=6+ 3dpcomp;
polygonw=6;
servo9gw=22.8;
servomounth=4 ;		//height of the screw pad for servo
servomountsize=6; //mount is 6mm square
servomountax=distfromleft+servobigcircle/2 +1;
servomountay=distfrombottom - servomountsize/2;
servomountbx=servomountax - servo9gw -servomountsize -1 ;
servomountby=servomountay;

//wall3
wall3_thick=4;
wall3slotw=adapterw;
wall3sloth=adapterh+ 2+2;
wall3slotd=2;

//base-frame
baseextra=2; 			// edge of base more than the wall widths
base_thick=6;

gap1=30;
gap2=26 + 2; 				//v.2 made this gap 26 +2 for buffer i.e extra thick adapter 
slotw=wallw+3dpcomp+.08;
slot1=wall1_thick+3dpcomp;
slot2=wall2_thick+3dpcomp;
slot3=wall3_thick + 3dpcomp;
sloth=4;
framew=slotw+baseextra;
frameh=slot1+slot2+slot3+gap1+gap2+baseextra;



