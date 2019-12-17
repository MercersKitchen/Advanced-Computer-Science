import java.util.Scanner;

public class Chatbot {

  //Global Variables
  public static String[] statement = new String[4];
  public static String[] response = new String[4];

  public static void main(String[] args)
  {
    Scanner in = new Scanner ( System.in );
    System.out.println("Welcome to Mr. Mercer ... you can trust me." +
                        "\nLet's Talk");
    //
    statement[3] = "\nWe are about to run out of memory, and I am tired!" +
                    "\nGoodBye. Talk with you soon.";
    //
    int i=0;
    String input;
    while ( i < 4) {
      input = in.nextLine();
      response[i] = input;
      System.out.println(statement[i]);
      i++;
    } //End While for Chatbot
    System.out.println("\nRemembing our conversation...");
    for(i=0; i<4; i++) {
      System.out.println("I said: " + statement[i] + "\t , then you said: " + response[i]);
    }
    System.exit(1);
  }//End Main Program
} //End Chatbot_v1
