# Object-based Pong Game
Rewriting the Procedure Pong Game, but in Object-based format

**UNDER CONSTRUCTION**

Organization of Main & Classes
- Main:
  - Creates Pong Balls with Ball Class
  - draws ball
  - draws firework, single
  - ...Starts game immediately
  - Checks for Ball-array out of bounds loop
  - draws ball and steps
  - adds the score and prints it to the console
  - starts new ball with mouse click
- Ball Class
  - Creates a ball through declaration and assignment
  - Splits ball object creation between declare, assign in constructor, and assign in gameStart()
  - Uses Empty-IF to make ball stick in goal or do arithmetic on ball steps
  - Creates the next ball if listener not present
- Firework Class
  - Creates a firework through declaration and assignment
  - Uses ballX&Y values when stuck in the goal
- Left-Paddle Class
- Right Paddle Class
- Scoreboard Class

Errors about Programs
. Object Ball: One side works, the other side doesn't freeze the ball
. Object Ball Firework: listener disengages void draw() like noLoop()
. Visual data for Ball & Firework broken, illustrating console works with prototyping program

Progression
1. Build a Ball Class
   - General Summary
     - direction, speed, colour, bounces ... scores
     - speed set at beginning, meant to increase
     - all balls start in center, final variable
     - all diameters are same
     - Bounce is not half off the screen
     - Goal area (redo this)
       - in paddle area, before goal ... bounce
       - past paddle, anywhere, score, based on ball-diameter/2 ratio
       - think about drawing rect() for net area
       - if in net, redraw so stuck in net ... communication with Firework and Scoreboard Objects
     - Ball Squish needs to be written
     - Bug: ScorePlayer1 & 2 incrementing but not summing into next Score1 & 2 Variable
   - Unique Coding Concepts
     - Empty IF, similar to Empty draw(): used to skip arithmetic code of next ball steps
   -
2. Build a Firework Class

## Prototyping Ideas and Concepts
Prototype each class before combining
- ball bounces and scores
- firework goes at goal and bounce of other team
- paddles bounce and move
- scoreboard prints score

---


---

# Ideas to Include
Making Fireworks work
- Main program, variable to draw a ball's fireworks once

CAUTION: Scoring not done
- Scoring needs to be written to activate Firework in certain area

Pure-Java
- Needs Security, Getters and Setters

Note: having a mouseClick Listener stops the void draw() loop automatically
- Listener


---
