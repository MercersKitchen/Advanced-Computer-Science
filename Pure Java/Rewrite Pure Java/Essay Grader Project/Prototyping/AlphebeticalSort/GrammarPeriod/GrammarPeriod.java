public class GrammarPeriod {
  public static void main(String[] args) {
    //Input String and verify
    System.out.println("\nText Input");
    //Two sentences exactly the same.
    String[] word = {"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog.", "The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog."};
    String[] test = {"A", "Z", "a", "z"};
    String[] memory = word.clone();
    System.out.println("\nInitial Array is");
    for (String element : word) {
      System.out.println(element);
    }
    System.out.println("\nInitial Array is ... in lower case.");
    for(int i=0; i<word.length; i++){
      word[i] = word[i].toLowerCase();
      System.out.println(word[i]);
    }
    System.out.println("\n");

    // Removing Periods and Checking Grammar, punctuation of sentences
    System.out.println("Checking Period & Capitalization Rule, then removing periods for testing vocabulary words");
    int periodAt = -1; //Compiler needs variable, finds location of "period" within element
    int indexPlusOne; //Compiler needs variable
    for (int i=0; i<word.length; i++) {
      indexPlusOne = i + 1;
      System.out.println("Starting Period Search at element " + i);
      if (word[i].indexOf(".") >= 0) {
        System.out.println("Inside search for period");
        //Removal of period happens after checking to see if it is appropraitely used
        //Grammer Check: could be cascading IF or AND
        if (indexPlusOne<word.length && memory[i+1].compareTo(test[1])<=0 && memory[i+1].compareTo(test[1])>=-26) {
          System.out.println("Inside middle period removal " + memory[i+1].compareTo(test[1]));
          System.out.println("Period and next capital used correctly at " + i);
        }
        /*Exemplar Cascading IF behaves the same as above AND
        if (indexPlusOne<word.length) {
          System.out.println("Inside middle periods");
          if (test[1].compareTo(word[i+1])<=0) {
            if (test[1].compareTo(word[i+1])>=-26) {
              System.out.println("Period and next capital used correctly at " + i);
            }
          }
        }
        */
        if (indexPlusOne == word.length && test[1].compareTo(memory[i])<=0 && test[1].compareTo(memory[i])>=-26) {
          System.out.println("Inside ending period removal");
          System.out.println("Last Period, correctly used " + i);
        /*Exemplar Cascading IF behaves the same as above AND
        if ( indexPlusOne == word.length) {
          System.out.println("Inside Ending Period");
          if (test[1].compareTo(word[i])<=0) {
            if (test[1].compareTo(word[i])>=-26) {
              System.out.println("Last Period, correctly used " + i);
            }
          }
        }
        */
      }
      System.out.println("Removing period at element " + i);
      periodAt = word[i].indexOf(".");
      word[i] = word[i].substring(0, periodAt); // will fail if periodAt is not changed
    }
  }
  System.out.println("\nInitial Array is");
  for (String element : memory) {
    System.out.println(element);
  }

  System.out.println("\nFinal Array is");
  for (String element : word) {
    System.out.println(element);
  }

  } //End Driver

} //End Class Driver
