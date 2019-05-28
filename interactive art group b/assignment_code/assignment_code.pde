//Import libraries
import processing.serial.*;
import ddf.minim.*;


//Array(list of variables) to contain distance data
float num;
String[] sdata;
float[] fdata;

//Call player class 
Minim minim;
AudioPlayer player0, player1; 
Player plyr0, plyr1 ;


//Call serial class
Serial myPort;             // Create object from serial class
String val ;               // Data received from the serial port

void setup() 
{
// serial port this needs to be checked everytime you start the file with youre arduino serialport  
myPort = new Serial(this,"COM6", 115200);

 
//Load sound file to player
  minim = new Minim(this);  
  player0 = minim.loadFile("2222.wav"); 
  player1 = minim.loadFile("1111.wav"); 
  
 


// player classes
  plyr0 = new Player(player0);
  plyr1 = new Player(player1);

  
}

void draw()
{
  if ( myPort.available() > 0) {      // If data is available,
    val = myPort.readStringUntil('\n');    // read it and store it in val
     
     if (val != null) {
      
      sdata = split(val, ",");       //Split Data
      fdata = float(sdata);          //Convert Data from String to Float
      
       
      }
      
    

//Assign data for each player    
    plyr1.Play(fdata[1]);
    plyr0.Play(fdata[0]);
     
    
//check data by printing
    print(fdata[0]);
    print(",");
    print(fdata[1]);  
    print(",");
  
 }
  

}
