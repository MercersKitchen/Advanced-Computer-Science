public class CompareTo {
  public static void main (String[] args)
  {
    String word1 = "alpha";
    String word2 = "beta";
    String word3 = "charlie";
    String word4 = "delta";
    String word5 = "zzzulu";
    String word6 = "zzzebra";
    //
    System.out.println("abcdefghijklmnopqrstuvwxyz");
    System.out.println("12345678901234567890123456");
    System.out.println("\nWord 5 is: " + word5 + "\tWord 6 is: " + word6);
    System.out.println(word5.compareTo(word6));
    System.out.println("");
    //
    int i=0;
    while(i<7) { //Will not work, no array, BUT what will happen
      System.out.println("\nWord is: " + wordi + "\tWord is: " + wordi);
      System.out.println(wordi.compareTo(wordi));
      i++;
    }
  }
}
