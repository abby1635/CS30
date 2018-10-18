// Refer to From Processing to Java
//Note: no access modifiers are declaired here

Ball ball = new Ball();

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {

  ball.step();

  background(0);
  ellipse(ball.x, ball.y, 25, 25); //This will need a getter function if X & Y made private
}

void mouseClicked() {
  ball.targetX = mouseX; //Uses default access modifiers
  ball.targetY = mouseY; //Uses default access modifiers

  /*
   What if x & y was used instead of targetX & targetY?
   An easy mistake that breaks the design of the program
   How - two people programming together, one makes a mistake
   */
}