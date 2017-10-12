boolean switchState = false;
float switchX = 250;
float switchY = 250;
float switchR = 60;
float r;
float b;
void setup() {
  size(500, 500);
  background (20, 20, 120);
}
void draw() {
   stroke(0);
   fill(255, 60, 60);
  if (switchState){
    stroke (0);
  }else{
    stroke(255);
    translate(100, 100);
  }
  ellipse(switchX, switchY, switchR * 2, switchR * 2);
  ellipse(switchX + 70, switchY + 70, switchR * 2, switchR * 2);
  ellipse(switchX - 70, switchY - 70, switchR * 2, switchR * 2);
  ellipse(switchX + 140, switchY + 140, switchR * 2, switchR * 2);
  ellipse(switchX - 140, switchY - 140, switchR * 2, switchR * 2);
  ellipse(switchX + 210, switchY + 210, switchR * 2, switchR * 2);
  ellipse(switchX - 210, switchY - 210, switchR * 2, switchR * 2);
  
  loop();
  loop2();
  loop3();
  
  for(int w = -160; w <= width; w+=70){
  for (int h = -160; h <=height; h+=70){
    float r = map(w, 0, width, 0, 255);
    float b = map (h, 0, height, 0, 255);
    fill(r, 50, b);
    rect(w, h, 60, 60);
  }
  }
   //random walker
    float x = int(random(5));
    if (x==0){
     r += 2; 
    }else if (x ==2){
      b += 2;
    }else if (x==3){
      r -= 2;
    }else{
     b -= 2; 
    }
}
void mousePressed(){
  if (dist(mouseX, mouseY, switchX, switchY)< switchR){
   switchState = !switchState; 
  }
}

void loop() {
  int x = 20;
  while ( x > 0) {
    println(x);
    x -= 2;
  }
}
void loop2() {
  int x = 0;
  while (x < 30) {
    println(x);
    x += 3;
  }
}
void loop3() {
  for (int x = 5; x < 50; x += 5) {
    println(x);
  }
}
  //while loop:
//void whileInfinite() {
//int x = 5;
//while ( x > 5) {
//println(x);
//x += 1;
//}
//}
  //for loop:
//void forInfinite() {
//  for (int x = 1; x > 0; x += 10) {
//    println(x);
//}
//}