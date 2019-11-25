/**<h1>Project Title: AddNum</h1>
*<b>Purpose of Project:</b><br>
*<p>Supply CMD line arguments and change string to ints</p>
*<b>How to start the project instructions:</b><br>
*<p>In CMD: $javac [ClassName].java;
then $java HelloWorld_CMD 10 20
any numbers will do</p>
*<b>User Instructions:</b><br>
*<p>Familiarize with routines of executing JAVA from CMD</P>
*<br>
*@author Mark Mercer
*@version v1.0
*@since 2017-11-17
*/

public class JavaDocExample{ //AddNum

  /**<b>Class Description: Required</b><br>
  *<p>Outputs sum of two numbers</p>
  *@param
  *@return
  *@throws
  */

  /**<b>Method Description: addNum is "adder"</b><br>
  *<p>Adds two numbers</p>
  *@param numA first args number
  *@param numB second args number
  *@return "the sum" of both numbers
  *@throws
  */

  public int addNum (int numA, int numB) {
    return numA + numB;
  }

  /**<b>Method Description: Driver</b><br>
  *<p>Collecting two numbers in args</p>
  *@param args[0] first args number
  *@param args[1] second args number
  *@return null
  *@exception NumberFormatException args is not a number
  *@throws
  */

  public static void main(String args[])
  throws NumberFormatException, ArrayIndexOutOfBoundsException
  {
  try{
      for(int i= 0; i<args.length; i++) { //Not Needed, debugging purpose
      System.out.println("Args [" + i + "]: " + args[i]);
      }
    int numA = Integer.parseInt(args[0]);
    int numB = Integer.parseInt(args[1]);

    JavaDocExample obj = new JavaDocExample();
    int sum = obj.addNum(numA, numB);
    System.out.println("Sum of " + args[0] + " and " + args [1] + " is: " + sum);
  }
  catch(NumberFormatException nfe){
    //input is not a number, gently tell user to use a number in Args
    //can provide smarter feedback if parsing is separated
    System.out.println ("Your argument is not a number. \nPlease use a number.");
    System.exit(1);
  }
  catch(ArrayIndexOutOfBoundsException arrayBoundsE){ //"e"
    //input is not a number, gently tell user to use a number in Args
    System.out.println ("To run this program, \nPlease enter two number-arguments.");
    System.exit(1);
  }
  }
}
