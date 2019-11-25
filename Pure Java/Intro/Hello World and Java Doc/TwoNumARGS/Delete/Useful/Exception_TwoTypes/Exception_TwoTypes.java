/**<h1>Project Title: Exception Handling</h1>
*<b>Purpose of Project:</b><br>
*<p>To illustrate the summary notes in a small program that handles exceptions in two ways.</p>
*<b>How to start the project instructions:</b><br>
*<p>Compile and Run the bytecode</p>
*<b>User Instructions:<b/><br>
*<p>Comment out lines to view the control flow. The various println() will help to know
which lines are executed and which are skipped.</P>
*<br>
*@author Mark Mercer
*@version 1
*@since 2017-11-30
*/

public class Exception_TwoTypes {
  /**<b>Class Description: Necessary Class</b><br>
    *<p></p>
    *@param
    *@return
    *@throws
    */

    /**<b>Method Description: Main, Driver</b><br>
    *<p>Everything is hardcoded</p>
    *@param args unused
    *@return
    *@throws ArithmeticException Divide by Zero
    */

  public static void main (String[] args)
  throws ArithmeticException
  {
    int a = 4;
    int b = 0;
    if (b==0) {
      //Comment out throw to see program flow 
      throw new ArithmeticException ("Cannot Divide by Zero, Change the B Value");
      //all lines following in the IF are "unreachable" and debuggd by compiler
    }

    System.out.println("Before TRY");
    //Lines in TRY are not recognized by compiler, like initializing variables
    try{
      System.out.println("First Line in Try, attempt DIVISION");
      int c = a/b; //Will THROW, does not deal with ancipated issues but THROWS Exception, different OUTPUT
      System.out.println("Last Line in Try"); //Does not run once exception thrown
    }
    catch (ArithmeticException e) {
      System.out.println("First Line in Catch");
      System.out.println("You have a number format exception: " + e); //For multiple catches
      e.printStackTrace(); //Must run in CATCH
      b=4;
      System.out.println("Last Line in Catch");
    }
    System.out.println("Division is: " + a/b); //Possible answer show which b= line correct the b-variable
    System.out.println("Last Line in Program");
  }
}
