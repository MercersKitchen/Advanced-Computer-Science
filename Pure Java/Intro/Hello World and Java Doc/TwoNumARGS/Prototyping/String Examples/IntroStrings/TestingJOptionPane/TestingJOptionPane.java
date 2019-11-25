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

import javax.swing.JOptionPane;

public class TestingJOptionPane {
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
     String input = JOptionPane.showInputDialog ("Press 1 for Monday \n" +
                                                 "Press 2 for Tuesday");
     //Remember, these are strings not ints

     System.out.println(input);
   }
}
