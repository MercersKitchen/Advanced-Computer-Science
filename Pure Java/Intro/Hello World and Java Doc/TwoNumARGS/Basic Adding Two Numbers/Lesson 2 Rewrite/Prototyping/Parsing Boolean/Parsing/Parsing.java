public class Parsing
{
  //Global Variable
  static Boolean[] bool = new Boolean[2];
  static String[] input = new String[2];

  //Notation for mutliple exceptions
  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException, NumberFormatException
  {
    try
    {
      args[0]="True"; //Without arguement, throws ArrayIndexOutOfBoundsException
      args[0]="true"; //case does not matter
    }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[0] ="True"; //change capital
      input[1] ="yes"; //should return false
    }

    try
    {
      bool[0] =  Boolean.parseBoolean(input[1]);
    }
    catch (NumberFormatException e) {
      System.out.println("You must enter digits \n" +
                         "Please restart the program with arguments. Thank-you");
      System.exit(1);
    }
    System.out.println("Parsing an Integer with Try-Catch.");
    System.out.println("From String " + input[1] + " to Integer " + bool[0]);
    System.out.println("Done.");
    System.exit(0);
  }
}
