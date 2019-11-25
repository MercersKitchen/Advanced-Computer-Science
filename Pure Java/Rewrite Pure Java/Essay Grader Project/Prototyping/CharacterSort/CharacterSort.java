public class CharacterSort
{
  public static void main (String[] args)
  {
    String str = "The quick brown fox jumps over the lazy dog while chasing a rabbit.";
    String[] WordArray = new String[13]; //Hardcoded 13 different words from sentence
    int WordIndex = 0;
    for (int a = 0; a < str.length(); a++) { //Separate sentence into words
      if (str.charAt(a) != ' ' && str.charAt(a) != '.') {
        WordArray[WordIndex] += str.charAt(a);
      } else {
        WordIndex += 1;
      }
    }
    System.out.println("\n" + str + "\n");

    System.out.println("Parsed Sentence: ");
    for (String i : WordArray) {
      System.out.print(i);
    }
    System.out.println("\n");

    System.out.println("Alphabetically Sorted: ");
    for (int i = 97; i < 123; i++ ) { //
      for (int a = 0; a < WordArray.length; a++) {
        if ((int)WordArray[a].charAt(4) == i || ((int)WordArray[a].charAt(4) + 32) == i) {
          System.out.println(WordArray[a].substring(4));
        }
      }
    }
  }
}
