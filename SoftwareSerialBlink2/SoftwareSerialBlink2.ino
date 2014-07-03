
#include <SoftwareSerial.h>
#include <EEPROMex.h>



SoftwareSerial TinySerial(3, 4); 
uint8_t  command, position,eposition,espeed,speed,battery = 0;
uint16_t pin,epin;

#define CLOSE 0
#define HALF 90
#define OPEN 180
#define SPEED 5
#define positionaddr 0
#define speedaddr 1
#define pinaddr  2


void savestatus() {
   EEPROM.update(positionaddr,position);
   EEPROM.update(speedaddr, speed); 
   EEPROM.updateInt(pinaddr,pin);

}

void setup()  
{
  // Open serial communications and let us know we are connected
  TinySerial.begin(9600);
  TinySerial.println("Tiny Serial Connected via SoftwareSerial Library");
  
  //read eeprom if position/speed/pin is saved
  eposition =  EEPROM.readByte(positionaddr);
  espeed    =  EEPROM.readByte(speedaddr);
  epin      =  EEPROM.readInt(pinaddr);
  
  
}

void loop()
{
   char received1,received2;
  if(TinySerial.available())
  {
    received1 = TinySerial.read();   
    received2 = TinySerial.read();
    TinySerial.print("Received data...");
    TinySerial.println(received1);
    TinySerial.println(received2);
    
    if ( received1 == 'c' && received2 == 'C'){
      command=CLOSE;
    }
    if ( received1=='h' && received2 =='H' ) {
      command=HALF;
    }
    if ( received1=='f' && received2 =='F' ) {
      command=OPEN;
    }
  }
  
  
  
}



