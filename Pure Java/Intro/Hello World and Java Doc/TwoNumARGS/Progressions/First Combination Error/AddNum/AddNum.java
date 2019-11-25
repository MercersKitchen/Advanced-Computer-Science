import java.io.*;

public class AddNum
{

   public int addNum(int numA, int numB)
   {
      return numA + numB;
   }

   public static void main(String args[]) //Exception not caught yet
   throws IOException, ArrayIndexOutOfBoundsException
   {
     try{ //Did someone enter the required arguments
       int i=0;
       while(args[i] == "") { //One Reason this will return false or error
         // No argument entered and exception thrown
         // Note: Argument entered so args[0] is NOT null, will run rest of code b/c WHILE
       }
     }
     catch (ArrayIndexOutOfBoundsException e) {
       System.out.println("You must enter arguments (two numbers) to start this program. \n" +
                          "Please restart the program with arguments. Thank-you");
       System.exit(0);
     }

     AddNum obj = new AddNum();
     int sum = obj.addNum(args[0], args[1]);
     System.out.println("\nSum of 10 and 20 is: " + sum);
     System.exit(1);
   }

 }
