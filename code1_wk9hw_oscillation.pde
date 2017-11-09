float x[] = new float[100];
float angle;
float rate;
float amplitude;


void setup() {
  size(550, 700);
  noStroke();

  angle = 0;
  amplitude = 200;
  rate = 0.2;
}

void draw() {
  background(255);
  noStroke();
  angle += rate;
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2 + sin((angle + i) * 0.1) * amplitude;
    float r = map(i, 0, x.length, 0, 255);
    fill(r, 100, 100);
    float siz = map(i, 0, x.length, 10, 70);
    float yPos = map(i, 0, x.length, 100, height-100);
    ellipse(x[i], yPos, siz, siz);
  }
}