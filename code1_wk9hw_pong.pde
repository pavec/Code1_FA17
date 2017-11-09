int p1Score;
int p2Score;

boolean p1Up = false;
boolean p1Down = false;
boolean p2Up = false;
boolean p2Down = false;

Ball b1;
Ball b2;
Ball b3;
Paddle p1;
Paddle p2;

void setup() {
  size(1000, 700);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  p1 = new Paddle(0);
  p2 = new Paddle(1);
  
}

void draw() {
  background(0);

  b1.checkCollisionWithPaddle(p1);
  b1.checkCollisionWithPaddle(p2);
  b2.checkCollisionWithPaddle(p1);
  b2.checkCollisionWithPaddle(p2);
  b3.checkCollisionWithPaddle(p1);
  b3.checkCollisionWithPaddle(p2);


  b1.update();
  b1.display();
  b2.update();
  b2.display();
  b3.update();
  b3.display();
  p1.update();
  p1.display();
  p2.update();
  p2.display();

  textSize(36);
  textAlign(CENTER, CENTER);
  fill(255, 0, 0);
  text(p1Score, width/2 - 100, 50);
  fill (0, 0, 255);
  text(p2Score, width/2 + 100, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = true;
    }
    if (keyCode == DOWN) {
      p2Down = true;
    }
  } else {
    if (key == 'w') {
      p1Up = true;
    }
    if (key == 's') {
      p1Down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2Up = false;
    }
    if (keyCode == DOWN) {
      p2Down = false;
    }
  } else {
    if (key == 'w') {
      p1Up = false;
    }
    if (key == 's') {
      p1Down = false;
    }
  }
}

class Paddle {
  float x;
  float y;
  float w;
  float h;
  int playerNum;

  Paddle(int whichPlayer) {
    playerNum = whichPlayer;
    if (whichPlayer == 0) {
      x = 30;
      y = height/2;
      w = 20;
      h = 150;
    } else if (whichPlayer == 1) {
      y = height/2;
      w = 20;
      h = 150;
      x = width-30-w;
    }
  }

  void update() {

    if (playerNum == 0) {
      if (p1Up) {
        y-=10;
      } 
      if (p1Down) {
        y+=10;
      }
    }
    if (playerNum == 1) {
      if (p2Up) {
        y-=10;
      } 
      if (p2Down) {
        y+=10;
      }
    }
  }


  void display() {
    rectMode(CORNER);
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
}


class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity

  //think of the constructor function as the setup() for the object instance.
  //notice there is no "void" or return type. Technically it returns itself (a Ball)
  //this constructor takes no arguments - it sets all fields automatically.
  Ball() {
    x = width/2;
    y = height/2;
    dx = 10;  //set a random velocity
    dy = random(-3, 3);
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(x, y, 10, 10);
  }

  // call this method to update the ball's position
  void update() {
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    x += dx;

    if (x < 0 || x > width) {

      if (x < 0) {
        p2Score++;
        background (60, 60, 180);
      }

      if (x > width) {
        p1Score++;
        background (180, 60, 60);
      }

      x = width/2;
      y = height/2;
      dx = -dx;  //set a random velocity
      dy = random(-3, 3);
    } 

    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }

  void checkCollisionWithPaddle(Paddle p) {
    if (x > p.x && x < p.x + p.w) {
      if (y > p.y && y < p.y + p.h) {
        dx = -dx;
        dy = random(-10, 10);
      }
    }
  }
}