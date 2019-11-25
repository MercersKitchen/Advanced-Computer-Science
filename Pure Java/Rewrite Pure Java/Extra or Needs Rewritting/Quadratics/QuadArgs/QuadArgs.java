public class QuadArgs {

  //Create parts of formula, private for security
  private int divisor (int numA){ //Will only be integer
    return 2*numA;
  }

  private int discriminate (int numA, int numB, int numC) {
    return numB*numB - 4*numA*numC;
  }

  private int negativeB (int numB) {
    return -1*numB;
  }

  private double addTop (int negB, double sqroot){
    return negB + sqroot;
  }

  private double subtractTop (int negB, double sqroot) {
    return negB - sqroot;
  }

  public static void main (String[] args) {
    //Initialize and Declare apart from assignment to manage input
    String stringA;
    String stringB;
    String stringC;

    //Transfering args to stringA-C
    stringA = args[0];
    stringB = args[1];
    stringC = args[2];

    //String to int, might throw number format here, test with IO
    int numA = Integer.parseInt(stringA); //Will only be integer
    int numB = Integer.parseInt(stringB); //Will only be integer
    int numC = Integer.parseInt(stringC); //Will only be integer

    //Using the parts of the formula above, for safety
    QuadArgs obj = new QuadArgs();

    //Getting parts of formula
    int bottom = obj.divisor(numA);
    int dis = obj.discriminate(numA, numB, numC);
    int negB = obj.negativeB(numB);
    double sqroot = Math.sqrt(dis); //Will need to Catch NaN Here

    System.out.println("Welcome to the Quadratic Analyzer!\n");

    //Catch a linear function with division by zero possibilty
    if (Math.abs(bottom) == 0) { //Possible for computer to put negative on zero value
      System.out.println("This is not a valid quadratic since a is " + numA + ".\n" +
                         "Try another quadratic with a not equal to zero.");
     System.exit(0);
    } else {
      System.out.println("You have entered a valid quadratic.\n");
    }

    //Catch the number and types of roots
    if (dis < 0) {
      if (Double.isNaN(sqroot)) {
        System.out.println("Taking the Square Root of the discriminate \n" +
                           "will result in a complex root.");
      }
      System.out.println("The discriminate equals " + dis + ".\n" +
                         "Try another quadratic.");
      System.exit(0);
    } else if (Math.abs(dis) == 0) { //Possible for computer to put negative on zero value
      System.out.println("The discriminate equals " + dis +".\n" +
                         "Thus, one root is estimated.\n");
    } else {
      System.out.println("The discriminate equals " + dis +".\n" +
                         "Thus, two roots are estimated.\n");
    }

    //Calculating the roots using valid parts of the Quadratic Equation
    if (Math.abs(dis) == 0) { //Possible for computer to put negative on zero value
      System.out.println("The single root is equal to " +
                         (negB + sqroot) / bottom);
    } else if (dis > 0) {
      System.out.println("The first root is " + (negB + sqroot) / bottom +".\n" +
                         "The second root is " + (negB - sqroot) / bottom +".\n");
    } else {
      System.out.println("Thank-you for using the Quadratic Analyzer.\n" +
                         "Try again soon.");
      System.exit(0);
    }

    //Saluation
    System.out.println("Thank-you for using the Quadratic Analyzer.\n" +
                       "Try again soon.");
    System.exit(0);

  }
}
//Need args Exception
//Need Number Format Exception from String to Integer
//Need to catch NaN
//if (Double.isNaN(doubleValue)) {}
//if checking the divide by zero, use Math.abs(divisor) == 0.0
