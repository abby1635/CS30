//Questions
//Where and how are new balls initiated

Ball[] balls = new Ball[Ball.getBallCount()]; //only variable to start is how many Pong Balls will be in play

void setup() {
  size(500, 600); //May need to change these variables
  for (int i=0; i < balls.length; i++) {
    balls[i] = new Ball(width, height);
  }
}

void draw() {
  if ( StartStop.getStart() == true ) {
    background(#E9FF03); //Yellow
    for (int i=0; i < balls.length; i++) {
      balls[i].draw;
    }
  }
}


//Code that need to be moved and copied elsewhere
