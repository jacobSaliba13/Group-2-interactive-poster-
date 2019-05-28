//import library
import ddf.minim.*;

float max_dist = 100; //distance to check with poster

//creat class
class Player {
  
public

Minim minim;
AudioPlayer player; 
int On = 1;


 
//construct player
Player( AudioPlayer plyr){
   player = plyr;
  
  
}
  
//function to play sound, when sensor 1 triggered play 1111.wav when sensor 2 play 2222.wav 
 void Play(float num ) { 
 
   if (num <= max_dist) {
   player.play();
  
    
  }else if ( (player.position() == player.length()) &&  (num <= max_dist) )
  {
    if(On==1)
    {
    player.rewind();
    player.play();
     On = 0;
   
     

    }
}else if(num >= max_dist) {
    
   if ( player.isPlaying() )
  
   
  {
  //do nothing
  } else if ( player.position() == player.length() )
  {
   player.rewind(); 
   On=1;
  }
  }

 }
  
  
};
