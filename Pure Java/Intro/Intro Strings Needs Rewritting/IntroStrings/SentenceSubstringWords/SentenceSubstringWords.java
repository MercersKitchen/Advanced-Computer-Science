public class SentenceSubstringWords {

  //Global Variables
  public static String alphabet = "  The  quick  brown fox jumps  over the  lazy dog.";

  public static void main (String[] args)
  {
    System.out.println(alphabet);
    //Modify variable to delete extra spaces.
    String memAlphabet = alphabet.trim();
    System.out.println(memAlphabet);
    //Modify for lowercase
    String lowerCaseMemAlphabet = memAlphabet.toLowerCase();
    System.out.println(lowerCaseMemAlphabet);
    //Find the end of the sentence, limited to periods
    int periodPositionI = lowerCaseMemAlphabet.indexOf(".");
    System.out.println(periodPositionI);
    String periodPositionS = lowerCaseMemAlphabet.substring(periodPositionI, periodPositionI+1);
    Boolean periodPositionB = periodPositionS.equals(".");
    System.out.println(periodPositionB);
    String noPeriodlowerCaseMemAlphabet = lowerCaseMemAlphabet.substring(0, periodPositionI);
    System.out.println(noPeriodlowerCaseMemAlphabet);
    //Create Substrings for all words
    int word1space = noPeriodlowerCaseMemAlphabet.indexOf(" ");
    System.out.println(word1space);
    String word1 = noPeriodlowerCaseMemAlphabet.substring(0, word1space);
    System.out.println(word1);
    System.out.println( word1.length() );
    Boolean word1True;
    if ( word1space == word1.length() ) {
      word1True = true;
    } else {
      word1True = false;
    }
    System.out.println(word1True);
    String remainSentence = noPeriodlowerCaseMemAlphabet.substring(word1space, periodPositionI);
    System.out.println(remainSentence);
    //What happens if 2 spaces is the default for editting the separation between words
    //Which functions and which variables need to be repeated to capture the rest of the words
  }
}
