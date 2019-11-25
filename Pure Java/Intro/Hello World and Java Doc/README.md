# Hello World
Using Pure Java and the JAVAC Compiler through a Command Window

**UNDER CONSTRUCTION**

Tools will be using
- WINDOWS Folders
- CMD.exe
  - Note: able to use PowerShell but instruction will use CMD.exe
  - Similar to Terminal in Linux (Raspberry Pi Computer) and utilizing devices built for Internet of Things
- WYSIWYG: Atom (students are able to use text editor of their choice as long as multiple files open concurrently, like Notepad++)
- JDK (use most recent version unless using EPS-Schoolzone, See BYOD, <a href="https://github.com/MercersKitchen/BYOD#for-computers-using-schoolzone-all-or-powerteacher">Click Here</a>)
- Verify the Environmental Variables (My Computer / Properties / Advanced System Settings (System Properties) / Environmental / User Variables / Path / Edit)
  - Find the JDK bin and the JRE bin
  - For Example
    - C:\Program Files\Java\jdk1.8.0_121\bin
    - C:\Program Files\Java\jre1.8.0_121\bin

Review of JAVAC Complier
- Reads Java using 3 locators
  1. Main Program matches Folder name
  2. Main Program's first line within ```public static void main (String[] args)```

- Compared to Processing-JAVA
  - Folder and Program Name match
  - Main Program contains
    ```java
    void setup() {}
    void draw() {}
    ```

Using the JAVAC Compiler: compiling Java, creating Bytecode, executing Bytecode
- NOTE: Bytecode will run on multiple platforms (Windows, Mac, and various microcontrollers like alarm clocks) ... Java is everywhere
. Create GitHub repository and add a .txt document, extension changed to .java
1. SHIFT-LeftClick on Folder
   - OR
   - Open CMD.exe
   - Open Window and Copy Pathway to Program intended
     - For Example: C:\Users\mmercer\Documents\GitHub\CS30\Pure Java\Hello World and Java Doc\HelloWorld
   - Changing Drive letters, type ```c:```
   - Adding pathway: type ```cd C:\Users\mmercer\Documents\GitHub\CS30\Pure Java\Hello World and Java Doc\HelloWorld```
   - Then should be able to run the javac and java commands below
2. Run CMD: "Open Command Window Here"
3. Creating Bytecode: type ```javac [program name, exact spelling].java```
   - Compiles Java
   - Will return all errors here
4. UP-ARROW to access previous typing
   - Command Line and Typing Commands is very different than finding buttons to press
   - Compensation, computer remembers what you typed
5. Using CTRL-ARROWS to skip typing
6. Executing Bytecode: type ```java [program name, exact spelling]```

Progressions
1. Create a simple Hello World Program, <a href="">Click Here for Descriptions</a>, <a href="">Click Here for Exemplar Program Files</a>
   - Adding the Java Documentation
2. Case Study Adding Two Numbers from ARGS[]
3. Building the Error Catching and basic "Adding Two Numbers from ARGS[]" Program
   -
.

<a href="">Click Here for Descriptions</a>, <a href="">Click Here for Exemplar Program Files</a>

## Simple Hello World Program

**Rewrite**

- ID Driver Method within Main Program with matching folder name
- Discuss each word in terms of meaning
- Discuss concept that Java natively accepts strings
- Review basic Java Documentation File
- Review ```println``` in Pure Java

- Creating Folder, Naming must match Class Programming for
- Introduction to
  CMD
  javac
  java
- What is created in the folder
- Template for Hello World Program

Breakdown of Hello World Program
```java
//Writing your first class
//Break down each line of code - Review Processing Java

public class HelloWorld{
    public static void main(String[] args){
        System.out.println("/nHello, world!/n"); //Character escapes to format output
    }
}

//public: everyone can access it
//class: blueprint for objects, all information should be encapuslated
//static: do not need to instanciate an object
//void: does not return anything

/*main(String[] args): method named main, which takes one argument named args,
                       which is an array of Strings
  - Looks for this method, like Processing looks for void setup & draw
  - Thus, this method must be STATIC
  */
/*System.out.println: supplies strings to the command prompt
  Remember: dereference or "."
  System: predefined class in Java
  Out: System contains static class named "out"
  Println: one object in "out" that prints to cmd or console
  Note: "Out" has many accessible objects, "out" is one of them
  */
//Websites for help: https://docs.oracle.com/javase/6/docs/api/
  //Change 6 to 8 or 9 for more information

Hello World Example - Supplying CMD Array Content

/*
  To execute: supply cmd line arguments
  "java HelloWorld testing abc 123"
*/

public class HelloWorld{
    public static void main(String[] args){
        System.out.println("Printing command-line arguments:");
        for(int i = 0; i < args.length; i++){
            System.out.println("Args[" + i + "]: " + args[i]);
        }
        System.out.println("Done.");
    }
}
/*Note: &lt; is a symbole reference, is the same as <
  &gt;
  &le; is a symbole reference, is the same as <=
  &ge;
  CAUTION: &lt;= will only display <=, not compare
  See https://stackoverflow.com/questions/5068951/what-do-lt-and-gt-stand-for
  Accessed: 20171102
  */

```

---

## Hello World CMD (starting a program with Command Line Arguments)

**Rewrite**

Program Basics
- Review Basics of Array
- Add Try-Catch
  - https://beginnersbook.com/2013/04/try-catch-in-java/
- Review ArrayIndexOutOfBoundsException
- Review System Exit 0 & 1 (Similar to Quit Button)

### Using ARGS[]

Two Types of CMD Java, Hello World
- Hard coding variables
- Supplying code through CMD Window (Args is always strings)
  - Passing integers or other data types and parsing them
  - Passing Strings and dealing with them

Examples of Primitive Data Types included in above website
1. Boolean - http://java.sun.com/javase/6/docs/api/java/lang/Boolean.html#parseBoolean(java.lang.String)
2. int - http://java.sun.com/javase/6/docs/api/java/lang/Integer.html#parseInt(java.lang.String)
3. long - http://java.sun.com/javase/6/docs/api/java/lang/Long.html#parseLong(java.lang.String)
4. float - http://java.sun.com/javase/6/docs/api/java/lang/Float.html#parseFloat(java.lang.String)
5. double - http://java.sun.com/javase/6/docs/api/java/lang/Double.html#parseDouble(java.lang.String)

Note: Website also saved to folder

### Using System.exit
The Integer from System.exit(int) can be evaluated and used as a debugging issue

System.exit(0): normal exit

System.exit(-1): abnormal exit

Note: any number not zero means an abnormal exit

---

## Exploring Java Documentation within a Program, Adding Two Numbers

Program Progression
- See working case study for two numbers
- See adding javadoc to case study
- Getting Ready to add ARGS[] to input
  - See Exception of Two Types
    1. Direct output and program exit
    2. Smarter reassignment, then continue program execution
- See JavaDocExample
- See JavaDocToString
- assignment: combine all

**NEEDS REWRITTING**

Create a case study for adding two numbers, input through CMD Arguments
- Note: this will be on way to prototype (input through CMD arguments)

Creating an Instant of a Class means we use variables, assignment of variables (constructor), and toString() to for printing purposes (like debugging)
- through Driver or main program, if println an object, it will give the memory location of the object or the toString() when toString() overrides the default printing of memory location

What is Javadoc? Javadoc is a tool which comes with JDK and it is used for generating Java code documentation in HTML format from Java source code, which requires documentation in a predefined format.

Tracking Variables is very difficult, especially as programs get longer. For example, professional developers deal with millions of lines of code Javadoc creates external documentation and helps to read internal documentation.

Example Comments
- Single Line: ```//```
- Multi-line: ```/* text */```
- Javadoc: ```/** documentation */```

### Example Template

Documentation Beginning Template (using HTML Tags and CSS Style Sheet)

Note: tags below are minimum tags

```java
/**<h1>Project Title: </h1>
*<b>Purpose of Project: </b><br>
*<p>Description: </p>
*<b>How to start the project instructions: </b><br>
*<p>In CMD: $javac [ClassName].java; then $ java [ClassName]</p>
*<b>User Instructions: <b/><br>
*<p>[Can be ordered or unordered list]]</P>
*<br>
*@author Mark Mercer
*@version 1
*@since 2017-11-15
*/

/**<b>Class Description: </b><br>
*<p>Outputs: </p>
*@param args unused //only example answer
*@return void //only example answer
*@throws
*/

/**<b>Method Description: Driver</b><br> //Only example answer
*<p>Outputs message</p> //Only example answer
*@param args unused //Only example answer
*@return void //Only example answer
*@throws
*/
```

Details of javadoc tags
@author name-text
- Adds the author of a class
- Example: @author Mark Mercer

@version version-text
- Adds a "Version" subheading with the specified version-text to the generated docs when the -version option is used
- Example: @version 1.0

@since release
- Adds a "Since" heading with the specified since-text to the generated documentation
- International Standard for date
- Example: @since 2017-11-31

@param parameter-name description
- Adds a parameter with the specified parameter-name followed by the specified description to the "Parameters" section
- Example: @param num This is the sum for all numbers

@return description
- Adds a "Returns" section with the description text
- Example: @return int This returns num

@throws class-name description
- The @throws and @exception tags are synonyms
- @exception Adds a Throws subheading to the generated documentation, with the ClassName and description text
- Syntax: @exception class-name description

## Hello World Possible Exercises


---

# Include This

JavaDocExample: explore ToString in this
- input thorugh CMD, parsing numbers, Booleans, etc. using Try Catches
- See parsing in supporting DOCs
- see using args[]

AddNum (JavaDocExample- Example for illustrating Javadoc Tool further
Complete this program twice
1. Hardcoded variables
2. Args-passed variables & use print with escapes to output variables
- arguments are loaded based on whitespace or "" (to pass white space)
  leading and trailing white space is trimmed
- Use Try-Catch with non-zero System.Exit()
  See UsingArgs\InvocationCMDArguments.html
- int num = Integer.parseInt ( input );
3. This program reminds students about how to create a procedure in a class
   that is called anytime it is needed

CAUTION: need to explain purpose of program is to evaluate user input for specific user feedback

Future - Hello World Exercises (Below)
Future - Fundamentals Exercises by mixing in arrays (Below)

System Setup Exercises
Write a program that prints out "Hello World"
- if no command line arguments are specified
- if the user does enter a command line argument, the program uses that as a name. For example, passing in the name "Stanley" will print "Hello, Stanley!"
- Write a program that randomly chooses a command line argument and prints it out. For example, passing in burrito, sandwich, and salad will print "burrito" 1/3 of the time, "sandwich" 1/3 of the time, "salad" 1/3 of the time. Note: You can use this program to make your mind up when you can't decided something!
- What happens if you forget to make main static?
- What happens if you forget the String[] args argument?
- What happens if you run a class that doesn't have a main method?

Using JOptionPane
https://www.youtube.com/watch?v=jD-Lv_izino

Converting Strings to Ints using JOptionPane
https://www.youtube.com/watch?v=8JOp5yeQoJ4

Getting User Input using the Scanner Class
https://www.youtube.com/watch?time_continue=14&v=BHHeXdb47qQ

Formatting Doubles: ```String s = String.format ("This is how %.3f and %.2f ... Nice", float1, float2)```

---
