# Review Processing-Java
From Structured to Procedural
- add all Advanced Placement Vocabulary in summary and Explanations in Details

Concepts and Vocabulary Summary
- Pong Case Study: GUI & End-user, experienced features, expectations
  - Chart for GUI Ratios and factions of objects in GUI (ball, paddle x 2, scoreboard x 2)
  - Object || X | Y | width | height
- Basic boilerplate for Processing
  - Review code for fullScreen()
- Variables: Naming, Camel Casing, Declaration, Population (Defining)
- Variables related to functions and parameters, with Casting, and using the debugging window
- Using console to view arithmetic and where objects are
- Gray Scale, RGB Values, Hexadecimal Values, using Tools/Color Selector

Progression
- Pong Case Study: GUI & End-user, experienced features, expectations, <a href="">see below</a>
  - Chart for GUI Ratios and factions of objects in GUI (ball, paddle x 2, scoreboard x 2)
  - Object || X | Y | width | height
- Basic boilerplate for Processing, <a href="">see folder for Processing-Java File</a>
  - Review code for fullScreen()
  - Review why Mercer's Kitchen Classroom cannot use fullScreen() for teaching, only side loading
- Using console to view arithmetic and where objects are- Boilerplate for Pong & Starting Processing-Java
  - Trivia Notes about Processing-Java, <a href="">see below</a>
- CreateBall.pde, see folder or <a href="">see below for added code</a>
- BounceBall.pde, see folder or <a href="">see below for added code</a>
- Create Paddles and move them; & start coding Dark-Light Mode
  - Bounce off paddles
  - Make Game stop when ball in the net
  - Paddles.pde, see folder or <a href="">see below for added code</a>
  - PaddlesBounceTest.pde, <a href="">see folder above</a>
  - PaddlesBounce.pde, see folder or <a href="">see below for added code</a>
  - PaddlesBounceNet.pde, see folder or <a href="">see below for added code</a>
  - PaddlesBounceNetGoalConsole.pde, see folder or <a href="">see below for added code</a>
- Record a goal to the console

---

# Pong Case Study

Mandatory GUI Objects
- Ball
- Left and Right Paddles
- Score Board
- Space for Buttons

Mandatory Features
- GUI Button Control
- Dark-Light Mode Switch
- Reset Game Button
- Quit Program Button

Advanced Features Idea List
- "Evening out play when score is not close"
  - Making ball faster
  - Slowing paddle speed
- Creating AI for Single Player Play

---

# Trivia Notes about Processing-Java

Processing-Java uses the Java Compiler

Requirements
- Processing-Java file must be within Folder, named the same
- .pde extension adds a few requirements to the Processing-Java Execution

Other Notes
- ByteCode automatically created
- Main Processing-Java Program is the Constructor (in Object Orientated Programming)
- Java Compiler is run with specific main line "void main string args ()"

---

# CreateBall.pde: Creating and Moving the Ball

```JAVA
  //Global Variables
  float ballStartPositionX; // displayWidth
  float ballStartPositionY; // displayHeight
  float ballSize ; // displayWidth
  int ballMoveX; // Declaration
  int ballMoveY; // Declaration
```

```JAVA
void setup() {

  //Populating the global variables with display geometry
  size (700, 500); // fullScreen(); Cannot Teach with fullScreen()
  ballStartPositionX = width*1/2; // displayWidth
  ballStartPositionY = height*1/2; // displayHeight
  ballSize = width*1/128; // displayWidth
  ballMoveX = int (ballStartPositionX); //Populate, Example of Casting
  ballMoveY = int (ballStartPositionY); //Populate, Example of Casting
}

// Create a Ball, start position
ellipse (ballStartPositionX, ballStartPositionY, ballSize, ballSize);

```

```JAVA
void draw() {

  // Move the Ball
  println ("X Start:", ballStartPositionX, "Y Start:", ballStartPositionY);
  println ("X Move:", ballMoveX, "Y Move:", ballMoveY);
  ballMoveX += 1; // Progression of ballMoveX=ballMoveX+1 to ballMoveX=+1 to ...
  ballMoveY -= 1; //What is the difference in these lines
  println ("X Move:", ballMoveX);
  println ("Y Move :", ballMoveY);

  // Moved Position
  ellipse (ballMoveX, ballMoveY, ballSize, ballSize);

  //Note: Image retains shadows and ball doesn't bounce
}

```

---

# BounceBall.pde: Making the Ball Bounce all playing area

Note: order of additional lines of code are important
- Remember: execution occurs one line at a time, in order

```JAVA
  //Global Variables
  int speedX = 1; // Follows rules of physics
  int speedY = 1; // Follows rules of physics
```

```JAVA
void setup() {
}
```

```JAVA
void draw() {

  //Value Testing and Arithmetic to Position Ball
  if (  ballMoveX <= 0+ballSize/2 || ballMoveX >= width-ballSize/2 ) {
    speedX = speedX * -1;
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }

  // Move the Ball, using Value Testing and Arithmetic
  // Drawing the Ball on Canvas
}

```

---

# Paddles.pde: Creating and Moving the Paddles, including starting code or Dark Mode

Note: order of additional lines of code are important
- Remember: execution occurs one line at a time, in order

CAUTION: PaddlesBounceTest.pde simplifies Paddle-Bounce Problem to solve issue of X-Axis Coordinates
<a href="">see folder above</a>

```JAVA
  //Global Variables
  int lightMode1; // Populated with a Button
  int lightMode2; //Populated with a Button
  float paddleStartY;
  float paddleMoveYleft;
  float paddleMoveYright;
  float paddleWidth;
  float paddleHeight;
  float paddleMoveXleft;
  float paddleMoveXright;
  Boolean paddleRightUp = false;
  Boolean paddleRightDown = false;
  Boolean paddleLeftUp = false;
  Boolean paddleLeftDown = false;
```

```JAVA
void setup() {
  lightMode1 = 255; // Black, Should be a Button to toggle between 0 & 255
  lightMode2 = 0; // White, Should be a button
  paddleStartY = (height/2)-(height*1/16);
  paddleMoveYleft = paddleStartY;
  paddleMoveYright = paddleStartY;
  paddleWidth = width*1/100;
  paddleHeight = height*1/8;
  paddleMoveXleft = 0+width*1/30;
  paddleMoveXright = 0+width*29/30;
}
```

```JAVA
void draw() {

  //Value Testing and Arithmetic to Position Ball
  if (  ballMoveX <= 0+ballSize/2 || ballMoveX >= width-ballSize/2 ) {
    speedX = speedX * -1;
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }

  // Move the Ball, using Value Testing and Arithmetic
  // Drawing the Ball on Canvas
}

```

---
- PaddlesBounceTest.pde, <a href="">see folder above</a>
- PaddlesBounce.pde, see folder or <a href="">see below for added code</a>
- PaddlesBounceNet.pde, see folder or <a href="">see below for added code</a>
- PaddlesBounceNetGoalConsole.pde, see folder or <a href="">see below for added code</a>
---

# To Include

  - Use Console to get variables to have numbers (verify the math)

- Creating a ball & Moving the Ball (local and global variables, declaring and populating variables, casting based on function expectations)
- ?

Bounce Code
Explain the math and if statement for one bounce,
Question: create the next 3 bounces

if (  ballMoveX <= 0+ballSize/2 || ballMoveX >= width-ballSize/2 ) {
    speedX = speedX * -1;
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }

Trivial Knowledge: program creates a cross-stich pattern

- Global vs. local variables: declare, populate, multiple operations
- Linear execution (when does the computer know the displayWidth & displayHeight
- Casting, "how to know the type of variables needed" (answer, know the function you need for the variable

Laying, get rid of the shadow

---

Code to add
- create sections and code to add when coding specific ideas
- might help with ignoring some code and doing other things
- another idea is to create tabs to section blocks of in a linear way

```
