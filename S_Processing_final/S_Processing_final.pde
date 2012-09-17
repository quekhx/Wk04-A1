// Project done with
// QUEK HUI XIN A0077319X
// YU QING A0104694A
// WONG DING CHUEN U097830N
//17/9/2012

import processing.serial.*;
Serial myPort;
float val;




void setup() {
  size(400, 400);
  smooth();
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}



void serialEvent(Serial p) {
  String s = "";        // string value received.  
  if ( myPort.available() > 0) {  // check number of characters in the serial buffer 
    s = myPort.readStringUntil('\n');   // read string.
    if (s != null) { 
      println(s);             
      val = float (s);
    }
  }
}


void draw() {

  stroke(111, 222, 222, 155);
  strokeWeight(3);
  noFill();  
  background(155, 0, 0);


  float a;
  for (a = 0; a < PI*3/2; a = a + PI/ (12+val)) {
    float x = 200 + 60*cos(a);
    float y = 140 - 60*sin(a);
    ellipse(x, y, 30, 30);
  }

  float b;
  for (b = PI; b < PI*5/2; b = b + PI/(12+val)) {
    float x = 200 + 60*cos(b);
    float y = 260 - 60*sin(b);
    ellipse(x, y, 30, 30);
  }
}

