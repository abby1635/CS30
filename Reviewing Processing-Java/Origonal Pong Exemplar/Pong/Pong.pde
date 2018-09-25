int ballX = 250;
int ballY = 250;

int xSpeed = -1;
int ySpeed = 2;

int playerOneX = 0;
int playerOneY = 250;

int playerTwoX = 475;
int playerTwoY = 250;

int paddleHeight = 50;
int paddleWidth = 25;

int playerOneScore = 0;
int playerTwoScore = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0, 0, 0);

  if (keyPressed) {
    if (keyCode == UP) {
      if (playerOneY > 0) {
        playerOneY = playerOneY - 5;
      }
    }

    if (keyCode == DOWN) {
      if (playerOneY + paddleHeight < 500) {
        playerOneY = playerOneY + 5;
      }
    }
  }

  if (playerTwoY < mouseY) {
    playerTwoY = playerTwoY + 5;
  }

  if (playerTwoY > mouseY) {
    playerTwoY = playerTwoY - 5;
  }

  ballX = ballX + xSpeed;
  ballY = ballY + ySpeed;

  if (ballY < 0) {
    ySpeed = ySpeed * -1;
  }

  if (ballY > 500) {
    ySpeed = ySpeed * -1;
  }

  if (ballX < playerOneX + paddleWidth) {

    if (ballY < playerOneY) {
      playerTwoScore = playerTwoScore + 1;
      ballX = 250;
      ballY = 250;
    }

    if (ballY > playerOneY + paddleHeight) {
      playerTwoScore = playerTwoScore + 1;
      ballX = 250;
      ballY = 250;
    }

    xSpeed = xSpeed * -1;
  }

  if (ballX > playerTwoX) {

    if (ballY < playerTwoY) {
      playerOneScore = playerOneScore + 1;
      ballX = 250;
      ballY = 250;
    }

    if (ballY > playerTwoY + paddleHeight) {
      playerOneScore = playerOneScore + 1;
      ballX = 250;
      ballY = 250;
    }

    xSpeed = xSpeed * -1;
  }

  textSize(36);
  text(playerOneScore, 100, 100);
  text(playerTwoScore, 400, 100);

  rect(playerOneX, playerOneY, paddleWidth, paddleHeight);
  rect(playerTwoX, playerTwoY, paddleWidth, paddleHeight);

  ellipse(ballX, ballY, 10, 10);
}