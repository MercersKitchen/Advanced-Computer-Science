public class InsertionSort {
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

    //Alphebeticalize the sentence: Insertion Sort
    System.out.println("\nBeginning Insertion Sort");
    System.out.println("\nBeginning Insertion Sort");
    int compareNumber = 0; //Total number of Comparisons (to compare against other methods)
    int compareUnsorted = 0; //Finding if marker should be at the end of the sorted array
    String lowerPosition;
    int lowerPositionIndex = 0;
    String upperPosition;
    int upperPositionIndex = 0;
    int j=0; //index for WHILE Loop
    int compareSorted = 0;
    String save; //Rewriting Array in sorted positions, placeholder
    String save2; //Rewriting Array in sorted positions, placeholder
    for (int i=1; i<word.length; i++) { //marker between sorted and unsorted arrays, index 1 or second element
      System.out.println("Beginning at Sorted-Unsorted Marker");
      System.out.println("Index is " + i);
      System.out.println("Compare " + word[i-1] + " and " + word[i]);
      compareUnsorted = word[i].compareTo(word[i-1]);
      compareNumber++;
      System.out.println("Compare value is " + compareUnsorted);
      if (compareUnsorted < 0) { //omits duplicate words and correct ordered words
        System.out.println("Need to swap words at marker");
        upperPosition = word[i];
        upperPositionIndex = i;
        lowerPosition = word[i-1];
        lowerPositionIndex = i-1;
        System.out.println("Upper Word is " + upperPosition + " at position " + upperPositionIndex);
        System.out.println("Lower Word is " + lowerPosition + " at position " + lowerPositionIndex);
        j = i-2;
        while (j>=0) { //Sorted Comparisons
          System.out.println("Inside sorted-array comparisons");
          System.out.println("Compare " + word[j] + " and " + word[i]);
          compareSorted = word[i].compareTo(word[j]);
          compareNumber++;
          System.out.println("Compare Sorted is " + compareSorted);
          if (compareSorted > 0) {
            j = 0;
          } else {
            if (compareSorted < 0) {
              lowerPosition = word[j];
              lowerPositionIndex = j;
              System.out.println("New Lower Word is " + lowerPosition + " at position " + lowerPositionIndex);
            }
          }
          j-=1;
        } //Sorted Comparison WHILE
        System.out.println("Finished sorted-array comparison");
        word[lowerPositionIndex] = upperPosition;
        save = lowerPosition;
        for (int k=lowerPositionIndex; k<upperPositionIndex; k++) {
          System.out.println("Inside sorted array rewrite");
          save2 = word[k+1];
          word[k+1] = save;
          save = save2;
        }
        System.out.println("Resulting Array is now ...");
        for (String element : word) {
          System.out.println(element);
        }
      } //Unsorted IF
    } //Full Array Comparison
    //End Insertion Sort
    System.out.println("\nFinal Array is");
    for (String element : word) {
      System.out.println(element);
    }
    System.out.println("\nNumber of Total Comparions"); //not done yet
    System.out.println(compareNumber);
  } //End Driver
} //End InsertionSort Class
