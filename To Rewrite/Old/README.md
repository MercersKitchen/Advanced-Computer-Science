# Review Processing-Java
Creating a Pong Game

**UNDER CONSTRUCTION**

Progression & Challenges
1. Processing Flat, linear, Program
  - Notice this means FolderName matched to .pde name / void setup(){} / void draw(){}
    - Required for Running ByteCode and the Java Compiler (will become clearer when we write Pure Java)
  - Pathway: Starting Processing Boilerplate
  - Pathway: Create the Ball
  - Pathway: Moving the Ball
  - Pathway: Adding Paddles
  - Additional Challenges
    - How do we check if the canvas is square or rectangle, before we play, and make the program smarter for the user?
    - Making the ball stop at the edge, so the edge of the ball touches the edge of the screen?
2. Procedural Program
  - Rewrite the program into Procedures, <a href="https://github.com/MercersKitchen/CS30/tree/master/Reviewing%20Processing-Java#creating-procedural-processing-java-boilerplate-for-pong-leads-to-object-orientated-approach">Click Here for Boilerplate in Procedures</a>
    - void Procedures
    - return Procedures
    - Focus: Main File to "call" blocks of code; other files to group blocks of code
    - Intended Side-effect: decrease repeated code
  - Minimum Effort: copy the code from your linear program into Procedural Methods
    - Mercer's Kitchen Exemplar, from Processing-Java Sandbox: <a href="https://github.com/QEHS-ProcessingJava/Advanced-Review-Processing-Java/tree/master/Origonal%20Pong%20Exemplar/Pong">Click Here</a>
  - Additional challenges meant for Procedures
    - Creating a "Ball Squish" to run every time a ball bounces off the screen
      - Note: will need method with both ellipse definitions of a deformed circle
    - Create alternate methods for Single Player (not simply repeating the ball's y-axis variable)
3. Object Orientated Program
  - Constructor
  - Ball Object
  - Additional Challenges
    - Start ball in any direction, not original four
    - Increase the ball's speed with more bounces and even more with more goals
      - Perhaps "even the odds" for a player who is more than 2 or 3 goals ahead
    - Create sophisticated methods for Single Player so the "computer" can adjust how perfectly it plays, depending on the score
      - Might give written feedback to player based on score and "here I come" type messages
    - Create more than one ball at a time, perhaps based on score, perhaps based on keyboard stokes answering questions about the level of difficult you intend to play with

Processing Resources
- Processing Reference: https://processing.org/
- Debugging line: hints for syntax and function parameter expectations

General Ideas and Improvement
- What does the ball need to know about itself?
- How does the ball move?
- How do we debug where the ball is in the console?
- How do we bounce the ball off the sides
  - Question: how to we bounce the ball when it is on the screen, not half off the screen?
- How do we record scores and restart the ball in the center of the screen
- How do we draw moving paddles, keep score, and have the ball bounce on the paddles, but not the screen?
- Additional Questions
  - How do we control the speed of the ball?
- How casting affects ball off screen error? (on a square screen, changing ballMoveX to 1.1 changes speed and how the ball moves, especially when it gets stuck at height+1)

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

## HTML Promo Page
Use this lesson to develop ideas for Mentoring Kindergarten Students, Gr 5

---

## What the ball knows about itself and related ideas

- BallX: where ball will be when printed to the screen, x-axis
- BallY: where ball will be when printed to the screen, y-axis
- BallStartX: starting position of ball at the beginning of a game, x-axis
- BallStartY: starting position of ball at the beginning of a game, y-axis
- BallDiameter: diameter of the ball
- BallMoveX: number value that moves the ball each frame (default frame rate = 60/s), x-axis
- BallMoveY: number value that moves the ball each frame (default frame rate = 60/s), y-axis


Other Ideas
- Diameter, Radius and Formula to solve these ideas
- Where it starts on the Pong table
- Which direction it moves in (note: sending the ball randomly to the four corners increases the paddle distance to travel if starting in the middle but does not increase player control of the paddle)
- Dealing with different sized screens, especially square canvases and various ranged rectangle canvases
- When the ball needs to squish and move in the opposite direction

Related Ideas to the particular ball (when more than one ball exists)
- Score[]: when it scores and restarts

---

## Creating Procedural Processing-JAVA Boilerplate for Pong (leads to Object Orientated Approach)

Procedures to Code for In Pseudocode
1. Global Variables (different from local variables, for example, Procedural-specific and iteration or array indices)
2. Starting the Game, with user experienced pause to start the game with the space bar
3. Playing the Game: ball movement, paddle movement
4. Resetting the Game after a Goal (very similar to game start, so should be the same block of code)
5. Scoring Method: arithmetic for checking the goal area, drawing the score-board
6. Ball Squish Procedure: highlighting the ball bouncing off the table sides (top and bottom) & paddles
  - Advanced: highlighting these differently based on colour ... positive feedback for contacting the ball

Concepts to Highlight
- Focus: Main File to "call" blocks of code; other files to group blocks of code
- Intended Side-effect: decrease repeated code
- void Procedures: execute only blocks of code, repeatedly
- return Procedures: calculate a value used in other places

---

# Ideas to Include

BallMoveX&Y will control the speed in each dimension for a cumulative effect
- for example: 1 and 1 moves ball in 45-degree angle
- for example: 1 & 1 changes the angle based on X-Axis "speed"
- Mimics Physics or Calculus Analysis of Motion

What if ...
- What if the ball moved faster to handy-cap a player
- What if the paddle moved slower to hand-cap a player
- What if more pong-balls were added to the screen (will need object orientated coding)

---
