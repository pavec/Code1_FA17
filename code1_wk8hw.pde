float x;
float y;
float d;

PImage[] otters = new PImage[3];
int whichOtter = 0;

 void setup(){
   size (600, 600);
   background (60, 120, 255);
   for (int i = 0; i < otters.length; i++){
     otters[i] = loadImage("otters" +i+ ".jpg");
   }
   otters [0] = loadImage ("otter0.jpg");
   otters [1] = loadImage ("otter1.jpg");
   otters [2] = loadImage ("otter2.jpg");
   
 }
 
 void draw (){
  //imageMode (CENTER);
  image(otters[whichOtter], mouseX, mouseY);
  if (frameCount % 10 == 0){
    whichOtter++;
  }
  if (whichOtter >= otters.length){
   whichOtter = 0; 
  }
  
 }