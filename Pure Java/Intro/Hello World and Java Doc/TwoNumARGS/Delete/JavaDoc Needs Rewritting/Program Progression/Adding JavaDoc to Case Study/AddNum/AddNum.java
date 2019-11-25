import java.io.*;

/**<h1>Project Title: Javadoc Tool Example</h1>
*<b>Purpose of Project:</b><br>
*<p>Illustrating Javatool Uses: Documentation,
throws exception in documentation and method or class.
Also, illustrates adding two numbers and outputs it to the screen.
Also, illustrates importing a java.io.* package.</p>
* <b>How to start the project instructions:</b><br>
* <p>In CMD: $javac [ClassName].java; then $ java [CalssName]</p>
* <b>User Instructions:<b/><br>
* <p>Familiarize with routines of executing JAVA from CMD</P>
* <br>
* @author Mark Mercer and Zara Ali
* @version 1.1
* @since 2014-03-31,
*/

public class AddNum {
   /**<h2>Class Description: Required Class</h2>
   *<b>Notes:</b><br>
   *<p>Self-explanatory</p>
   * @param
   * @param
   * @return
   */

   /**<h2>Method Description: Adding Integers</h2>
   *<b>Notes:</b><br>
   *<p>Illustrates simplest form of method and javadoc tags</p>
   * @param numA This is the first paramter to addNum method
   * @param numB  This is the second parameter to addNum method
   * @return int This returns sum of numA and numB.
   */

   public int addNum(int numA, int numB) {
      return numA + numB;
   }

   /**<h2>Method Description: Main Method</h2>
   *<b>Notes:</b><br>
   *<p>Makes use of addNum</p>
   * @param args Unused.
   * @return Nothing.
   * @exception IOException On input error.
   * @see IOException
   */

   public static void main(String args[]) throws IOException {
      AddNum obj = new AddNum();
      int sum = obj.addNum(10, 20);

      System.out.println("Sum of 10 and 20 is :" + sum);
   }
}
