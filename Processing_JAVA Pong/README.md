# Review Processing-Java
From Structured to Procedural

Completed Project Exemplar - <a href="https://github.com/QEHS-ProcessingJava/Pong-Procedural">
Pong</a>
, see Mr. Mercer for Permission

Concepts and Vocabulary Summary
- Pong Case Study: GUI & End-user, experienced features, expectations
  - Chart for GUI Ratios and factions of objects in GUI (ball, paddle x 2, scoreboard x 2)
  - Grouping Features within object
  - Populating Variables based on display geometry and coordinate plane (X | Y | width | height)
- Variables: Naming, Camel Casing, Declaration, Population (Defining)
- Variables related to functions and parameters, with Casting, and using the debugging window
  - void, returning
- Using console to view arithmetic and where objects are
- Using tools like color selector, etc.

Progression for Case Study and Procedural Review
- Pong Case Study: GUI & End-user, experienced features, expectations, <a href="">see below</a>
  - See Computer Science Planning, Projects
- Procedural Features
  - Reminder: Canvas must be "clicked with the mouse first" for OS, then the Game Entered
  - Accessing display geometry
  - Using coordinate plane as ratios or percent of geometry
  - Questioning geometry as landscape vs. portrait with feedback to console or splash screen
  - Creating a Splash Screen with instructions
  - Start Button: playing pong beginning
  - Quit Button with hover over feature (see https://github.com/QEHS-ProcessingJava/Pong-Procedural/tree/master/Pong)
  - Text Calculator as a procedural return (introducing Pure Java OPP Mathematical data returns to driver, and data interactions between objects)
  - Sound files
  - Image files (Currently no images loaded but illustrated in a TAB)
- Advanced Procedural Features
  - Dark-Light Mode Switch
  - Reset Game Button
  - Saving game state by reading and writing .txt files
  - Creating AI for Single Player Play

Progression for Object Orientated Progressions
- UNDER CONSTRUCTION (include AP CSA & CSP)
- See OOP Parts & Summary
- See Prototyping Objects
- Incorporate them back into Pong

Possible Ideas to incorporate
- Random Ball Start
- Faster Ball, Guards
- Shrinking Paddle
- Easter Egg of catching ball
- Rally Counter influencing score
- Other features of older pong games

Advanced Features Idea List
- "Evening out play when score is not close"
  - Making ball faster
  - Slowing paddle speed

---

# Pong Case Study
- Create student activity for this case study
- include percents or ratio guesses (remember, compiler verifies guess easily)

Mandatory GUI Objects
- Ball
- Left and Right Paddles
- Score Board
- Space for Buttons

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

# To Include

Add all Advanced Placement Vocabulary in summary and Explanations in Details

Use Console to get variables to have numbers (verify the math)

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

---

Grading to consider
- Random Ball Start from 4 courners
- Faster Ball / Guards
- Shrinking Paddles
- Easter Egg of Catching ball in paddle
- Rally Counter and score based on that

---

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
- PaddlesBounceNetGoalConsole.pde, Record a goal to the console, see folder or <a href="">see below for added code</a>
- Review Procedural Design, writing a driver program with supporting files
- Protypting Text to Procedural Text Autoformatting
  - Review all functions needed to print text to canvas in processing (language is for visual data, text data has difficulties; "tool must match problem to be solved")
  See Text_Flat.pde
  - Note: changing the number based on educated guesses is something a computer should be able to do
  - Unique Flowchart for putting text in a rect()
- Including Text in Pong Procedural Game
  - Modular Programming - makes changes easier, based on GUI Objects, groups of code, or repeated code

---

# To Delete Once Programs read like Text

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
  // Drawing the Canvas Objects
}

```

---

# Paddles.pde: Creating and Moving the Paddles, including starting code or Dark Mode

Note: order of additional lines of code are important
- Remember: execution occurs one line at a time, in order

CAUTION: PaddlesBounceTest.pde simplifies Paddle-Bounce Problem to solve issue of X-Axis Coordinates
<a href="">see folder above</a>
- PaddlesBounceTest.pde, <a href="">see folder above</a>

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
  // Arithmetic  First, then visual data
  //Drawing the Background for optical illusion simulating animation of game
  noStroke();
  fill(lightMode2);
  rect(0, 0, width, height); // Background
  fill(0); //Reset Values to default, easing parameter flow
  stroke(1); //Reset Values to default, easing parameter flow

  //Value Testing and Arithmetic to Position Ball

  // Move the Ball, using Value Testing and Arithmetic

  //Order is important here
  //Right Paddle
  if (paddleRightUp == true ) {
    paddleMoveYright -= 1;
  }
  if (paddleRightDown == true) {
    paddleMoveYright += 1;
  }
  if (paddleMoveYright <= 0 ) {
    paddleMoveYright = 0;
  }
  if (paddleMoveYright >= height-paddleHeight ) {
    paddleMoveYright = height-paddleHeight;
  }
  //Left Paddle
  if (paddleLeftUp == true ) {
    paddleMoveYleft -= 1;
  }
  if (paddleLeftDown == true) {
    paddleMoveYleft += 1;
  }
  if (paddleMoveYleft <= 0 ) {
    paddleMoveYleft = 0;
  }
  if (paddleMoveYleft >= height-paddleHeight ) {
    paddleMoveYleft = height-paddleHeight;
  }

  // Drawing the Canvas Objects
  noStroke();
  fill(lightMode1);
  rect(paddleMoveXleft, paddleMoveYleft, paddleWidth, paddleHeight); // Paddle #1
  rect(paddleMoveXright, paddleMoveYright, paddleWidth, paddleHeight); // Paddle #2
  fill(0); //Reset Values to default, easing parameter flow
  stroke(1); //Reset Values to default, easing parameter flow
}

```

```JAVA
void keyPressed () {
  if (key == CODED && keyCode == UP) {
    paddleRightUp = true; //Codes continuous action
    paddleRightDown = false; //Only one action at a time
  }
  if (key == CODED && keyCode == DOWN) {
    paddleRightDown = true;
    paddleRightUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    paddleLeftUp = true;
    paddleLeftDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    paddleLeftDown = true;
    paddleLeftUp = false;
  }
}

```

---

# PaddlesBounce.pde: Adding Code to Bounce off the Paddles

Note: order of additional lines of code are important
- Remember: execution occurs one line at a time, in order

```JAVA
  //Global Variables
```

```JAVA
void setup() {
}
```

```JAVA
void draw() {
  // Arithmetic  First, then visual data
  // Drawing the Background for optical illusion simulating animation of game
  // Value Testing and Arithmetic to Position Ball
  // Move the Ball, using Value Testing and Arithmetic
  // Order is important here
  // Right Paddle
  // Left Paddle

  // Bounce off Paddles, order of arithmetic important
  if (ballMoveX <= paddleMoveXleft+paddleWidth+ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYleft && ballMoveY <= paddleMoveYleft+paddleHeight) {
      speedX = speedX * -1;
    }
  }
  if (ballMoveX >= paddleMoveXright-ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYright && ballMoveY <= paddleMoveYright+paddleHeight) {
      speedX = speedX * -1;
    }
  }

  // Drawing the Canvas Objects
}

```

```JAVA
void keyPressed () {
}
```

---

# PaddlesBounceNet.pde: Defining the NET with noLoop()

Note: order of additional lines of code are important
- Remember: execution occurs one line at a time, in order

```JAVA
  //Global Variables
```

```JAVA
void setup() {
}
```

```JAVA
void draw() {
  // Arithmetic  First, then visual data
  // Drawing the Background for optical illusion simulating animation of game

  // Value Testing and Arithmetic to Position Ball
  if ( ballMoveX <= paddleMoveXleft || ballMoveX >= paddleMoveXright+paddleWidth ) {
    noLoop(); // End the Game
  }

  // Bounce off Paddles, order of arithmetic important
  // Move the Ball, using Value Testing and Arithmetic
  // Order is important here
  // Right Paddle
  // Left Paddle
  // Drawing the Canvas Objects
}
```

```JAVA
void keyPressed () {
}
```

---

---

- PaddlesBounceNetGoalConsole.pde, see folder or <a href="">see below for added code</a>
- - PaddlesBounceNetGoalConsole.pde, Record a goal to the console, see folder or <a href="">see below for added code</a>

---
