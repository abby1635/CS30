//Questions
//Where and how are new balls initiated

int ballCount = 0;
int[] scorePlayer1 = {1, 1, 0, 1};
int[] scorePlayer2 = {1, 1, 1, 1};
int Score1=0, Score2=0; //Placeholder variables until ScoreBoard Class created, FOR Loop using these should move to ScoreBoard Class
Boolean endGame = false; //Game will end when Fifth Ball is attempted
//int score1, score2; //Tracking scorePlayer1 & 2

void setup() {}

void draw() {
  if (endGame == true) {
    println("\n\nGame is over"); //Escapes because Console log happens in other classes
    for (int i=0; i<4; i++) {
      println("Inside Loop");
      Score1 += scorePlayer1[i];
      Score2 += scorePlayer2[i];
      println("Player 1:", scorePlayer1[i]);
      println("Player 2:", scorePlayer2[i]);
    }
    println("Player 1:", Score1, "\tPlayer 2:", Score2); //Escapes because Console log happens in other classes
    exit();
  }
  //println("Player 1:", score1, "\tPlayer 2:", score2);
}

void mouseClicked() {
  ballCount++;
  if (ballCount > 5) { //Array out of Bounds
    ballCount = 4;
    endGame = true;
  }
}
