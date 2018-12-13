/*
this sketch uses an incrementation variable to change the
color of a rectangle from black to white.

replace the incrementation approach with a color transition
based on a sin() function for a smoother cycle.

remember that sin() returns a value from -1 to 1.
*/

//float incr = 1;
float c = 0;
float d;

void setup() {
  size(600, 600);
}

void draw() {
  //if (c > 255 || c < 0) {
  //  incr = -incr;
  //}
  //c += incr;
  
  c += TWO_PI/400;
  d = sin(c);
  fill(map(d, -1, 1, 0, 255));

  rect(100, 100, 400, 400);
}
