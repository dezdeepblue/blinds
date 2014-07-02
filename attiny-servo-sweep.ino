// 
// http://letsmakerobots.com/blog/jerz/attiny-servo-control
//
const byte servo  =    0;         // Servo pin on ATtiny
int tPulse        = 4000;         // Total pulse length on 1 Mhz clock 
int hPulse        =   60;         // High pulse time (60=0deg -> 280=180deg)
bool Dir          =    1;         // Servo direction

void setup() {                
  pinMode(servo, OUTPUT);     
}

void loop() {
  digitalWrite(servo, HIGH);                // Set pin high to start pulse
  delayMicroseconds(hPulse);                // High pulse angle data   
  digitalWrite(servo,LOW);                  // Set low for the rest of pulse
  delayMicroseconds(tPulse-hPulse);
  
  if (hPulse < 280 && Dir == 1) hPulse+=10; // Rotate servo to 180 degrees
  else if (hPulse >= 280 && Dir == 1){      // Servo hit upper limit
    hPulse = 280;                           // Keep servo angle in bounds
    Dir=!Dir;                               // Switch direction
  }
  if (hPulse > 60 && Dir == 0) hPulse-=10;  // Rotate servo to 0 degrees
  else if (hPulse <= 60 && Dir == 0){       // Servo hit lower limit
    hPulse = 60;                            // Keep servo angle in bounds
    Dir=!Dir;                               // switch direction
  }
  delayMicroseconds(500); // Give servo some time to move before giving it a new position
}
