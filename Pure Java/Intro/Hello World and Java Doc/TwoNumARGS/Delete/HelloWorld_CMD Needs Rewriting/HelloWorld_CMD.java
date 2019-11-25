/**<h1>Project Title: Hello World</h1>
*<b>Purpose of Project:</b><br>
*<p>Supply CMD line arguments</p>
*<b>How to start the project instructions:</b><br>
*<p>In CMD: $javac [ClassName].java;
then $java HelloWorld_CMD testing abc 123</p>
*<b>User Instructions:</b><br>
*<p>Familiarize with routines of executing JAVA from CMD</P>
*<br>
*@author Mark Mercer
*@version v1.0
*@since 2017-11-16
*/

public class HelloWorld_CMD {

  /**<b>Class Description: Beginning Template</b><br>
  *<p>Outputs message</p>
  *@param
  *@return
  *@throws
  */

  /**<b>Method Description: Driver</b><br>
  *<p>Outputs message</p>
  *@param args used by CMD, user to decide
  *@return void
  *@throws
  */

  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException
  {
    try{ //Did someone enter the required arguments
      while(args[0]=="") { //Two Reasons this will return false or error
        //1. Argument entered so args[0] is NOT null, will run rest of code b/c WHILE
        //2. No argument entered and exception thrown
      }
    }
    catch (ArrayIndexOutOfBoundsException e) {
      System.out.println("You must enter arguments to start this program \n" +
                         "Please restart the program with arguments. Thank-you");
      System.exit(0);
    }
    System.out.println("Printing command-line arguments");
    for(int i= 0; i<args.length; i++) {
        System.out.println("Args [" + i + "]: " + args[i]);
      }
    System.out.println("Done.");
  }
}
