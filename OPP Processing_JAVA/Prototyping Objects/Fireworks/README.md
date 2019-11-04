# Fireworks Project
Another way of creating ellipses but using the ellipses, not as Pong Balls, but as a celebration or emphasis

Purpose of Repo: Create Firework in a Jar
- Use Class Hierarchy to rewrite Program to create a hierarchy
- What can students do with Class Hierarchy before lessons

Review ...
- Firework Images, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Prototyping%20Objects/Fireworks/Introduction%20Images">Click Here</a>
- Bouncing Ball, review and introduction

**Purpose**: Create the Object or Objects in the class first, then modify and add items (arrays and arrayLists)

Updated Progression
- BeginningFireworks.pde: more exposure to OOP Programming and developing code

See Fireworks-Delete / ExplodingFireworks

**UNDER CONSTRUCTION**

See ClassDesign, contains the Firework Class
- Create the Object or Objects in the class first
- Comment the following sections: variables, constructor, procedures or functions, getters and setters
- Create a basic processing-java file
- Declare Variables
- Assign Variables in the "Constructor", modify with ```this.```
  - Make choices about arguments, parameters, randomly chosen values, and constants (final variables)
- Declare an instance of Class Firework, then create the array to hold many
- Assign the class with width and height arguments (adjust to only passing width and height)
- Create a draw() procedure for drawing each object, and tracking it with arithmetic

See Firework_Single.pde for a summary of above, working with visual data and a Processing-Java Class

See Firework_Array.pde for a summary of adding an array for the
- Adding an array
- Filling the X & Y Variables with (0,0), then with mouseX&Y
- Locking out the first (0,0) with the mouseClick Activation and Spacebar (See MovingMany_Combination)

Additional details to code for ...

- Create collision procedures

- Add access modifiers: (public, private, static, final) to Firework

- Bring over following procedures
  - StartStop: remember need the code to deal with first mouse click
  - ScreenSizeChecker
  -

When Combining Procedural Pong into Object Pong
- Basic Classes: classes: ball, firework, paddle-left, paddle-right, scoreboard
- Write with separate objects: prototype each one
- Combine into make objects talk with each other
- create a splash screen to make the various behaviors of the game user-defined
- Types of Classes: basic, abstract (intro) & inheritance, Extended & Inheritance, Interfaces (One & Many), abstract classes (specifics: anonymous & final)

---

## Partial Rewriting of Processing Order

Summary of files and what needs to be rewritten
Files Included, in order & notes follow
- Bouncing Ball, review and introduction
- "Arrays" Holding Objects, Particle Explosion Program
  - Gravity
  - Gravity Copy
  - GravityCopyRandom
  - GravityCopyRandomLoop_600by600
  - GravityCopyRandomLoop_fullScreen
- Abstract Class, Inheritance
- Extended Classes, Inheritance
- Extended Classes using Array Lists as Memory
- Interfaces_One
- Interfaces_Many
- Review: Abstract Class, Inheritance
- AbstractClass_Anonymous
- AbstractClass_Anonymous_Final

Creating an Explosion when a goal is scored
- Send the X&Y when the goal is scored
- Particle Class: Bouncing Ball, Particle Explosion
- These particles will not have a bounce

To continue here, review all classes of Pong
- Start to combine code
- Add pin-ball type features
- Add Security

Abstract Class
- Note: do not use the array list here, only the abstract class
- When finished designing classes, some code will be the same
- Write an abstract class with inheritance to develop real classes

Use Extended Classes and Inheritance to Draw Paddles and include all bounces
- Include small squares, filled in (colour changes when touched)
- Ball will bounce off the sides like it does the paddles

Use Extended Classes using Array Lists as Memory as a exercise in combining related classes
- Note: ExtendedClasses_ArrayList_Composition.pde is the flat program for this

Interfaces_One

Interfaces_Many

AbstractClass_Anonymous
- Review Abstract Class but with an Array List
- This is like writing a title or a single object

AbstractClass_Anonymous_Final
- New sort of access modifier: final
- classes cannot be extended

# Ideas to Include
Many of these notes are already found on GitHub

An introduction to celebration


---

A Comment about these examples that need to be rewritten

Composition over Inheritance

The above example is admittedly contrived, and it's actually a pretty bad design. If this were real life, the BlueSquare and RedSquare classes could probably be rolled into one class called ColoredRectangle, which would contain a color value.

In fact, it would probably be best to get rid of the ColoredSquare class altogether and instead modify the Rectangle class to use a color value. This isn't always feasible, but the general rule is that you should use inheritance when you need it, and not when you don't. If you can accomplish your goal using composition instead of inheritance, you probably should.

---
