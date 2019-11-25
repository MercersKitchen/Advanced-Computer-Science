public class NumberFormat
   {
   public static void main( String[] args )
      {
      double myNumber1 = 4567543.03421;
      double myNumber2 = 3.14159;
      
      System.out.println( "Without formatting, my numbers are: " 
                          + myNumber1 + ", " + myNumber2 + "\n");
           
      System.out.println( "Now with formatting..." );

      // create a CORRECTLY formatted String    
      String s = String.format( "My numbers are %.3f and %.4f...NICE!!", myNumber1, myNumber2 ); 

      // now print the "formatted" String
      System.out.println( s );  

      } // end main    
   } // end class NumberFormat
