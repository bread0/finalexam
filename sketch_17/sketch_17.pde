/*
  try to reproduce the 'twinkling stars' effect in the gif.
 you should use the Star class in order to do this.
 think of the starry sky as a group of star objects that 
 change color over time.
 
 if you can't reproduce it exactly, come as close as you can.
 */
int num = 200;
Star[] stars = new Star[num];

void setup() {
  size(600, 600);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  stroke(random(100, 255));
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
  }
}

class Star {
  float x, y;

  Star() {
    x = random(0, width);
    y = random(0, height);
  }

  void display() {
    point(x, y);
  }
}
