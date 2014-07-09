
#include <SoftwareSerial.h>
#include <EEPROMex.h>
#include <Servo.h>



SoftwareSerial TinySerial(3, 4); 
uint8_t  command, position,eposition,espeed,speed,battery = 0;
uint16_t pin,epin;

#define MOVE 191
#define SAVE 192
#define RESET 193
#define PINCHANGE 195

#define CLOSE 0
#define HALF 90
#define OPEN 180
#define SPEED 5
#define positionaddr 0
#define speedaddr 1
#define pinaddr  2

#define servopin 9
#define servopowerpin 11

#define ON 200
#define OFF 250

Servo myservo;


void savestatus() {
   EEPROM.update(positionaddr,position);
   EEPROM.update(speedaddr, speed); 
   EEPROM.updateInt(pinaddr,pin);

}

void moveservo(byte newpos) {
   
   servopower(ON);
   delay(1);
   myservo.write(newpos);
   delay(100); // give servo time to get there 
   servopower(OFF);
}

void servopower ( byte power) {
   
   if ( power == ON )
      digitalWrite(servopowerpin, HIGH);
   if ( power == OFF )
      digitalWrite(servopowerpin, LOW );
}

void setup()  
{
  // Open serial communications and let us know we are connected
  TinySerial.begin(9600);
  TinySerial.println("Tiny Serial Connected via SoftwareSerial Library");
  
  myservo.attach(servopin);
  
  //read eeprom if position/speed/pin is saved
  eposition =  EEPROM.readByte(positionaddr);
  espeed    =  EEPROM.readByte(speedaddr);
  epin      =  EEPROM.readInt(pinaddr);
  
  if ( eposition >=0 && eposition <= 180)
      moveservo(eposition); // includes power handling
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
      position=CLOSE; command=MOVE;
    }
    if ( received1=='h' && received2 =='H' ) {
      position=HALF; command=MOVE;
    }
    if ( received1=='f' && received2 =='F' ) {
      position=OPEN; command=MOVE;
    }
    if ( received1=='r' && received2 =='R' ) {
      pcommand command=MOVE;
    }
  }
  
  
  
  
  
}



