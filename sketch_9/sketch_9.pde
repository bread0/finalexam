/*
this sketch draws an ellipse that has a 25% chance of 
 moving up, left, down or right.
 
 use arrays to create a group of these 'random walkers'
 instead of only displaying one. replace the position 
 variables with arrays and loop to give them values, 
 increment their positions, and draw their corresponding 
 ellipses.
 */

float[] xPos;
float[] yPos;
int num = 20;

void setup() {
  size(600, 600);
  //xPos = width/2;
  //yPos = height/2;
  frameRate(15);
  background(125);

  xPos = new float[num];
  yPos = new float[num];
  for (int i = 0; i < xPos.length; i++) {
    xPos[i] = random(200, width-200);
    yPos[i] = random(200, height-200);
  }
}

void draw() {
  for (int i = 0; i < xPos.length; i++) {

    ellipse(xPos[i], yPos[i], 10, 10);

    float r = random(4);

    if (int(r) == 0) {
      xPos[i] += 5;
    } else if (int(r) == 1) {
      xPos[i] -= 5;
    } else if (int(r) == 2) {
      yPos[i] += 5;
    } else if (int(r) == 3) {
      yPos[i] -= 5;
    }
  }
} 
