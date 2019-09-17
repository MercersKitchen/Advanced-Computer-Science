# Adding Text Exemplars
Flat, Dynamic, and Procedural

*Note*: "Delete this Text_Flat" is actually in CS10
- this is used to verify writing of the dynamic and procedural function programs

**UNDER CONSTRUCTION**

Final Assignment: use the procedural program
- Draw text in 3 different places on the Canvas

Table of Contents
- General Explanations, link to CS10 and Flat Text, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#general-explanations">Click Here</a>
- Function Choices, link to CS10 and Flat Text, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#function-choices">Click Here</a>
- Writing the Loop for Autosizing text, <a href="">Click Here</a>

Different Program Types
1. Basic code for text on screen, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#basic-code-for-text-on-screen">Click Here</a>
2. Flat Program, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText/Text_Flat">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#adding-text-flat-program">Click Here</a>
3. Autosizing In Algorithm, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-flat">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-flat">Click Here</a>
4. Procedural Program, Font Size Calculator, <a href="https://github.com/MercersKitchen/CS20/tree/master/Computer%20Apps/Processing-Java%20Prototyping/Text/Text_Function">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-dynamic-see-actual-program-for-procedural">Click Here</a>

**CAUTION**
- If text is too small or too big, it will not print
- This is fixed in Typing Examples from SP2

## General Steps for Autosizing Text
**Able to see Autosize when change size() to fullScreen(), or changing size()**
**Caution: must stay Landscape or Portrait, not go between without a very different layout**

While writing this section see <a href="https://github.com/MercersKitchen/CS20/tree/master/Computer%20Apps/Processing-Java%20Prototyping/Text/Needs%20Rewriting">this ReadMe.md</a>, open in a new TAB

General Steps
- Start with Flat Text
- Build Basic Dynamic Program (name of folder-file & void setup(), draw())
- copy functions that are needed into separate function
  - void or return
- chose what functions need: become parameters
- create arguments for that particular item

Testing your function: create more instances of text that need to be displayed

## General Algorithm for Autosizing Text
**This is a guide and needs to be drawn out before coded**

1. Prep for Text and Font
   - String for Text
   - PFont for font: remember to compare system fonts with compiler fonts
   - Comment out all prep work
2. Draw a rect(): coordinates, width, height
   - rect() will be copied to draw the text()
   - width will be maximum length, using textWidth() to compare
   - height will be starting textSize()
3. Start with textSize() at size of rect() height
4. Measure textWidth() to rect() height
5. If larger, decrease size until text-width fits into rectangle
   - multiple the textSize variable by a slightly less than 100% number (note, this number will decrease until the calculation works)
   - if text still does not draw, textSize() is larger than rectangle, see Main Issues below
6. If smaller, does the text print into the rectangle?
   - if yes ... do you like it (create a catch for this particular font based on percentage if you do not)
   - if no ... create a catch for that particular font and decrease the auto calculated value by a certain percentage

**Note**
- FOR Loop will execute contained commands once, then check the measure
- WHILE Loop will execute contained commands the first time
- If either are false, then will not enter Loop

## Main Bug - Text **Must Be** a Specific size first
"Everything with more characters will print"

Purpose: learn example of media queries, different geometries, and font examples
- learn about number of characters in a string
- learn to test for font size by developing some mathematics
- Square, Landscape, and Portrait Geometries

"Must be minimum number of characters or will not print"

Example to Explore
- Harrington Font with String "Wahoo!", 6 Characters Long
- Explore ratio of width/height
- Compare to extra percent decrease in font size
- Notice: linear sequence, similar to slope or skip counting in 2D
- Notice: linear sequence works for similar ratios or fractions (validation for geometry ratio)

Numbers that will come out ...
[See image]

### Printing Minimum Characters on a ...

To Illustrate: use FlatForLoop.pde
- Number all characters, test to see the minimum size on all square geometries
- Start with Square Geometry to see where to begin, based on main bug example with 6 characters

Quick Solution: geometry-Height*0.08 will work
- Included in Procedural Solution

Previous Experiment

Geometry (Width, Height)    Ratio   Characters    Notes
200, 200                    1       12            Works for all Square Geometries (similar ratios), tested to (2000, 2000)
1950, 2000                  0.975   12            Landscape Examples
1750, 2000                  0.875   11
1650, 2000                  0.825   10
1550, 2000                  0.775   9
1350, 2000                  0.675   8
1150, 2000                  0.575   7
1000, 2000                  0.5     6
800 , 2000                  0.4     5
650 , 2000                  0.325   4
450 , 2000                  0.225   3
250 , 2000                  0.125   2
75  , 2000                  0.0375  1
**Include Portrait Geometries, within reason (realistic wide screen is difficult since numbers > 1)**
- Try to equate to landscape geometries as increasing sequence

**Note: numbers may be easier to understand if truncated to tenths**
- OR constant height of 1000
- CAUTION: these numbers are not exact either
- Easier to Visualize: place on horizontal number line


---

# Ideas to Include
- Text follows different algorithm
- textSize() is larger than rect() height when textWidth() is shorter than rect() width
- take percentage of that font

See Summary to view Last Years Autosizing Function

Exploring Sequences and Series, equivalent fractions and ratios
- Viewing Different Geometries: square, landscape, portrait
- developing a sequence for further decreasing fontSize based on textWidth
- Sequence is similar to solving square roots without a calculator
- ideas to explore
  - Geometry Classification: Square, Landscape, and Portrait
  - Number of Characters printing for each, use string count and remove spaces
    - trim(): removes spaces
    - string.length() returns the number of characters
    - adding spaces: string + " "
    - adding spaces will get to the minimum number of characters needed to printing
    - using Excel
  - What happens when less characters
  - What happens when less or more ratio
  - See Image for 7 characters

  Main Issues with this Algorithm
  1. Text is not drawn, font size too big
     - Descrease font size
     - If autosizing, check font being used and decrease further by percentage it needs
       - Ratio of width to may be odd

  Example of Odd Font Ratio of Width to Height: Harrington
  - Requires a 1% decrease in font size to print the text after the autosize calculation


  Finishing Text, Learning Objectives
  - Building a Procedural Understanding of Text
  - Copy out flat program to structural
  - Create void procedures, then void procedures with parameters (use parameters at the very end), then method with return (use these parameters before void procedures)
  - Using minimum number of characters printed
  - [Advanced] Using a media query to change the minimum number of characters

Final Ideas
- using IF-ELSE to catch an extra decrease with characters less than a square geometry
- using additional IF-ELSE to catch different fonts
- combining IF-ELSE into AND

When characters are less than 13, one decrease in font size will work for all characters
- Verify this with different fonts

When multiple text sizes are present, try to find smallest font and print that one

Quick Solution: geometry-Height*0.08 will work
- Included in Procedural Solution

---
