PImage kopi;

void setup(){
 size (1000, 900);
 kopi = loadImage("kuchikopi.jpg");
 noStroke();
}

void draw(){
 imageMode(CENTER);
 //image (kopi, width/2, height/2);
 color c = kopi.get(mouseX, mouseY);
 fill(c);
 ellipse(mouseX, mouseY, 90, 90);
 ellipse(mouseX, 100, 100, 100);
 ellipse(mouseX, 800, 100, 100);
 ellipse(100, mouseY, 100, 100);
 ellipse(900, mouseY, 100, 100);
 float r = red(c);
 float g = green(c);
 float b = blue(c);
 
}