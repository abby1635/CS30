Ball ball = new Ball(250, 250);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {

  ball.step();

  background(0);
  //ellipse(ball.x, ball.y, 25, 25); //Error is here, but actual error is elsewhere
  ellipse(ball.getX(), ball.getY(), 25, 25);
  
} //End of draw()

void mouseClicked() {
  
  //Introducing an error, when collaborating, easy to make
  //ball.X = mouseX; 
  //ball.Y = mouseY; 

  ball.targetX = mouseX; 
  ball.targetY = mouseY;
  
} //End of mouseClicked()
