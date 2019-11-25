public class Start {
  public static void main(String[] args) {
    //Input String and Verify
    String[] word = {"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog."}; //String[] word = new String[9]
    for (String element : word) {
      System.out.println(element);
    }
    //Starter Code to Solve Issues from ReadMe File
    System.out.println(word[0] + "\t" + word[1]);
    word[0]=word[0].toLowerCase();
    System.out.println(word[1].compareTo(word[0])); //Debugging Line
    //Duplicate words? Use an IF to omit the comparsion
    //Functions to use:
    System.out.println(word[0] + " " + word[6]);
    System.out.println(word[0] == word[6]); //correct order, returns false since comparing memory location
    System.out.println(word[6].equals(word[0])); //correct order, returns true since comparing characters
  }
}
