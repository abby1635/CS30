# Keeping Score Progress and Notes

**UNDER CONSTRUCTION**

Console Only Notes
- ID the conditions to read the left and right score areas of the pong table
- Add code to the individual sides
- Introduce arrays to handle the score variable
  - Note: change other variables to arrays, if possible
- For Example: remember, the repetition in this code can be simplified with nested If Statements
  ```Java
  if (ballX == 0) { //Score for Player 2, note the index
    score[1] += 1;
    println ("Score Board is: " + score[0] + "Player-1" + "     " + score[1] + " Player-2");
    ballX = ballStartX;
    ballY = ballStartY;
  }
  if (ballX == width ) { //Score for Player 1, note the index
    score[0] += 1;
    println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    ballX = ballStartX;
    ballY = ballStartY;
  }
  ```
- randomize the ball starting position

Screen - Text on the Screen
-

---

# Ideas to Include
CS30 Arrays
score1 and score 2 renamed to arrays

After Score, need to randomize if I choose negative or positive for the
- ballMoveX & Y
- this is the array students can practice with
