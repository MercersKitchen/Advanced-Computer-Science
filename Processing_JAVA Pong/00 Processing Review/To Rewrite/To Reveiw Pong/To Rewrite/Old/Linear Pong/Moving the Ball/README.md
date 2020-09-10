# Ideas for Moving the Ball
Lesson Progressions

General Ideas and Progression
- Move the Ball Down: MoveDown
  - Layering for animation: background, full or partial, starts
  - Ball needs to move "smallest perceivable" pixel to make movement "at a certain speed" a believable illusion
  - Remember, ball needs to be above the "lowest height", or largest y-axis value
  - Review Print and Println lines in Processing, with concatenation
  - Review x=x+1 operation and associated code (linear sequences or linear functions), including shorthand
  - Introduce angles of ball movement based on x & y axis movement
  - Review Colour Selection: RGB Colours and Randomizing (same as ball movement), Hexadecimal Colours and Copying Value
  - Option: turn off either x or y axis (IF Statement) and view ball movement in one dimension
  - Additions to the
    - change the 1 to a variable, assign the variable 1
    - Option: assign the variable an operation to control the speed
- Making the ball bounce once
  - Need to explore the idea of adding a variable but reversing direction with arithmetic
  - Concept of Oscillating Geometric Sequences
  - CAUTION: check all inequalities to ensure
- Making ball bounce on all sides
  - Adding another If Statement or exploring OR
  - Notice `ballX <= width` and `ballX <= width` conditions are now redundant
  - Change redundancy to formula at beginning of draw loop, then values are checked for boundaries of Pong Table
  - Change the value of the canvas, Pong Table, to see Square Table Bug and Rectangular Table solution
    - Begin thoughts about creating a self-checking function based on screen size to eliminate this error
  - When changing canvas size, adjust any hardcoded numbers to ratio based numbers
  - Fun Fact: if you let the ball bounce for a while, it will create a pattern
    - How many bounces does it take to create the pattern on a 500 by 600 canvas?
  -
- Dealing with the Ball "half off the screen" at each bounce
- Making Paddles
- Making Goals
- Making Ball bounce off paddles and not the goals
- Making score board

---
# Ideas to Include

---
