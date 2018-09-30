# Review Processing-Java
Creating a Pong Game

**UNDER CONSTRUCTION**

Processing Resources
- Processing Reference: https://processing.org/
- Debugging line: hints for syntax and function parameter expectations

General Ideas
- What does the ball need to know about itself?
- How does the ball move?
- How do we debug where the ball is in the console?
- How do we bounce the ball off the sides
  - Question to save: how to we bounce the ball when it is on the screen, not half off the screen?
- How do we record scores and restart the ball in the center of the screen
- How do we draw moving paddles, keep score, and have the ball bounce on the paddles, but not the screen?
- Additional Questions
  - How do we control the speed of the ball?

Built in Bugs that Should be Addressed
- "On a square table, un-randomized ball movement bounces from corner to corner"
  - Check to see if the table is square, change the ball movement in one dimension to 1.1 (just higher than 1)
  - Might result in different speeds of ball on different bounces
- Adding Boolean as value checker, security feature
  - For Example
  ```Java
  if (ballX == 500 | ballY == 500) { //Checks Value or Might Be a Boolean after value checked
    if (ballX == 500) {
      ballMoveX= ballMoveX * (-1);
    }
    if (ballY == 500) {
      ballMoveY = ballMoveY * (-1);
    }
  }
  ```
-

## What the ball knows about itself and related ideas

- BallX: where ball will be when printed to the screen, x-axis
- BallY: where ball will be when printed to the screen, y-axis
- BallStartX: starting position of ball at the beginning of a game, x-axis
- BallStartY: starting position of ball at the beginning of a game, y-axis
- BallDiameter: diameter of the ball
- BallMoveX: number value that moves the ball each frame (default frame rate = 60/s), x-axis
- BallMoveY: number value that moves the ball each frame (default frame rate = 60/s), y-axis
- Score[]: when it scores and restarts

Other Ideas
- Diameter, Radius and Formula to solve these ideas
- Where it starts on the Pong table
- Which direction it moves in (note: sending the ball randomly to the four corners increases the paddle distance to travel if starting in the middle but does not increase player control of the paddle)
- Dealing with different sized screens, especially square canvases and various ranged rectangle canvases


---

# Ideas to Include
Dealing with the Ball off the Screen, half way
  - Ball Squish
  - how casting affects ball off screen error?
  - Making the ball stop at the edge so the edge of the ball stops
  - Dealing with Squish
  - will need method with both ellipse definitions of a deformed circle

Checking square vs. rectangle in moving ball

Improvements to Game
- Start ball in any direction, not original four

HTML Promo Page
- Use this lesson to develop ideas for Mentoring Kindergarten Students, Gr 5

---
