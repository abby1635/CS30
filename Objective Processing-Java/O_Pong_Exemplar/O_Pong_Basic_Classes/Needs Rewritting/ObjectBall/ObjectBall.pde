//Questions
//Where and how are new balls initiated

Ball[] balls = new Ball[4]; //only variable to start is how many Pong Balls will be in play

int ballCount = 0;
Boolean endGame = false; //Game will end when Fifth Ball is attempted
//int score1, score2; //Tracking scorePlayer1 & 2

void setup() {
  size(500, 600); //May need to change these variables
  balls[0] = new Ball(width, height);
  balls[0].gameStart();
  ballCount = 1;
}

void draw() {
  background(255);
  if (ballCount > balls.length) { //Array out of Bounds
    ballCount = balls.length;
  }
  for (int i=0; i<ballCount; i++) {
    balls[i].gamePlay();
    balls[i].draw();
    //score1 += balls[i].scorePlayer1;
    //score2 += ball[i].scorePlayer2; //Future Code
  }
  if (endGame == true) {
    println("Game is over");
    exit();
  }
  //println("Player 1:", score1, "\tPlayer 2:", score2);
}

void mouseClicked() {
  ballCount++;
  if (ballCount > balls.length) { //Array out of Bounds
    ballCount = balls.length;
    endGame = true;
  } 
  for (int i=(ballCount-1); i<ballCount; i++) {
    balls[i] = new Ball(width, height);
    balls[i].gameStart();
  }
}
