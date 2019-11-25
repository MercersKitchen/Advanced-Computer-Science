/**<h1>Project Title: Introduction to String Functions</h1>
*<b>Purpose of Project:</b><br>
*<p>Use String Funtinos</p>
*<b>How to start the project instructions:</b><br>
*<p>Pass four names in camelCasing as a asrgs[0] string</p>
*<b>User Instructions:<b/><br>
*<p>Let the program run, Prints out strings using </P>
*<br>
*@author Mark Mercer
*@version 1
*@since 2017-11-18
*/

public class IntroStrings {
  /**<b>Class Description: Beginning Template</b><br>
  *<p></p>
  *@param
  *@return
  *@throws
  */

  /**<b>Method Description: Driver</b><br>
  *<p></p>
  *@param args 4 names, BenJohnPatMichelle
  *@return
  *@throws
  */

   public static void main(String[] args) {
   String name[] = new String[8]; //Will be used to hold argument pieces, as individual names
   System.out.println ("Your Beginning String is:\n" + args[0]); //Shows argument
   for(int i=0; i<args[0].length(); i++) { //Prints a counting structure for the argument
     if(i >= 10) {
       System.out.print(i-10);
     } else {
       System.out.print(i);
     }
   }
   System.out.println(""); //Used to print a new line, reading ease
   //Similar to math.random(int) or math.random(int, int) with inclusive and exclusive int-values
   System.out.println(args[0].substring(10)); //Starts counting at "0" and ignores until int=10, inclusive
   System.out.println(args[0].substring(7, 10)); //Returns string inbetween values, first int is inclusive, second is exclusive
   System.out.println(args[0].substring(3, 7)); //Returns string inbetween values, first int is inclusive, second is exclusive
   System.out.println(args[0].substring(0, 3)); //Returns string inbetween values, first int is inclusive, second is exclusive
   //Illustrating another array as a data strucutre for the args argument
   name[0]=args[0];
   name[1]=args[0].substring(0, 3); //Ben
   name[2]=args[0].substring(3, 7); //John
   name[3]=args[0].substring(7, 10); //Pat
   name[4]=args[0].substring(10); //Michelle

   System.out.println(name[4].indexOf("elle")); //Returns the index beginning of the text being searched for

   //String functions to illustrate "type once, output different formatting"
   name[5]=name[1].toLowerCase(); //Resaves Ben to ben in another part of array, using memory Structure
   System.out.println(name[5]); //Output
   System.out.println(name[5].toUpperCase()); //Re-outputs ben as BEN, without memory structure

   //Checking if strings are the same
   System.out.println(name[1] == args[0].substring(0, 3)); //Returns FLASE although strings are same
      //Comparing memory location hecxidecimal values
      //How is this done? Cannot find reference right now
   System.out.println(name[1].equals(args[0].substring(0, 3))); //Returns TRUE since comparing characters
   //.compareTo() function ... takes some playing
   System.out.println("Comparing Ben to John returns: " + name[1].compareTo(name[2]));
   System.out.println("BcdefghiJ" + "\n87654321"); //Counting for .compareTo()
   System.out.println("Comparing John to Ben returns: " + name[2].compareTo(name[1]));
   System.out.println("BcdefghiJ" + "\n 12345678"); //Counting for .compareTo()

   //Illustrating .trim(), removing zeros
   name[6]="      (6) Spaces (2)  ";
   System.out.println(name[6] + ", the length is: " + name[6].length());
   System.out.println(name[6].trim() + ", the length is: " + name[6].length()); //trimming is not saved, only outputed
   //.trim() is needed when users input information, spaces are added by accident
   name[7] = name[6].trim(); //Using memory strucutre to delete spaces perminantly
   System.out.println(name[7] + ", the length is: " + name[7].length()); //interior spaces not trimmed, enables all other string functions

   }
}
