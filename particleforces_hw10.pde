ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(1000, 600);
  background(50);
}

void draw() {
  background(80);
  
  particles.add(new Particle(width/2, height/2));
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addAttract(mouseX, mouseY, 10);
    p.addAttract(500, 300, 40);
    p.update();
    p.display();
    p.addRepel(500, 300, 20);
    p.addRepel(250, 150, 30);
    p.addRepel(750, 450, 30);
    if (p.life < 0) {
      particles.remove(i);
    }
  }
}