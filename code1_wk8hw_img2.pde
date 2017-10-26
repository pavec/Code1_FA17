PImage sman;

void setup(){
 size (700, 400);
 sman = loadImage("spiderman.jpg");
 noSmooth();
 stroke(255);

 
}
void draw() {
  noStroke(); 
  fill(255, 60, 60);
  rect(0,0,width,height);
  stroke(0);
  int widthStep = 6;
  int heightStep = 12;
  
  for (int i = 0; i <= height; i += heightStep) {
    beginShape();
    for (int j = 0; j <= width; j += widthStep) {

      color c = sman.get(int(j + (sin(radians(frameCount+i+j))*10)), i);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      float brightness = (r+g+b)/3;
      float offset = map(brightness, 0, 255, 15, 0);
      stroke(map(brightness,0,255,150,255));
      curveVertex(j, i+offset);
    }
    endShape();
  }
}