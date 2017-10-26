import processing.pdf.*;

PImage wave;

void setup() {
  size(800, 600);
  
  beginRecord(PDF, "everything.pdf");
  
  wave = loadImage("greatwave.png");
  //noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  int widthStep = 2;
  int heightStep = 15;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = wave.get(i, j);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      float brightness = (r+g+b)/3.75;

      float w = map(brightness,0,255,6,0);
      float h = map(brightness,0,255,40,0);
      
      pushMatrix();
      translate(i,j);
      fill(c);
      rotate(i+j+radians(frameCount));
      rect(0, 0, w, h);
      popMatrix();
    }
  }
}
void keyPressed(){
 if (key=='Q'){
  endRecord();
  exit();
 }
}