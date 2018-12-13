/*
currently this sketch draws white points all over the canvas.
 
 change the values being given to x and y and add a conditional so that
 the white points are only drawn inside the black circle.
 you will have to use the dist() function.
 */

float x, y;

void setup() {
  size(600, 600);
  background(50);
  fill(0);
  ellipse(width/2, height/2, 300, 300);
}

void draw() {
  x = random(width/2-150, width/2+150);
  y = random(150, height-150);
  if (dist(x, y, width/2, height/2) < 150) {
    stroke(255);
    point(x, y);
  }
}
