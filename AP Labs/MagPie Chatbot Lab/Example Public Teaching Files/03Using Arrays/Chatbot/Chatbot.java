import java.util.Scanner;

public class Chatbot {

  //Global Variables
  public static String[] statement = new String[5]; //Limited Conversation Length
  public static String[] response = new String[4]; //Only SMS length 140 Characters

  public static void main(String[] args)
  {
    Scanner in = new Scanner ( System.in );
    System.out.println("Welcome to Mr. Mercer ... you can trust me." +
                        "\nLet's Talk");
    //
    statement[statement.length-1] = "\nWe are about to run out of memory, and I am tired!" +
                    "\nGoodBye. Talk with you soon.";
    //
    int i=0;
    String input;
    while ( i < response.length ) {
      input = in.nextLine();
      response[i] = input;
      System.out.println(statement[i]);
      i++;
    } //End While for Chatbot
    System.out.println("\nRemembing our conversation...");
    for(i=0; i<response.length; i++) {
      System.out.println("I said: " + statement[i] + "\t , you said: " + response[i]);
    }
    if (statement[statement.length - 2] != null) {
      System.out.println("I said: " + statement[statement.length - 1]);
    }
    System.exit(1);
  }//End Main Program
} //End Chatbot_v1
