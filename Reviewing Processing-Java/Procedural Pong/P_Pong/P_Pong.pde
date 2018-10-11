// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)
Boolean start = false;
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;

//This File is the main file
//It calls each Procedure in either setup() or draw()
void setup() {
  size(500, 500);
  //Debug: square vs. rectangle code
  gameStart(); //arithemetic to calcaulte starting positions of paddles and ball
}

void draw() {
  //Code to change "Start" Boolean Variable to true & to Quit the game
  startStop();

  if (start==true) { //Contains the entire Main File Code

    playGame(); //Also contains "ball squish" procedure, with change in frameRate
    // Also contains highlihgts for positive user feedback
    score(); //contains highlihgts for positive user feedback
  }
}
