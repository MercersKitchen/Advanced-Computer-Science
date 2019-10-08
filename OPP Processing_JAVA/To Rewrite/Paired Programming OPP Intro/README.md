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
   - Illustrates minimum code for an Object & Java Compiler
   - See "Object Is", <a href="">Click Here</a>

2. A Constructor with the following functions to draw an ellipse
   ```java
   fill(); //gray scale, RGB, or Hexidecimal
   ellipse(); //x-value, y-value, diameter-X-Value, diameter-X-Value
   ```
   - Considerations
     - Create Class-type Variable, as a Global Variable (accessible to everywhere)
     - Create a new File (TAB) for the Object
     - Assign values to the variables within the program
       - NOTE: we have passed parameters for the constructor or we have assigned variables (hard-coded or through mouseClick)
       - Simplest is hard-coding
   - See "Constructor Is", <a href="">Click Here</a>
   
3.
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
