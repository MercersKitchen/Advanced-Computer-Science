public class AlphebeticalSearch {
  public static void main(String[] args) {
    //Input String and Verify
    //String[] word = new String[9]
    String[] word = {"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog."};
    for (int i=0; i<word.length; i++) {
      System.out.println(word[i]); //Debugging Line
    }
    //Compare two words:
    //  - issue with symbols between Capitals and lower Case
    //  - issue with reading .compateTo()
    //  - issue with Unicode Table (country and keyboard use)
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

/* Future Concepts
FOR-EACH Loop
Assignment: Alphebeticalize the sentence, use exchange sort, then other sorts
- using problem and inital code
Assignment: compare sorted sentence to voabulary words using binary search vs. linear search
- One behaviour from Essay Grader Case Study
Future Thoughts
- more than one sentence?
*/
