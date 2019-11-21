import java.util.Scanner;
public class core {

	/**
	 * print shorthand
	 */
  public static void print(String statement) {
    System.out.println(statement);
  }
	/**
	 * users input
	 *
	 * @param String-label the label
	 *
	 * @return returns the users inputed text
	 */
  public static String input(String label) { System.out.printf(label + ": ");
    Scanner s = new Scanner(System.in);
    return s.nextLine();
  }
}
