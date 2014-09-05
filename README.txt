A simple arduino sketch demonstrating using the Seeeduino arduino relay shield, but works with other relays too. 
Originally documented here: http://awtfy.com/2011/07/14/a-too-simple-arduino-library-for-handling-the-seeeduino-relay-shield-and-generic-relays/

This demo uses the Bounce1/Bounce2 library.  http://playground.arduino.cc/Code/Bounce

http://www.seeedstudio.com/depot/relay-shield-p-693.html?cPath=132_134
http://garden.seeedstudio.com/index.php?title=Relay_Shield

This version is on Github. 

————————
Changes September 5th 2014

Updated to be compatible with Arduino 1.0+ IDE (“Arduino.h”)

Updated structure to be installed as an actual library

Updated demo programs to be compatible with updated Bounce1 / Bounce2 libraries. 
There’s a separate version of the same demo for each library.
Bounce1/Bounce2 are not required for the library, just for the demo program. 

Note that Bounce1 needs to have “WProgram.h” changed to “Arduino.h” in Bounce.cpp 
if compiling under Arduino 1.0+ IDE.  Bounce2 is 1.0+ Compatible as is.  
————————

