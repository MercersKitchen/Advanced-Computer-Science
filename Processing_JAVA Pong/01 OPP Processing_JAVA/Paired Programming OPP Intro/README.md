# Paired Programming Introduction to OPP
Rebuilding Bouncing Balls, Gravity, and Other Concepts

**UNDER CONSTRUCTION**

**Paired Programming Activity**
- Focuses on Vocabulary and questions to guide program development
- Goal: two ellipses functioning like Pong Balls in a box

Progression: Create a Program with ...
- Routines for typing
  - Driver Program
  - Class additions (visual data and mathematical data)
1. An Object "Ball" with style (see code)
   - See ObjectIs.pde
   - Answers what is an object in ProcessingJava: list of variables

2. A Constructor with the following functions to draw an ellipse
   - See ConstructorIs
   - Answers what a constructor is: assigning variables
   - Considerations
     - Create Class-type Variable, as a Global Variable (accessible to everywhere)
     - Create a new File (TAB) for the Object
     - Assign values to the variables within the program
       - NOTE: we have passed parameters for the constructor or we have assigned variables (hard-coded or through mouseClick)
       - Simplest is hard-coding

3. Illustrating Arithmetic in a Driver Program
   - See ArithmeticIs
   - Note: object does not know about itself yet

4. Illustrating object knowing about itself
   - See ArithemticInObject
   - change the sandbox to move the arithmetic to the class and call it in the driver
   - the object knows about itself

   - then See ArithemticInClassObject

5. Illustrating more than one object, computer tracking specific variables of this
   - Notice starting position is passes as parameter
   - See ArithemticInClassObjectMultiple

6. Illustrate using monitor geometry in passing parameters

Note about object design (Class Design)
- Variables
- Constructor and Passing Parameters
- Behaviors or procedures, parameters can be passed here too
  - Remember, in visual data any arithmetic is done first, then drawing

Note about Driver Design
- Basic Driver for visual data (program pathway and file name, setup(), draw(), keyPressed(), mousePressed(), etc.)
- Declaring Objects and Global Variables
- Canvas Geometry, Landscape & Portrait Mode, will Canvas fit on display (displayWidth & displayHeight)
- Constructor and Parameters

Example Code
```JAVA
void screenSizeChecker () {

  final String fullSize = "Width=" + displayWidth + "; Height=" + displayHeight; //Another example of String Concatenation, used locally here

  if (width > displayWidth) {
    println ("ERROR: Change Pong Table size-width, it is too big.");
    exit(); //Will continue to the end of the program, and then exit (See Processing Reference)
  }
  if (height > displayHeight) {
    println ("ERROR: Change Pong Table size-height, it is too big");
    exit();
  }

  //Debug: square vs. rectangle code
  if (width == height) {
    println ("Full Screen Debugging: ", fullSize); //Used to compare against manually entered canvas size
    println ("ERROR: The Canvas is a Square causing problems with the ball bouncing. Width & Height are " + width + ", " + height); //Used to compare against manually entered canvas size
    println ("Please adjust on line, function 'size'.");
    println ("Do not size larger than the monitor: ", fullSize);
    exit(); //Used to exit the canvas, incorrectly puts the user reponsible for the coding
  }
}
```
---

# Summary: explanation of paired programming
- Using the Summary.pde

On 11x17,
- Rewrite functional line of driver program, describing what each line does, word by word
- Use the following questions
  - Describe what functions do, code functions access (including class-level functions)
  - Describe where data is coming from, where it is going, & how it is remaining the same or changing in the single line of code
  - If arithmetic is done in draw(), illustrate what is happening with real numbers during three iterations (write down what these numbers are)

Ideas
- What does "Ball" do?
- What is the significance of "myBall"?
- When a line repeats except for the object name, what is happening in the second line that is different?
- How is the keyword "new" significant?
- What is the name of the period in some of the class.variable names?

Below are explanations per line of code from Summary.pde
```JAVA
Ball myBall = new Ball(50, 100, #FA03FF); //Hexidecimal, purple
```
- `Ball`: function to create object called myBall
- `myBall`: Object name that contain all variables listed in class
- `new`: object variables have no values, "new"
- `Ball()`: pointing to constructor, accessing object variables
- `Parameters`: populate variables inside constructor

```JAVA
Ball yourBall = new Ball(60, 150, #FF3503); //Hexidecimal, orange
```
- Describe what is new with this line ...
- An `new` object is made with different parameters populating the constructor's variables

```JAVA
void setup() {}
```
- Part of the JDK ID of main program ( folder name and void draw() )
- Code Block that sets up the program, only run once

```Java
size(2000, 1500);
```
- creates the Canvas window size to view visual data, focus of how Processing-Java solves problems

```JAVA
screenSizeTester();
```
- Runs a void procedure to compare the geometry of the display with the geometry of the Canvas
- Returns feedback when width or height does not fit in display, based on comparisons
- Feedback goes to console and then the program exists, thus information only available to developer

```JAVA
void draw() {}
```
- Part of the JDK ID of main program ( folder name and void setup() )
- Code Block that repeats 60 times per second, creates illusion of animation, etc. for visual data

```JAVA
background(0);
```
- Function changes canvas background to either grayscale or color, `0` parameter is grayscale black (small memory compared to color black)

```JAVA
myBall.step();
yourBall.step();
```
- Using delimiter, main program access `myBall` object, then executes the step() procedure
- Step() does arithmetic on varaibles for parameterrs of drawing ellipse
- With `yourBall`, step() code repeated but different object's varaibles are changed

```Java
drawBall(myBall.colour, myBall.x, myBall.y, myBall.diameter);
drawBall(yourBall.colour, yourBall.x, yourBall.y, yourBall.diameter);
```
- `drawBall`: procedure with code that needs repeating for Canvas to draw ellipse
- procedure accesses specific object's variables for use in repeating lines of code, whenever an ellipse needs to be drawn to the Canvas
- Two object's sets of variables accessed, `myBall` & `yourBall`

---

# Ideas to Include

Paired Programming Notes

What is the Arithemtic to move the ball, every frame (every "step")?
- See "ArithmeticIs", <a href="">Click Here</a>
- Add speed variables for the X&Y Axis (width and height)
- Change the next "step" of where the ball will be
- Add the collisions to the ball with the Canvas Boundaries (Pong Table Edges)

What is Class Arithmetic and how is it used?
- See "ClassArithemtic", <a href="">Click Here</a>
- Move the Arithmetic into the Class ... remember to remove the delimiter
- To Ensure these lines of code are updated with each frame of ```void draw() {}```, they need to be in code block
  - ```void step () {}```
- Remember to call the lines of code you want to update in each frame of void draw()

What are Class Parameters and how are these used?
- See "ClassParameters", <a href="">Click Here</a>
- Create a Constructor with unique, ```this.```, and hard-coded values
  - Unique values for x & y
  - Hard-code diameter, color, xSpeed, & ySpeed (Shared with all Pong Balls)
- Create the parameters of the Constructor (what will be passed)
  - Note: a value can be hard-coded and passed
- NOTICE: the first bounce
  - ```this.``` means the individual objects are able to track their own positions, and the developer knows this by abstraction

What does it mean to create new Objects and each object knows about it's constructor?
- See "ClassObjects", <a href="">Click Here</a>
- Also see "ClassObjects_Alternate"
- Note: "ClassObjects_Alternate" introduces how Arrays can hold all values after void setup()

CONTINUE HERE

Create all values of object based on Ratios of Display Geometry
- See https://github.com/QEHS-ProcessingJava/Ideas-for-OPP

Creating a second ball
- With and Without an Array

Going fullScreen, simple change to ```fullScreen()```
- need to check for Squareness?

<a href="">Click Here</a>

---

## Additions

Include startStop

Include screenSizeChecker

Include Access Modifiers

Address:
- ball half off the screen

more than one ball, address initial over-lap

---
