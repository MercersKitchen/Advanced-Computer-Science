public class ExchangeSort {
  public static void main(String[] args) {
    //Input String and Verify
    //CAUTION: must include Try-Catch for null args[]
    System.out.println(""); //Space in Console
    String[] word = new String[args.length];
    for (int i=0; i<args.length; i++) { //Note: slowest array copy, change to faster method, see notes
      word[i] = args[i];
      word[0]=word[0].toLowerCase();
    }
    //String[] word = {"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog."}; //String[] word = new String[9]
    for (String element : word) {
      System.out.println(element);
    }

    //Alphebeticalize the sentence: Exchange or Bubble
    Boolean stop = false; //While Loop exit
    int whileNumber = 0; //Counting times through entire Array
    int compare; //integer to compare Alphebetical Difference
    int compareNumber = 0; //count number of comparisons
    int stopCount = 0; //Counting number of TRUE LessThan Comparisons, >0 means redo WHILE, >0 keeps stop at false
    String save; //for transfering 2 side by side numbers
    while (stop == false) {
      System.out.println("\n\n\nBeginning WHILE\n\n\n");
      whileNumber += 1;
      for (int i=0; i<word.length-1; i++) {
        System.out.println("\nNew Comparision");
        System.out.println(i);
        System.out.println(word[i]);
        System.out.println(word[i+1]);
        compare = word[i+1].compareTo(word[i]);
        compareNumber += 1;
        System.out.println(compare);
        if (word[i+1].equals(word[i])) {} else { //Empty IF, duplicate comparison
          if ( compare < 0 ) {
            stopCount += 1;
            save = word[i+1];
            word[i+1] = word[i];
            word[i] = save;
          }
          System.out.println(word[i]);
          System.out.println(word[i+1]);
          System.out.println(stopCount);
          System.out.println("End");
        } //End EMPTY IF
      } //End FOR
      if (stopCount == 0) {
        stop = true;
      } else {
        stopCount = 0;
      }
    } //End WHILE

    System.out.println("\nSorted Array");
    for (String element : word) {
      System.out.println(element);
    }
    System.out.println("\nNumber of While Loops through whole array");
    System.out.println(whileNumber);
    System.out.println("\nNumber of Total Comparions"); //not done yet
    System.out.println(compareNumber);

  } //End Driver
} //End Class
