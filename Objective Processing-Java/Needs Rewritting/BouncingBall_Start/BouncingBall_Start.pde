// Refer to From Processing to Java

Ball ball = new Ball(250, 250);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  ellipse(ball.x, ball.y, 25, 25);
}