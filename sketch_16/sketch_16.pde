/*
this sketch draws a repeatedly growing and shrinking ellipse.
 your task is to change the program so that this behavior is
 encapsulated inside a class. 
 
 move all this behavior to a class, then have mouse clicks create
 instances of the class on the screen. use an ArrayList to store
 the instances of the class that you create, and update and display
 all of them in the draw() loop. 
 */

ArrayList<Ball> ball;

void setup() {
  size(600, 600);
  ball = new ArrayList<Ball>();
}

void draw() {
  background(150);
  for (int i = 0; i < ball.size(); i++) {
    Ball temp = ball.get(i);
    temp.update();
    temp.display();
  }
}

void mousePressed() {
  ball.add(new Ball(mouseX, mouseY));
}

class Ball {
  float x, y, d, incr, maxSize;

  Ball(float x, float y) {
    this.x = x;
    this.y = y;
    d = 0;
    incr = 2;
    maxSize = 150;
  }

  void display() {
    ellipse(x, y, d, d);
  }

  void update() {
    if (d > maxSize || d < 0) {
      incr = -incr;
    }
    d += incr;
  }
}
