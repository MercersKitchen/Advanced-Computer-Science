import java.util.Arrays;

public class Response {
  //
  //Global Variables
  public static String[] words = new String[70];
  //
  public String[] response(String statement) {
    for (int i=0; i<words.length; i++){
      words[i] = null;
    }
    words = parse(statement);
    return words; //will return NULL values that can be search and index limited for output
  }//End response()
  //
  public String[] parse (String statement)
  throws StringIndexOutOfBoundsException
  {
    String phrase = statement.trim().toLowerCase();
    if (phrase.length() > 140) {
      System.out.println("\nPlease only type 140 Characters per reponse.\n");
      System.exit(0);
    }
    //Note: 140 characters will have 70 words, with a space or period at the end.
    //Following TRY-CATCH is for Chatbot periods and periodless
    int periodPositionI;
    String periodPositionS;
    Boolean periodPositionB;
    try {
      periodPositionI = phrase.indexOf(".");
      periodPositionS = phrase.substring(periodPositionI, periodPositionI+1);
      periodPositionB = periodPositionS.equals(".");
    }
    catch (StringIndexOutOfBoundsException e1) {
      periodPositionI = phrase.length();
      try {
        periodPositionS = phrase.substring(periodPositionI-1, periodPositionI);
      }
      catch (StringIndexOutOfBoundsException e2) {}
      periodPositionB = true;
    }
    if (periodPositionB == false) {System.out.println("System Error 1"); System.exit(0);}
    phrase = phrase.substring(0, periodPositionI);
    //Create Substrings for all words
    int[] wordspace = new int[70];
    wordspace[0] = 0;
    String[] wordParse = new String[70];
    Boolean[] wordTrue = new Boolean[70];
    Boolean stop = false;
    int i = 0;
    while( stop == false ) {
      phrase = phrase.trim();
      periodPositionI = phrase.length();
      try {
        wordspace[i] = phrase.indexOf(" ");
        wordParse[i] = phrase.substring(0, wordspace[i]);
      }
      catch(StringIndexOutOfBoundsException e3) {
        wordspace[i] = periodPositionI;
        wordParse[i] = phrase.substring(0, periodPositionI);
        stop = true;
      }
      if ( wordspace[i] == wordParse[i].length() ) {
      } else {System.out.println("System Error 2"); System.exit(0);}
      i++; //i = i+1;
      phrase = phrase.substring(wordspace[i-1], periodPositionI);
    }
    return wordParse;
  }// End parse()
  //
}//End Class Response
