import java.io.*;

public class SentenceWordsIteration {

  //Global Variables
  public static String alphabet = "is this a borring loop. yes it it.";

  public static void main (String[] args)
  throws StringIndexOutOfBoundsException
  {
    System.out.println(alphabet);
    String remainingPhrase = alphabet.toLowerCase();
    remainingPhrase = remainingPhrase.trim();
    if (remainingPhrase.length() > 140) {
      System.out.println("\nPlease only type 140 Characters per reponse.\n");
      System.exit(0);
      //Note: 140 characters will have 70 words, with a space or period at the end.
    }
    //Following TRY-CATCH is for Chatbot periods and periodless
    int periodPositionI;
    String periodPositionS;
    Boolean periodPositionB;
    try {
      periodPositionI = remainingPhrase.indexOf(".");
      periodPositionS = remainingPhrase.substring(periodPositionI, periodPositionI+1);
      periodPositionB = periodPositionS.equals(".");
    }
    catch (StringIndexOutOfBoundsException e1) {
      periodPositionI = remainingPhrase.length();
      periodPositionS = remainingPhrase.substring(periodPositionI-1, periodPositionI);
      periodPositionB = true;
    }
    if (periodPositionB == false) {System.out.println("System Error 1"); System.exit(0);}
    remainingPhrase = remainingPhrase.substring(0, periodPositionI);
    //Create Substrings for all words
    int[] wordspace = new int[70];
    wordspace[0] = 0;
    String[] word = new String[70];
    Boolean[] wordTrue = new Boolean[70];
    //
    Boolean stop = false;
    int i = 0;
    while( stop == false ) {
      remainingPhrase = remainingPhrase.trim();
      periodPositionI = remainingPhrase.length();
      try {
        wordspace[i] = remainingPhrase.indexOf(" ");
        word[i] = remainingPhrase.substring(0, wordspace[i]);
      }
      catch(StringIndexOutOfBoundsException e2) {
        wordspace[i] = periodPositionI;
        word[i] = remainingPhrase.substring(0, periodPositionI);
        stop = true;
      }
      if ( wordspace[i] == word[i].length() ) {
      } else {System.out.println("System Error 2"); System.exit(0);}
      System.out.println(word[i]);
      i++; //i = i+1;
      remainingPhrase = remainingPhrase.substring(wordspace[i-1], periodPositionI);
    }
  }
}
