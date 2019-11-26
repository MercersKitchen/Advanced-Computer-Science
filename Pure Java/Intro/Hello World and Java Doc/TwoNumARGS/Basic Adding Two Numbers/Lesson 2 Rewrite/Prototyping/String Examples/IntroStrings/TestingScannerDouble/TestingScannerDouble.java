/**<h1>Project Title: </h1>
*<b>Purpose of Project:</b><br>
*<p></p>
*<b>How to start the project instructions:</b><br>
*<p></p>
*<b>User Instructions:<b/><br>
*<p></P>
*<br>
*@author Mark Mercer
*@version 1
*@since 2017-11-15
*/

import java.util.Scanner; //Must import this

public class TestingScannerDouble {
  /**<b>Class Description: Beginning Template</b><br>
  *<p></p>
  *@param
  *@return
  *@throws
  */

  /**<b>Method Description: Driver</b><br>
  *<p></p>
  *@param args unused
  *@return
  *@throws
  */

   public static void main(String[] args) {

   //Similar to key and conccatination of nameChar + nameString
   //Notice, this has a bug when you run it ... fix it
   Scanner input = new Scanner ( System.in );
   System.out.println("Type something");
   String statement1 = input.nextLine();

   System.out.println("Type something");
   String statement2 = input.nextLine();

   System.out.println(statement1 + "  " + statement2);

   }
}

//Test JOptionPane for username and password
//Test Argument passing with !"" and array out bounds
