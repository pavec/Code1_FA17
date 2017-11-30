class Particle {
 PVector pos;
 PVector vel;
 PVector acc;
 float life;
 float maxSpeed;
 
 Particle(float x, float y){
  pos = new PVector (x, y);
  vel = new PVector();
  acc = new PVector(0, 0);
  life = 3;
  maxSpeed = 5;
 }
 void update(){
 acc.mult(10);
 vel.add(acc);
 vel.limit(maxSpeed);
 pos.add(vel);
 life--;
}
void display(){
 float s = map(life, 50, 0, 50, 0);
 fill(random(255), random(255), random(255), 255);
 noStroke();
 ellipse(mouseX, mouseY, 5, 5);
 //use triangle instead?
}
void addAttract(float x, float y, float maxForce){
 float angle = atan2 (y - pos.y, x - pos.x);
 float forceStr = maxForce / (1 + dist(pos.x, x, pos.y, y));
 PVector newForce = new PVector(cos(angle), sin(angle));
 newForce = newForce.mult(forceStr);
 acc.add(newForce);
}
void addRepel(float x, float y, float maxForce){
  
}
}