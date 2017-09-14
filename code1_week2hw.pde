//x going up in value = right, down = left
//y going up in value lowers, down raises

int value = 50;
void setup (){
  size (500,600);
  background (0, 0, 900);  
}
void draw(){
  drawHouse();
  fill (value);
}
void mouseDragged(){
  value = value + 1;
  if (value > 255){
    value = 0;}
}
void drawHouse(){
  rect (100, 300, 300, 300);
    //house
  drawWindows();
  drawDoor(); 
  triangle ( 100, 300, 250, 250, 400, 300);
    //roof
}
void drawWindows(){
  rect (130, 425, 50, 50);
  rect (320, 425, 50, 50);
  rect (135, 430, 40, 40);
  rect (325, 430, 40, 40);
    // bottom windows
  rect (130, 335, 50, 50);
  rect (320, 335, 50, 50);
  rect (135, 340, 40, 40);
  rect (325, 340, 40, 40);
    // top windows
  rect (225, 375, 50, 70);
  rect (230, 380, 40, 60);
  //middle window
}
void drawDoor(){
   rect (225, 500, 50, 100);
    //door
    ellipse (265, 560, 10, 10);
    //doorknob
}