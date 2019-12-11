public class CompareTo {

  //Global Varaibles
  public static String[] word = new String[7];

  public static void main (String[] args)
  {
    //This will simulate a sentence already parsed into single words
    word[0] = "alpha";
    word[1] = "beta";
    word[2] = "charlie";
    word[3] = "delta";
    word[4] = "zzzulu";
    word[5] = "zzzebra";
    //Introduction to Chatbot, is one of the words Hello?
    word[6]="Hello";
    //
    System.out.println("abcdefghijklmnopqrstuvwxyz");
    System.out.println("12345678901234567890123456");
    System.out.println("\nWord 5 is: " + word[4] + "\tWord 6 is: " + word[5]);
    System.out.println(word[4].compareTo(word[5]));
    System.out.println("");
    //
    int i=5;
    while(i>0) { //Will not work, no array, BUT what will happen
      System.out.println("\nWord is: " + word[i] + "\tWord is: " + word[i-1]);
      System.out.println(word[i].compareTo(word[i-1]));
      i--;
    }
    //Chatbot Key Word
    System.out.println( "Did I say hello? " + word[6].equals("Hello")  );
    //
    i=0;
    while(i<7) { //Will not work, no array, BUT what will happen
      System.out.println("\nWord is: " + word[i] + "\tWord is: Hello");
      System.out.println(word[i].equals("Hello"));
      i++;
    }
  }
}
