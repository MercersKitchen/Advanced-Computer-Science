# Paired Programming Introduction to OPP
Rebuilding Bouncing Balls, Gravity, and Other Concepts

**UNDER CONSTRUCTION**

**Paired Programming Activity**
- Focuses on Vocabulary and questions to guide program development
- Goal: two ellipses functioning like Pong Balls in a box

Progression: Create a Program with ...
1. An Object "Ball" with the following Variables
   ```java
   float x;
   float y;
   float diameter;
   color colour;
   ```
   - See ObjectIs.pde
   - Illustrates minimum code for an Object & Java Compiler
   - See "Object Is", <a href="">Click Here</a>

2. A Constructor with the following functions to draw an ellipse
   ```java
   fill(); //gray scale, RGB, or Hexidecimal
   ellipse(); //x-value, y-value, diameter-X-Value, diameter-X-Value
   ```
   - See ConstructorIs
   - Considerations
     - Create Class-type Variable, as a Global Variable (accessible to everywhere)
     - Create a new File (TAB) for the Object
     - Assign values to the variables within the program
       - NOTE: we have passed parameters for the constructor or we have assigned variables (hard-coded or through mouseClick)
       - Simplest is hard-coding
   - See "Constructor Is", <a href="">Click Here</a>

3. TB Finished

Future Order
- ArithemticIs
- ClassArithmetic
- Rewrite below to separate constructors with parameters
- ClassObjects: constructors (do we need parameters here?)
- ClassParameters: parameters and constructors
- ClassObjects_Alternate

Note:
- See Summary.PDE
- Note: able to add code from "Pong Review"
- Add a screenSizeChecker()
  - create a screen size checker that takes the canvas size and compares it to the fullScreen()
  - If the canvas does not fit in the fullScreen, provide feedback to the console so programmer knows
  - Test minimum sizes and create catches that tell user to run on program with larger screen geometries
  - Test if geometry is in landscape.
    - If in portrait, print to screen to turn device or use different canvas size settings in landscape mode, then retest device settings with a button
    - If in landscape, confirm if game is playable with button (only pressed once at the beginning of each time program run)

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
