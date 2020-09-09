# Combining Moving Ball and Many Ball Projects into one illustration of object programming
Emphasizing Object Understanding by Combining two programs

**UNDER CONSTRUCTION**

Program Progression for MovingMany.pde
1. Unsecure: working Pure Java Classes and .pde procedures
2. Making Secure: add access modifiers to all variables and read debugger returns
   - add Getters and Setters: private, public, static, final
   - NOTE: Star.java / int x is made private; returns Star.x is not visible; add a Getter Function; Change all variables until program works again
3. Secure

Case Study Review
1. Moving Ball Image Summary
2. Many Ball Image Summary
3. Combination Suggestion
   - First Image: Many Ball
   - Second Image: Mouse Click to Create Target
   - Third Image: Each Ball moves to the Target
   - Fourth Image: when each ball arrives at the target, stop
   - Fifth Image: Mouse Click to create image one

Note about End-user Experience of included program: first set of Pong Balls or Stars printed do not have any target associated with them, since a Boolean locks out when the Listener will populate the targetX and targetY variables
- CAUTION: ManyMoving_Secure.pde has this fix; uses a variable to randomly assign values to targetX & targetY
- NOTE: this random is a true random loaded for each instance Star
- This is very different than the Target MouseClick
- This random always for the setup() createStars() to function smoothly with the mouseClick

OOP Concept Introduced
- Setters are the same as Getters

Notes about this Project
- Pure Java Classes and Processing-Java Procedures still mixed
  - OOP Pong, will introduce how to combine these into a Static Class or Static Object

---

# Ideas to Include
Pseudocode this

There is a difference between referencing an Object and a Class
- especially when in an array
- Look up the for-each processing FOR Loop for arrays

Add all Access Modifiers, Getters and Setters

Changes to ManyMoving_Secure.pde
1. ellipses have off the screen
2. ellipses overlapping: when an ellipse is created, check to see that it is not the same any before it
---
