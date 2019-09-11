# Review Processing-Java
From Structured to Procedural

Concepts and Vocabulary Summary
- Case Study: GUI & End-user, experienced features, expectations
- Chart for GUI Ratios and factions of objects in GUI (ball, paddle x 2, scoreboard x 2)
  - Object || X | Y | width | height
- Basic boilerplate for Processing (Global Variables, SETUP(), and DRAW())- Math: to change adding to subtracting, multiply by -1
  - Review code for fullScreen()
- Using console to view arithmetic and where objects are


Progression
- Boilerplate
- Create the ball
- Bounce off walls
  - Remove ball shadow 
- Create Paddles and move them
- Bounce off paddles
- Create Nets and Record Score

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
