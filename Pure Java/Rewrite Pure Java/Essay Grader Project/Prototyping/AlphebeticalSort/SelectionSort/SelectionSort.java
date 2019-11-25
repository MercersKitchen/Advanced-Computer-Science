public class SelectionSort {
  public static void main(String[] args) {
    //Input String and Verify
    //CAUTION: must include Try-Catch for null args[]
    System.out.println(""); //Space in Console
    String[] word = new String[args.length];
    for (int i=0; i<args.length; i++) { //Note: slowest array copy, change to faster method, see notes
      word[i] = args[i];
      word[i]=word[i].toLowerCase();
    }
    //String[] word = {"The", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog."}; //String[] word = new String[9]
    for (String element : word) {
      System.out.println(element);
    }

    //Alphebeticalize the sentence: Selection Sort
    System.out.println("\nBeginning Selection Sort");
    int indexRemaining = 0; //track the index of array remaining in the selection
    int compare = 0; //finding the largest negative number for Alphebetical Order
    int compareLargest = 0; //record of largest negative .compareTo() number, swapping character to the left
    int newIndexStem = 0; //Calculating new index value to select and swap, sorted array plus unsorted array
    String save; //3rd variable for swapping elements
    int compareNumber = 0; //Total number of Comparisons (to compare against other methods)
    for (int i=0; i<word.length; i++) {
      System.out.println("Inside First FOR, array read");
      indexRemaining = word.length-i; //Calculate remain index to save comparisons
      // Initialing or resetting comparison values
      newIndexStem = 0;
      compare = 0;
      compareLargest = 0;
      for (int j=1; j<indexRemaining; j++) {
        System.out.println("Inside Second FOR, reading remain array");
        compareNumber += 1;
        System.out.println("Compare " + word[i] + " and " + word[i+j]);
        if ( word[i+j].compareTo(word[i]) < 0) { //omits properly ordered and duplicate words
          compare = word[i+j].compareTo(word[i]);
          System.out.println("The value of this comparison is " + compare);
          if ( compareLargest > compare ) {
            System.out.println("This is the largest comparison so far: " + (compareLargest > compare) );
            compareLargest = compare;
            newIndexStem = j;
            System.out.println("Current Largest compare value: " + compareLargest + ", at position " + (i+newIndexStem) );
          }
        }
      }
      System.out.println("\nCreating partial sorted array");
      System.out.println("Current Largest compare value: " + compareLargest + ", at position " + (i+newIndexStem) );
      System.out.println("Current word is " + word[i]);
      save = word[i];
      System.out.println("Is being swapped by " + word[i+newIndexStem]);
      word[i] = word[i+newIndexStem];
      word[i+newIndexStem] = save;
      System.out.println("Result is word [" + i + "] is " + word[i]);
      System.out.println("And the swapped word position is " + (i+newIndexStem) + ", where the old word " + word[i+newIndexStem] + " is");
      System.out.println("\nCurrent Sorted and Unsorted Array is ...");
      for(String element : word){
        System.out.println(element);
      }
      System.out.println("\n");
    } //End Selection Sort

    System.out.println("\nFinal Array is");
        for(String element : word){
      System.out.println(element);
    }

    System.out.println("\nNumber of Total Comparions"); //not done yet
    System.out.println(compareNumber);

  } //End Driver
} //End SelectionSort Class
