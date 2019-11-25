public class Parsing
{
  //Global Variable
  static int[] num = new int[2];
  static String[] input = new String[2];
  static String[] parseReturn = new String[2];

  String parsingMethod (String string)
  {
   //continue with parsing the string in order with specific feedback
    String returnString="null"; //string is treated special by compiler
    int returnInt; //Input is small, thus int, not long
    Boolean boolInt=false; //NULL is not possible in primitives
    float returnFloat; //Input is small, thus float, not double
    Boolean boolFloat=false;
    try
    {
      returnInt = Integer.parseInt(string);
      System.out.println("Thank-you for typing digits");
      boolInt=true;
    }
    catch (NumberFormatException f)
    {
      try
      {
        System.out.println("Let's see if you typed a decimal.");
        returnFloat = Float.parseFloat(string);
        System.out.println("Looks like you typed a decimal, \nPlease restart the program and type digits only.");
        boolFloat=true;
      }
      catch (NumberFormatException g)
      {
        System.out.println("Let's see if you mistyped a digit");
        returnString = string;
        System.out.println("Look's like you mistyped a digit. \nPlease restart the program and type digits.");
      }
      //To Evalaute a Boolean, must use String Functions
      //Code here to be continued
    }
    if (boolInt == true) return "integer";
    if (boolFloat == true) return "decimal";
    if (returnString != null) {
      Boolean returnBool = Boolean.parseBoolean(string);
      if (returnBool == true) return "boolean";
      return "spelling mistake";
    } else {
      System.out.println("Program has malfunctioned. Needs review");
      System.exit(2);
    }
  //Compiler needs this return, will probably not run
  return "ERROR" ; //Must be a String Varaible returning into
  }

  //Notation for mutliple exceptions
  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException, NumberFormatException
  {
    Parsing object = new Parsing();
    try
    {
      input[0] = args[0]; //Without arguement, throws ArrayIndexOutOfBoundsException
      //If Error thrown, next line will not execute
      System.out.println("Congrats ... I am using your ARGS[0].");
      }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[0] ="2"; //Change to "two" for illustration
      System.out.println("You did not enter a first arguement. \nI did it for you.");
    }
    try
    {
      // Throws ArrayIndexOutOfBoundsException if no second ARGS entered
      input[1] = args[1];
      System.out.println("Congrats ... I am using your ARGS[1].");
    }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[1] = "5"; //Change to "two" for illustration
      System.out.println("You did not enter a second arguement. \nI did it for you.");
    }
    try
    {
      //Need to change this line, eventually
      parseReturn[0] = object.parsingMethod(input[0]); // Memory of ARGS[0]'
      parseReturn[1] = object.parsingMethod(input[1]); // Memory of ARGS[0]'
    }
    catch (NumberFormatException e) {
      System.out.println("You must enter digits \n" +
                         "Please restart the program with arguments. Thank-you");
      // Feedback is not specific, a general parsing method would
      // WOrk Better
      System.exit(1);
    }
    System.out.println("Parsing an Entry with a Parsing Method.");
    System.out.println("From String " + input[0] + " to Identifier String " + parseReturn[0]);
    System.out.println("From String " + input[1] + " to Identifier String " + parseReturn[1]);
    System.out.println("Done.");
    System.exit(0);
  }
}
