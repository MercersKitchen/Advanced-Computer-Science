import java.io.*;

public class SentenceWordsArrayNoIteration {

  //Global Variables
  public static String alphabet = "   The quick brown fox jumps over the lazy dog.";

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
    if (periodPositionB == false) {System.exit(0);}
    remainingPhrase = remainingPhrase.substring(0, periodPositionI);
    //Create Substrings for all words
    int[] wordspace = new int[70];
    String[] word = new String[70];
    Boolean[] wordTrue = new Boolean[70];
    //
    wordspace[0] = remainingPhrase.indexOf(" ");
    word[0] = remainingPhrase.substring(0, wordspace[0]);
    if ( wordspace[0] == word[0].length() ) {
      wordTrue[0] = true;
    } else {
      wordTrue[0] = false; //Problem if false
    }
    System.out.println(word[0]);
    remainingPhrase = remainingPhrase.substring(wordspace[0], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[1] = remainingPhrase.indexOf(" ");
    word[1] = remainingPhrase.substring(0, wordspace[1]);
    System.out.println(word[1]);
    //Third Word
    remainingPhrase = remainingPhrase.substring(wordspace[1], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[2] = remainingPhrase.indexOf(" ");
    word[2] = remainingPhrase.substring(0, wordspace[2]);
    System.out.println(word[2]);
    remainingPhrase = remainingPhrase.substring(wordspace[2], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[3] = remainingPhrase.indexOf(" ");
    word[3] = remainingPhrase.substring(0, wordspace[3]);
    System.out.println(word[3]);
    remainingPhrase = remainingPhrase.substring(wordspace[3], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[4] = remainingPhrase.indexOf(" ");
    word[4] = remainingPhrase.substring(0, wordspace[4]);
    System.out.println(word[4]);
    remainingPhrase = remainingPhrase.substring(wordspace[4], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[5] = remainingPhrase.indexOf(" ");
    word[5] = remainingPhrase.substring(0, wordspace[5]);
    System.out.println(word[5]);
    remainingPhrase = remainingPhrase.substring(wordspace[5], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[6] = remainingPhrase.indexOf(" ");
    word[6] = remainingPhrase.substring(0, wordspace[6]);
    System.out.println(word[6]);
    remainingPhrase = remainingPhrase.substring(wordspace[6], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    wordspace[7] = remainingPhrase.indexOf(" ");
    word[7] = remainingPhrase.substring(0, wordspace[7]);
    System.out.println(word[7]);
    remainingPhrase = remainingPhrase.substring(wordspace[7], periodPositionI);
    remainingPhrase = remainingPhrase.trim();
    periodPositionI = remainingPhrase.length();
    //int word9space = remainingPhrase.indexOf(" "); //no spaces left, will fail on last word
    word[8] = remainingPhrase.substring(0, periodPositionI); //will fail with word9space
    System.out.println(word[8]);
  }
}
