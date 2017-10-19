float b;
float g;
int flying = 100;
color c[] = new color [flying];
float x[] = new float[flying];
float y[] = new float[flying];
float r[] = new float[flying];
float dx[] = new float[flying];
float dy[] = new float[flying];

void setup(){
  size (500, 500);
  background(0);
  for (int i = 0; i < flying; i++){
   r[i] = random(5, 20);
   x[i] = random(r[i], width - r[i]);
   y[i] = random(r[i], height - r[i]);
   dx[i] = random(11, -11);
   dy[i] = random(11, -11);
  }
}
void draw(){
  
  for (int i = 0; i < flying; i++) {
    x[i] += dx[i];
    y[i] += dy[i];
    c[i] = color(random(100), random(g), random(b));
    fill (c[i]);
  rect(x[i], y[i], r[i]*2, r[i]*2);
  if (x[i] > width - r[i] || x[i] < r[i]) {
      dx[i] = -dx[i];
    }
    if (y[i] > height - r[i] || y[i] < r[i]) {
      dy[i] = -dy[i];
    }
 float x = int(random(5));
    if (x==0){
     b += 2; 
    }else if (x ==2){
      g += 2;
    }else if (x==3){
      b -= 2;
    }else{
     g -= 2; 
    }
  }
}