ArrayList<Particle> particles = new ArrayList<Particle>();

void setup (){
  size (800, 800);
}

void draw(){
  //draw trees
  
}
void mouseClicked(){
  //draw arrow(s)
  rect(mouseX, mouseY, 50, 50);
   noStroke();
  particles.add(new Particle(mouseX, mouseY));
  for (int i = 0; i < particles.size(); i++){
   Particle p = particles.get(i);
   p.addAttract(mouseX, mouseY, 10);
   p.update();
   p.display();
   if(p.life<0){
    particles.remove(i); 
   }
  }
}
void mouseDragged(){
  //arrow changes directions and distance 
  translate (mouseX, -20);
}

void mouseReleased(){
  //arrow flies and interacts
  translate (50, 0);
  fill (random(255), random(255), random(255), 255);
}