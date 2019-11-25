import java.util.*; //Imports Scanner and other needed items

public class QuadraticFormula_Ex {

  private int divisor (int numA) {
    return 2*numA;
  }

  private int discriminate (int numA, int numB, int numC) {
    return numB*numB-4*numA*numC;
  }

  private int negativeB (int numB) {
    return -1*numB;
  }

  public static void main (String[] args)
  throws NumberFormatException
  {
    //Welcome Text
    System.out.println("Welcome to the Quadratic Analyzer!\n" +
                       "We use the form ax^2 + bx + c = 0\n");

    //Input from Scanner
    Scanner input = new Scanner ( System.in);
    System.out.println("Type a quadratic a-value");
    String stringA = input.nextLine();
    stringA = stringA.trim();
    int numA = -999999999; //Rare value overwritten by users
    //Checked to see if user-input is correct
    //Need to assign variable before Try-Catch

    //Will throw exception, need try-catch
    try {
      numA = Integer.parseInt(stringA);
    }
    catch (NumberFormatException eA1) {
      System.out.println("Please only type a number.");
      stringA = input.nextLine();
      stringA = stringA.trim();
      try{
        numA = Integer.parseInt(stringA);
      }
      catch (NumberFormatException eA2) {
        System.out.println("You have typed letters again, " +
                          "please restart the program and try again.");
        System.exit(1);
      }
    }

    System.out.println("Type a quadratic b-value");
    String stringB = input.nextLine();
    stringB = stringB.trim();
    int numB = -999999999; //Rare value overwritten by users
    //Checked to see if user-input is correct
    //Need to assign variable before Try-Catch

    //Will throw exception, need try-catch
    try {
      numB = Integer.parseInt(stringB);
    }
    catch (NumberFormatException eB1) {
      System.out.println("Please only type a number.");
      stringB = input.nextLine();
      stringB = stringB.trim();
      try{
        numB = Integer.parseInt(stringB);
      }
      catch (NumberFormatException eB2) {
        System.out.println("You have typed letters again, " +
                          "please restart the program and try again.");
        System.exit(1);
      }
    }

    System.out.println("Type a quadratic c-value");
    String stringC = input.nextLine();
    stringC = stringC.trim();
    int numC = -999999999; //Rare value overwritten by users
    //Checked to see if user-input is correct
    //Need to assign variable before Try-Catch;

    //Will throw exception, need try-catch
    try {
      numC = Integer.parseInt(stringC);
    }
    catch (NumberFormatException eC1) {
      System.out.println("Please only type a number.");
      stringC = input.nextLine();
      stringC = stringC.trim();
      try{
        numC = Integer.parseInt(stringC);
      }
      catch (NumberFormatException eC2) {
        System.out.println("You have typed letters again, " +
                          "please restart the program and try again.");
        System.exit(1);
      }
    }

    //Check to see if user-input works
    if(numA == -999999999 | numB == -999999999 | numC == -999999999) {
      System.out.println("Check the userinput, " +
                         "numS not being overwritten.");
      System.exit(0);
    }

    //CAUTION: copy and pasting code is not good programming
    //Fix this

    //Parts of Quadratic Formula
    QuadraticFormula_Ex obj = new QuadraticFormula_Ex(); //Accesses class variables
    int bottom = obj.divisor(numA);
    int dis = obj.discriminate(numA, numB, numC);
    int negB = obj.negativeB(numB);
    double sqroot = Math.sqrt(dis);

    //Catch a linear funtion with division by zero through "2a"
    //Also give feedback that the quadratic is valid
    if ( Math.abs(bottom) == 0 ) {
      System.out.println("\nThis is not a valid quadratic since a is " + numA + "\n" +
                         "Try another A-Value that is not zero");
      System.out.println("It looks like you entered a linear equation.\n" +
                         "Please check your numbers before using this program.");
      System.exit(0);
    } else {
      System.out.println ("\nYou have entered a valid quadratic.\n");
    }

    //Catch the type and number of roots using the discriminate
    //Options are complex root (NaN), 1-root, 2-roots
    //NaN: Not a Number, not a "Real Number"
    //Output what the value of the discriminate is
    if (dis < 0) { //Is dis less than zero
      if (Double.isNaN(sqroot)) { //also check the square root
        System.out.println("Taking the square root of the discriminate \n" +
                           "will result in a complex root.");
        }
      System.out.println("The discriminate equals: " + dis + "\n" +
                         "Try another quadratic.");
      System.exit(1); //
    } else if (Math.abs(dis) == 0) {
      System.out.println("The discriminate equals: " + dis +
                         "\nThus, one root is estimated.");
    } else {
      System.out.println("The discriminate equals: " + dis +
                         "\nThus, two roots are estimated.");
    }

    //Calculate the roots using the entire quadratic Formula
    if (Math.abs(dis) == 0) {
      System.out.println("The single root is equal to: " +
                         (negB + sqroot) / bottom);
    } else if (dis > 0) {
      System.out.println("The first root is equal to: " +
                         (negB + sqroot) / bottom);
      System.out.println("The second root is equal to: " +
                         (negB - sqroot) / bottom);
    } else {
      System.out.println("Thank-you for using the Quadratic Analyser.\n" +
                         "Try again soon.");
      System.exit(0);
    }

    //End the program with a saluation
    System.out.println("Thank-you for using the Quadratic Analyser.\n" +
                       "Try again soon.");

    }
  }
