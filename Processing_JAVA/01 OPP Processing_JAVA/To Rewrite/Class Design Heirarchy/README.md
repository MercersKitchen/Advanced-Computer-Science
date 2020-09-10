# Class Design and Hierarchy
Abstract Classes and Extending Classes

**UNDER CONSTRUCTION**


---

# Ideas to Include
Progression
1. Building an Abstract Class
- Main Program: name, void setup(), draw()
- Abstract Class & Extending Rectangle Class: flip between these for declaration, assignment through constructor
- Add to setup() and draw()
  - size() for geometry
  - background for draw
- Create ArrayList for Abstract Class Shape, shapes
  - add and get(0), notice class functions mimic reading and writing to arrays
  - drawing is like an array
- Create abstract and "real" procedures for classes, so object knows to draw itself
  - Must access both abstract and object procedures since both are loaded into the ArrayList
- Declare the arguments for the rectangle (play with color, hexadecimal and randomizing RGB)
- Try executing to the CANVAS: notice something simple is using class design and heirarchy
- Reuse the code to draw another rect(), using the random RGB colours
- Assignment: create a circle class and load it to the shapes-ArrayList
  - Notice: Abstract_OneExtendedClass.pde will not work since Abstract Procedures are not referenced ( abstract void draw() )

2. Abstract_TwoExtendedClass.pde will illustrate ```class Circle extends Shape {}```
   - Create a Circle Class:
   - Add unique procedure, step()
   - Ensure Object created is instantiated as a Global Object (to use unique procedure)
     - Caution: careful of passing parameters based on Geometry
   - Assignment: add access modifiers (public, private, static, final, getters and setters)

3. Review all access modifiers:
   - public
   - private
   - static (how is static different)
   - final
   - abstract?

   - Change Abstract_TwoExtendedClass.pde access modifiers to see if the program still work, discuss reasons why it might not work

4. Create unique Classes
   - final class (cannot be extended)
     - see FinalEtAll.pde and describe errors
   - anonymous class (one time creation, more of a shortcut)
     - see Abstract_AnonymousEtAll.pde and recognize that the one time class can change (like a scoreboard in Pong) but is only a one-time-creation

Rewrite Pong to include access modifiers and class hierarchy

---
