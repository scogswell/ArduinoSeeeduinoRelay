// This simplistic program demonstrates the use of the SeeeduinoRelay 
// library with an Arduino.   Pushbuttons are connected to 
// pins 8/9/10/11 for toggling relays on and off.   
//
// [arduino button pin --------Switch------- GND]
//
// Internal Pullup resistors are activated on input pins.  
//
// Note: Seeeduino has THREE e's, not two as you might think.  Check that
// first when trying to find unresolved references. 
// 
// Shield details: 
// http://www.seeedstudio.com/depot/relay-shield-p-693.html?cPath=132_134
// http://garden.seeedstudio.com/index.php?title=Relay_Shield

#include <Bounce.h>    // http://www.arduino.cc/playground/Code/Bounce
#include "SeeeduinoRelay.h"

// Pin definitions for four buttons connected to the Arduino for testing. 

#define Button1pin 8
#define Button2pin 9 
#define Button3pin 10
#define Button4pin 11

// Define "bounce" objects for input buttons.
// Bounce is really nice, you should use it.  
// http://www.arduino.cc/playground/Code/Bounce
Bounce Button1 = Bounce(Button1pin, 5); 
Bounce Button2 = Bounce(Button2pin, 5); 
Bounce Button3 = Bounce(Button3pin, 5); 
Bounce Button4 = Bounce(Button4pin, 5); 

SeeeduinoRelay RELAY1 = SeeeduinoRelay(1,LOW); 
SeeeduinoRelay RELAY2 = SeeeduinoRelay(2,LOW); 
SeeeduinoRelay RELAY3 = SeeeduinoRelay(3,LOW); 
SeeeduinoRelay RELAY4 = SeeeduinoRelay(4,LOW); 



void setup()
{
  // Setup input pins 
  pinMode(Button1pin, INPUT); 
  digitalWrite(Button1pin, HIGH);  // Activate internal pullup
  pinMode(Button2pin, INPUT); 
  digitalWrite(Button2pin, HIGH);  // Activate internal pullup
  pinMode(Button3pin, INPUT); 
  digitalWrite(Button3pin, HIGH);  // Activate internal pullup
  pinMode(Button4pin, INPUT); 
  digitalWrite(Button4pin, HIGH);  // Activate internal pullup

  Serial.begin(9600);
  Serial.println("Ready"); 

}

// This is the demo loop.   Check state of each button, toggle relay
// and print out status of relays. 
void loop() 
{

  if (Button1.update() ) 
  {
    if (Button1.read() == LOW)  
    {
      Serial.print("Button #1 pressed: "); 
      Serial.print("Relay #1 state was "); 
      Serial.print(RELAY1.state()); 
      RELAY1.toggle(); 
      Serial.print(", now relay is "); 
      Serial.println(RELAY1.state());     
      if (RELAY1.isRelayOn()) Serial.println("Relay #1 is on"); 
      if (RELAY1.isRelayOff()) Serial.println("Relay #1 is off"); 
    }
  }  

  if (Button2.update() ) 
  {
    if (Button2.read() == LOW)  
    {
      Serial.print("Button #2 pressed: "); 
      Serial.print("Relay #2 state was "); 
      Serial.print(RELAY2.state()); 
      RELAY2.toggle(); 
      Serial.print(", now relay is "); 
      Serial.println(RELAY2.state()); 
      if (RELAY2.isRelayOn()) Serial.println("Relay #2 is on"); 
      if (RELAY2.isRelayOff()) Serial.println("Relay #2 is off"); 
    }
  }  

  if (Button3.update() ) 
  {
    if (Button3.read() == LOW)  
    {
      Serial.print("Button #3 pressed: "); 
      Serial.print("Relay #3 state was "); 
      Serial.print(RELAY3.state()); 
      RELAY3.toggle(); 
      Serial.print(", now relay is "); 
      Serial.println(RELAY3.state()); 
      if (RELAY3.isRelayOn()) Serial.println("Relay #3 is on"); 
      if (RELAY3.isRelayOff()) Serial.println("Relay #3 is off"); 
    }
  }  

  if (Button4.update() ) 
  {
    if (Button4.read() == LOW)  
    {
      Serial.print("Button #4 pressed: "); 
      Serial.print("Relay #4 state was "); 
      Serial.print(RELAY4.state()); 
      RELAY4.toggle(); 
      Serial.print(", now relay is "); 
      Serial.println(RELAY4.state()); 
      if (RELAY4.isRelayOn()) Serial.println("Relay #4 is on"); 
      if (RELAY4.isRelayOff()) Serial.println("Relay #4 is off"); 
    }
  }  


}




