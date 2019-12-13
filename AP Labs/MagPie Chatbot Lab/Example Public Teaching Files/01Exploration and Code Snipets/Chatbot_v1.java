import java.util.Scanner;

public class Chatbot_v1 {

  //Global Variables
  public static String[] statement = new String[100];
  public static String reponse = "you don't say";

  public static void main(String[] args)
  {
    Scanner input = new Scanner ( System.in );
    /*for(int i=0; i<statement.length; i++) {
      statement[i] = "";
    }
    */
    statement[99] = "We are about to run out of memory, and I am tired!" +
                    "GoodBye. Talk with you soon.";
    System.out.println("Welcome to Mr. Mercer ... you can trust me");
    int i=0;
    Boolean endChatbot = false;
    while(endChatbot == false) {
      statement[i] = input.nextLine();
      System.out.println(reponse);
      if (i==99) {
        System.out.println(statement[99]);
        endChatbot = true;
      }//End out of memory
    }
    System.exit(1);
  }
} //End Chatbot_v1
