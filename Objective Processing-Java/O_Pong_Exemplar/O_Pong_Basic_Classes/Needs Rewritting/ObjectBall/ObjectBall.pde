//Questions
//Where and how are new balls initiated

Ball[] balls = new Ball[4]; //only variable to start is how many Pong Balls will be in play

int ballCount = 0;

void setup() {
  size(500, 600); //May need to change these variables
  balls[0] = new Ball(width, height);
  balls[0].gameStart();
  ballCount = 1;
}

void draw() {
  background(255);
  for (int i=0; i<ballCount; i++) {
    balls[i].gamePlay();
    balls[i].draw();
  }
}


void mouseClicked() {
  ballCount++;
  if (ballCount == balls.length) {
    ballCount = balls.length;
  } else {
    for (int i=(ballCount-1); i<ballCount; i++) {
      balls[i] = new Ball(width, height);
      balls[0].gameStart();
    }
  }
}
