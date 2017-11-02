//IMAGINARY OBJECT:
//class Sonic {
// float x;
// float y;
// boolean runningFast;
// PImage sprites;
// int superSpeed;
// int lightSpeed;
// int superStrength;
//}
//Sonic(){
//}
//void update(){
//}
//void display(){
//}
//void superSpeed(){
//}
//void lightSpeed(){
//}
//void fight(){
//}

//PIMAGE CONTROL OBJECT:

PImage limecat;

void setup(){
  size (500, 500);
  background (100, 215, 100);
  limecat = loadImage("lime-cat.jpg");
  noStroke();
}
void draw(){
   image(limecat, mouseX, mouseY, 90, 90);
   image(limecat, mouseX - 30, mouseY - 30, 120, 120);
   image(limecat, mouseX - 60, mouseY - 60, 100, 100);
   image(limecat, mouseX - 90, mouseY - 90, 80, 80);
   image(limecat, mouseX - 120, mouseY - 120, 60, 60);
   image(limecat, mouseX - 130, mouseY - 130, 40, 40);
}