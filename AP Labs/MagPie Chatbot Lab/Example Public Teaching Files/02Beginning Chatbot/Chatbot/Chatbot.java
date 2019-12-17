import java.util.Scanner;

public class Chatbot {

  //Global Variables
  public static String statement;
  public static String response;

  public static void main(String[] args)
  {
    Scanner in = new Scanner ( System.in );
    System.out.println("Welcome to Mr. Mercer ... you can trust me." +
                        "\nLet's Talk");
    //
    int i=0;
    String input;
    while ( i < 4) {
      input = in.nextLine();
      System.out.println(input);
      i++;
    } //End While for Chatbot
    System.exit(1);
  }
} //End Chatbot_v1
