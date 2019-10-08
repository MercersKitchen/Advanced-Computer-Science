# Drawing many Pong Balls or a "Star Problem Set"
Order of Programs and Pathways

**UNDER CONSTRUCTION**

Purpose:
- Write and Learn coding techniques that increase security concepts and draw multiple Pong Balls to the Canvas
- This should affect the Object Writing of your Pong Game, and the number of features it includes

Table of Contents
1. Building a Basic Multi-ball Program, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#building-a-basic-multi-ball-program">Click Here for More Details</a>, or see the program here <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/BuildingBasicStar">Click Here for Programs</a>
2. Adding an Array to change how arguments are passed to the constructor, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#adding-an-array">Click Here for More Details</a>, or see the program here <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/Star_Single">Click Here for Programs</a>
3. Slightly changing the Array to draw any number of Pong Balls or Stars, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#increasing-the-index-of-the-array">Click Here for More Details</a>
4. Adding Getter Functions for added variables, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#adding-getter-functions-for-added-variables">Click Here for More Details</a>
5. Example Fixes and Starter Code of Advanced Problems, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#example-fixes-for-above-problems">Click Here for More Details</a>

## Building a Basic Multi-ball Program
Problem Situation: build a program that draws one pong ball in the center of a 500 by 500 canvas
- include a method for Checking the Canvas Size compared to full screen (communication with display geometry)
- include a method for Starting and Stopping the Canvas (Start-Stop Buttons)
- include a Pure-Java Class that
  - contains no numbers, only variables, passed from creating an instance
  - all variables are in the class are private with Getter Functions, when need to be shared
- include a Processing Main Program with all variables and functions as private or public

Solution: this is very similar to the full solution of the "Moving Ball"

## Adding an Array for one Pong Ball, or one Star
Note: this program is using a variable, "how many stars to draw" coming from the Object
- but it could come from another program or a sensor, etc.

Problem Situation: Object is created before size() is communicated with display
- include a way to create an instance before size, then create the ball on the screen

Advanced Problem:
- Some Pong Balls or Stars cannot be seen on the canvas, why? Design a Fix
- Some Pong Balls are half off the screen, why? Design a fix
- How would you start to debug these problems?

Using Static Variables
- static can be referenced
- does not need garbage collection
- variable does not belong to any single instance
- "no single star determines the max radius of all stars, or the total number of star instances there are"
- only use static variables when you need them

Problem to test: what if X & Y variables are made static? Is there any observable change to the program?

## Increasing the Index of the Array
Note: this example repeats lessons of inputting and outputting array values with a FOR Loop
Caution: systems resources are affected when large number of Pong Balls or Stars are drawn at 60 times per second

Problem Situation: write a few extra lines of code to draw as many Pong Balls as you want

Advanced Problem:
- Some Pong Balls or Stars are overlapping? Design a Fix

Problem to test: what if X & Y variables are made static? Is there any observable change to the program?
- What is happening? <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#static-modifier-added-to-x--y-variables-of-pong-balls-or-stars-array-of-objects">Click Here for an Answer</a>
- See <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/Star_Many_Static">Star_Many_Static</a> for the static modifier added to the Class's X & Y Variable

## Adding Getter Functions for added variables
Note: without modifiers, program security is a concern since viruses can rewrite values and cause issues

Problem Situation: change starCount and maxRadius to ```private``` and write Getter Functions for these

Problem to test:
- Change getRadius() to a static function
- What is happening here? What is the error
- Your answer should include,
  - Static
  - Memory location (on the hardrive)
  - Association with object instances
- Example Exit Slip Submission (or email your answer to your teacher)

Note: <a href="https://docs.google.com/document/d/1Wi2Ibn6fGYjEh5C3zY2YkI3WiY1z3b9CRNunNCZAr80/edit?usp=sharing">Click Here for Teacher's Solution, if you are not a student :)</a>

## The FINAL Touches on this Program
Problem Situation: change this program to include the final modifier
- Research what final modifiers are
- Add them to this Program (see <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/Star_Final">Click Here for Star_Final</a>)
  - CAUTION: only one variable is changed, happy looking :)
- Add them to all future programs

Research Questions
1. How are static and final modifiers similar and different?
2. When would a final modifier be used instead of a static modifier?
3. What declaration is similar to the final modifier?

<a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#comparing-static-modifiers-and-final-modifiers">Click here for some answers from Mr. Mercer</a>

## Example Fixes for Above Problems

Will fix when Pong Ball is draw half off the screen, but will draw all ellipses slightly off
- will need to test when an ellipse is off the screen, and then redraw it
```java
ellipse ( stars[1-Star.starCount].getX()+stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getY()-stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getRadius());
```

## Answers for Advanced Solutions

### Static Modifier added to X & Y Variables of Pong Balls or Stars Array of Objects
Static Variables are stored in one memory location and never changed, accessed by either the public or private modifier affecting garbage collection

So, this Object Array is built on the same coordinate, repeated many times, making it similar to a single object instance

### Comparing Static Modifiers and Final Modifiers

How are static and final modifiers similar and different?
- Static modifiers create one memory location for values and are not associated with an object instance
- Final modifiers are constant and cannot be changed
- In languages like Java, unlike dynamic languages like JavaScript, final modifiers allow any type of variable to be constant and never be changed

When would a final modifier be used instead of a static modifier?
- When a variable needed to be "constant" but associate with an object instance (or many)

Which declaration is similar to Java's ```final``` modifier in JavaScript?
- In JavaScript, constant (const) is similar

# Ideas


---
