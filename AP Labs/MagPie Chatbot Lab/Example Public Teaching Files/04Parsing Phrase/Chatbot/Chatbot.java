import java.util.Scanner;
import java.util.Arrays;

public class Chatbot {

  //Global Variables
  public static String[] statement = new String[5]; //Limited Conversation Length
  public static String[] response = new String[4]; //Only SMS length 140 Characters
  public static String[] wordsForNow = new String[70]; //Delete this

  public static void main(String[] args)
  throws StringIndexOutOfBoundsException
  {
    Response maggie = new Response();
    //
    Scanner in = new Scanner ( System.in );
    System.out.println("Welcome to Mr. Mercer ... you can trust me." +
                        "\nLet's Talk");
    //
    statement[statement.length-1] = "\nWe are about to run out of memory, and I am tired!" +
                    "\nGoodBye. Talk with you soon.";
    //
    int z=0;
    Boolean endChatbot = false;
    String input = null;
    while ( endChatbot == false ) {
      System.out.println("here, " + z);
      if ( z >= response.length ) {
        endChatbot = true;
      } else {
        try {
          input = in.nextLine(); //for null or -1 on string
        } catch (StringIndexOutOfBoundsException e1) {
          System.out.println("Sorry, I didn't hear you.");
        }
           //Try-Catch
        response[z] = input;
        try {
          wordsForNow = maggie.response(response[z]);
          //Delete this println
          for (int i=0; i<wordsForNow.length; i++) {
            if (wordsForNow[i] != null) System.out.println(wordsForNow[i]);
          }
        }
        catch (StringIndexOutOfBoundsException e2) {}
        //
        //CONTINUE HERE
        //
      }
      z++;
    } //End While for Chatbot
    System.out.println("\nRemembing our conversation...");
    for(int i=0; i<response.length; i++) {
      System.out.println("I said: " + statement[i] + "\t , you said: " + response[i]);
    }
    if (statement[statement.length - 2] != null) {
      System.out.println("I said: " + statement[statement.length - 1]);
    }
    System.exit(1);
  }//End Main Program
} //End Chatbot_v1
