class Ball () {

  private int ballX;
  private int ballY;
  private final int ballStartX;
  private final int ballStartY;
  private final int ballDiameter;
  private int ballMoveX;
  private int ballMoveY;

  private static int ballCount=5; //Only variable that needs to be coded first

  //Constructor
  Ball () {
    this.ballX = ballX;
    this.ballY = ballY;
    this.ballSpeedX = ballSpeedX;
    this.ballSpeedY = ballSpeedY;
  } //End of Constructor

  //Game Start
  void gameStart () {
    ballStartX = width/2;
    ballStartY = height/2;
    ballX = ballStartX;
    ballY = ballStartY;
    ballDiameter = width/70; //Must pick one dimension for both ellipse diameters, for a circle

    //This sets the random for the ball, commented out as an intentional mistake
    //Change this to be a ball speed
    ballMoveX = int (random (-2, 2));
    while (ballMoveX == 0) {
      ballMoveX = int (random (-2, 2));
    }
    ballMoveY = int (random (-2, 2));
    while (ballMoveY == 0) {
      ballMoveY = int (random (-2, 2));
    }
  } //End gameStart



  //Ball Squish

  //Getters and Setters
  pubic static int getBallCount() {
    return ballCount;
  }
} //End of Class
