// Project done with
// QUEK HUI XIN A0077319X
// YU QING A0104694A
// WONG DING CHUEN U097830N
//17/9/2012

int value;
int xx ; //xx is the output value, which will be read in the Processing

void setup() {                
  Serial.begin(9600);
}


void loop() {
  
  value = analogRead(A0); 
  xx = map(value,0,1023,1,24);   
  Serial.println(xx);
 
  delay(10);   
  
}
