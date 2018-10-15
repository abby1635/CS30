void playGame () {

  background(#E9FF03); //Yellow

  //Calcualting "next" ball position
  //Section necessary when calling functions so passing current arguements
  ballX += ballMoveX; //origonally x+1 operation
  ballY += ballMoveY; //origonally x+1 operation

  // Code to bounce off of paddles, does not interfer with score code since at different X-axis values, just before goal area
  if (ballX == paddle[0] && ballY >= player[1] & ballY <= player[1] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }
  if (ballX == player[2] && ballY >= player[3] & ballY <= player[3] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }

  if (ballY == 0+ballDiameter || ballY == height-ballDiameter ) {
    ballMoveY = ballMoveY * (-1);
  }

  ballSquish(); //Procedure to be called during playGame
  //Called when ball bounces (top, bottom, & paddles)

  //Draws the ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  //Code to Move Paddles, keyboard and mouseX&Y key variables
  //Player 1 Movement
  if (keyPressed == true & key == CODED) { //alternate is void keyPressed(){}, always contains the most recent keyboard key stroke
    if (keyCode == UP) { //KeyCode is used for UP, DOWN, LEFT, and RIGHT; and ALT, CONTROL, and SHIFT
      if (player[1] >= 5) { //Easier to use && instead of nesting IF Statements
        player[1] -= 5; //Review incrementation other than -1
      }
      if (player[1] < 0) { //Catch any subtraction equalling less than zero
        player[1] = 0;
      }
    }

    if (keyCode == DOWN) {
      if (player[1] + paddle[1] <= height) {
        player[1] += 5; //Review incrementation other than +1
      }
      if (player[1] + paddle[1] > height) {
        player[1] = height - paddle[1] - 1; //Cannot add "player[1] + paddle[1]" in an assignment; thus, algebra needed
        //Note: the "-1" shows the black border of the paddle at the bottom, which looks more aesthetic
        //Note: the height is actaully -1 pixel because of the border
      }
    }
  } //End of keyPressed

  //Player 2 Movement
  if (mouseY >=0 || mouseY - paddle[1] < height) {
    player[3] = mouseY;
  }
  if (mouseY >= height - paddle[1]) {
    player[3] = height - paddle[1] - 1;
  }
  //println (mouseY);

// Code to bounce off of paddles, does not interfer with score code since at different X-axis values, just before goal area
  if (ballX == paddle[0] && ballY >= player[1] & ballY <= player[1] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }
  if (ballX == player[2] && ballY >= player[3] & ballY <= player[3] + paddle[1]) {
    ballMoveX *= (-1); //Shorthand for previous x*-1
  }

  //Ball Movement within Pong Table after scoring
  if (ballX == 0 || ballX == width) { //Score for Player 2, note the index
    if (ballX == 0) { //Player 2 Score
      score[1] += 1;
    }
    if (ballX == width) { //Player 1 Score
      score[0] += 1;
    }
    ballX = ballStartX;
    ballY = ballStartY;
    ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveX == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    } //will set the beginning of the draw loop
    ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveY == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    }
    player[1] = height/2 - height/paddleHeightRatio/2;
    //println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    //println("Middle: " + player[1]);
  }


  //Drawing Paddles
  fill(#FF00FF); //Purple
  rect(player[0], player[1], paddle[0], paddle[1]);
  rect(player[2], player[3], paddle[0], paddle[1]);
  fill(0); //Reseting to Black
  
}
