
#include "Sensor.h"

//Sensor appoint
Sensor * s1;
Sensor * s2;




void setup() {
  //Construct sensor class
  s1 = new Sensor(12,9);
  s2 = new Sensor(13,11);

//serial for both serialmonitor and to connect with proccessing
  Serial.begin(115200); 
 
}

void loop() {
  //Calculate the distance
   unsigned long dist1 = s1->dist();
   unsigned long dist2 = s2->dist();

   

//Pass the data as CSV to the Serial Port
  Serial.print(dist1);
  Serial.print(",");
  Serial.print(dist2);
  Serial.print(",");
 
  
  Serial.print("\n");
  // how long to calculate new measurment 
  delay(100);
}
