public class StringFunctions {

  static String alphebet = "   The quick brown fox jumps over the lazy dog.   ";
  static String noSpaces = "Mercer's Kitchen";

  public static void main(String[] args)
  {

    System.out.println("\nThe string we are starting with is");
    System.out.println(alphebet);
    //
    System.out.println("\nTrimming the spaces is like this");
    System.out.println(alphebet.trim());
    //
    System.out.println("\nMaking the output Uppercase or LowerCase is like this (notice the spaces are back)");
    System.out.println(alphebet.toUpperCase());
    System.out.println(alphebet.toLowerCase());
    //
    System.out.println("\nAlphebet's total characters is " + alphebet.length());
    System.out.println("Why does the alphebet have so many characters?\n");
    //
    System.out.println("\nLet's visualize counting a different string");
    System.out.println(noSpaces);
    for (int i=1; i<=noSpaces.length(); i++) {
      if (i>9) {
        System.out.print(i-10);
      } else {
        System.out.print(i);
      }
    }

    System.out.println("\n");
    System.out.println("Here are some additional string fucntions to use.");
    //
    System.out.println("String length: " + noSpaces.length());
    System.out.println("Text after position 1: " + noSpaces.substring(1));
    System.out.println("Text after position 9: " + noSpaces.substring(9));
    System.out.println("Which substring is between position 3 & 6: " + noSpaces.substring(3, 6));
    System.out.println("What position does ' happen after: " + noSpaces.indexOf("'")); // key = '
    System.out.println("Is this the string? " + noSpaces.equals("Mercer's Kitchen")); // key = Mercer's Kitchen
    System.out.println("What is returned when a key is not present: " + noSpaces.indexOf("here")); // key = here

    //( key )


  }
}
