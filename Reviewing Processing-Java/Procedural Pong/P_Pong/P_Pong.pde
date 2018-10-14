// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)
Boolean start = false;
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;

//This File is the main file
//It calls each Procedure in either setup() or draw()
void setup() {
  size(500, 600);
  String fullSize = "Width=" + displayWidth + "; Height=" + displayHeight; //Another example of String Concatenation, used locally in setup()

  //Check size on actual display monitor
  if (width > displayWidth) { 
    println ("ERROR: Change Pong Table size-width, it is too big."); 
    exit(); //Will continue to the end of the program, and then exit (See Processing Reference)
  }
  if (height > displayHeight) { 
    println ("ERROR: Change Pong Table size-height, it is too big"); 
    exit();
  }

  //Debug: square vs. rectangle code
  if (width == height) {
    println ("Full Screen Debugging: ", fullSize); //Used to compare against manually entered canvas size
    println ("ERROR: The Canvas is a Square causing problems with the ball bouncing. Width & Height are " + width + ", " + height); //Used to compare against manually entered canvas size
    println ("Please adjust on line, function 'size'.");
    println ("Do not size larger than the monitor: ", fullSize);
    exit(); //Used to exit the canvas, incorrectly puts the user reponsible for the coding
  }

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
