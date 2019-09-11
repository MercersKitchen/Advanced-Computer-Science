# Creating the Ball

Creating the ball
- Size (): key variables width & height
  - Option: fullScreen() with displayWidth & displayHeight
- Ratios for ball function

"When the Canvas is resized, the ball is resized automatically."
- Ball remains "see-able" even on device screen like a phone ... very small pixels

Additional Changes to the Code
- Add Ball Variables like ...
  - BallX: where ball will be when printed to the screen, x-axis
  - BallY: where ball will be when printed to the screen, y-axis
  - BallStartX: starting position of ball at the beginning of a game, x-axis
  - BallStartY: starting position of ball at the beginning of a game, y-axis
  - BallDiameter: diameter of the ball
- Move the ellipse in to the DRAW Loop

CAUTION: using size key-variables means the declaration and assignment must happen in different places
