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

Error out of Console Only Program
- randomize the ball starting position to not repeat the ball going in the same direction

Using Random to Start Ball in Any of Four Directions
- see: https://processing.org/reference/random_.html
- Must Randomly pick either -1 or 1
- Notice Random, as a float will pick a variety of numbers
- Pong requires integer of 1 or -1
- Solution: use casting

Note about Casting, Type Casting (part of static languages)
- Widening Casting (Implicit), no explicit casting necessary
- Compiler simply adds "zeros" to the type of variable
- byte - short - int - long - float - double
  - byte: -128 to 127 (inclusive), 8-bit, max value is 2^7,
  - short: -32,768 to 32,767 (inclusive), 16-bit
  - int: -2^31 to (2^31)-1, 32-bit
  - long: -2^63 to (2^63)-1, 64-bit
  - float: decimal value similar to int
  - double: decimal value similar to long
- Narrowing Casting, explicit casting necessary: does not follow mathematical rounding rules
  - call Truncating (another math term): "rounding the lazy way, or turning off switches if you are a computer"
  - See Casting Example

Program Progression
1. Using Random: illustrates Random Function
  - Remember: for this Pong, we need -1 and 1 for Oscillating Geometric Sequences, or changing direction when ball bounces
  - if use rounding rules from float to integer, should be able to round in following ways
  - -1.49 to -0.5 rounds to -1
  - -0.49 to 0.49 rounds to 0
  - 0.5 to 1.49 rounds to 1
2. Using Random with Casting, the computer changing a variable type from a decimal value to integer (float to int)
  - See CastingExample.pde
  - Will a computer's use of Truncating affect our Random Function?
3. See 2 Programs Using Random, illsutrates how to use explicit casting
  - See UsingRandom_WithZero.pde
    - Issue: Random Arguemnts need to be understood as implicit and explicit (refer to Processing Reference Sheet)
    - (-2, 2) will work as an argument when casting as an int, argument is explicit on both when casting to an int
    - Addtional Issue: Pong will not accept a zero, need to eliminate it
  - See UsingRandom_NoZero.pde: will only execute random again if zero is chosen
  - Write a quick program to check if using Casting from a float to an int will affect randomly chosen -1 and 1
    - See Solution Called IntCastingRandom.pde
4. Turning Console into Program that randomly chooses which four directions to send ball
  - Develop Algorotihm for this
  - Code into Console Copied Code, renaming program
5. Instead of Console, print the score to the canvas


Screen - Text on the Screen
-

---

# Ideas to Include
CS30 Arrays
score1 and score 2 renamed to arrays

After Score, need to randomize if I choose negative or positive for the
- ballMoveX & Y
- this is the array students can practice with