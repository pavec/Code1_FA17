boolean switchState = false;
float switchX = 250;
float switchY = 250;
float switchR = 60;


void setup() {
  size(500, 500);
  background (20, 20, 120);
  
}

void draw() {
  
  float[] e1 = { 
    250, 60
  };
  
    
   stroke(0);
   fill(255, 60, 60);
  if (switchState){
    stroke (0);
  }else{
    stroke(255);
    translate(100, 100);
  }
  ellipse(e1[0], e1[0], e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] + 70, e1[0] + 70, e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] - 70, e1[0] - 70, e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] + 140, e1[0] + 140, e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] - 140, e1[0] - 140, e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] + 210, e1[0] + 210, e1[1] * 2, e1[1] * 2);
  ellipse(e1[0] - 210, e1[0] - 210, e1[1] * 2, e1[1] * 2);

  
  for(int w = -160; w <= width; w+=70){
  for (int h = -160; h <=height; h+=70){
    float r = map(w, 0, width, 0, 255);
    float b = map (h, 0, height, 0, 255);
    fill(r, 50, b);
    rect(w, h, 60, 60);
  }
  }
}
  void mousePressed(){
  if (dist(mouseX, mouseY, switchX, switchY)< switchR){
   switchState = !switchState; 
  }
}