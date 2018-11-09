class Ball {

  int ballX;
  int ballY;
  final int ballStartX;
  final int ballStartY;
  final int ballDiameter;
  int ballMoveX;
  int ballMoveY;
  int directionX;
  int directionY;
  int ballSpeedX;
  int ballSpeedY;
  color c;
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  //int ballCount = 5; //Only variable that needs to be coded first

  //Constructor
  Ball(float width, float height) {
    ballStartX = int(width/2);
    ballStartY = int(height/2);
    this.ballX = ballStartX;
    this.ballY = ballStartY;
    ballDiameter = int(width/70); //Must pick one dimension for both ellipse diameters, for a circle
    this.ballSpeedX = int (random (1, 5));
    this.ballSpeedY = int (random (1, 5));
    this.c = color(int(random(255)), int(random(255)), int(random(255)));
  } //End of Constructor

  void draw() {
    fill(c);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
  }


  //Game Start
  void gameStart() {
    //This sets the random for the ball, commented out as an intentional mistake
    //Change this to be a ball speed
    directionX = int (random (-2, 2));
    while (directionX == 0) {
      directionX = int (random (-2, 2));
    }
    directionY = int (random (-2, 2));
    while (directionY == 0) {
      directionY = int (random (-2, 2));
    }
  } //End gameStart

  void gamePlay() {

    //Top and Bottom Boundary Bounce, accounting for increased ball movement per "step"
    if (ballY <= 0 || ballY >= height) { //Empty IF to skip ball arithmetic when score happens
    } else {
      if (ballY <= 0+(ballDiameter/2) || ballY >= height-(ballDiameter/2) ) {
        directionY = directionY * (-1);
      }
      if (ballY <= 0+(ballDiameter/2) ) {
        ballY = 0+(ballDiameter/2);
      }
      if (ballY >= height-(ballDiameter/2) ) {
        ballY = height-(ballDiameter/2);
      }
    }

    //Scoring on Left and Right, reseting variables to decrease system resources
    if (ballX < 0-(ballDiameter/2)) {
      scorePlayer1++;
      ballX = 0;
      ballY = 0;
    }
    if (ballX >= width+(ballDiameter/2)) {
      scorePlayer2++;
      ballX = width;
      ballY = height;
    }

    //Ball "Step"
    if (ballX <= 0 || ballX >= height) { //Empty IF to skip ball arithmetic, when score happens
    } else {
      ballMoveX = ballSpeedX*directionX;
      ballMoveY = ballSpeedY*directionY;
      ballX += ballMoveX;
      ballY += ballMoveY;
    }
    println("Player 1:", scorePlayer1, "\tPlayer 2:", scorePlayer2);
  }

  //Ball Squish

  //Getters and Setters
  /*
  int getBallCount() {
   return ballCount;
   }
   int getBallX() {
   return ballX;
   }
   int getBallY() {
   return ballY;
   }
   int getBallDiameter() {
   return ballDiameter;
   }
   */
} //End of Class
