import java.util.Scanner;

public class TestScanner {
  public static void main(String[] args)
  {
  Scanner input = new Scanner ( System.in );
  System.out.println("Type something");
  String statement1 = input.nextLine();

  System.out.println("Type something");
  String statement2 = input.nextLine();

  System.out.println(statement1 + "\t" + statement2);
  }
}
