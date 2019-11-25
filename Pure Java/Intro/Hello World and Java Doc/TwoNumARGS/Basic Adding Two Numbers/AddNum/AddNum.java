import java.io.*;

public class AddNum
{

   public int addNum(int numA, int numB)
   {
      return numA + numB;
   }

   public static void main(String args[]) //Exception not caught yet
   throws IOException
   {
      AddNum obj = new AddNum();
      int sum = obj.addNum(10, 20);

      System.out.println("\nSum of 10 and 20 is: " + sum);
   }

 }
