public class JavaDocExample { //AddNum

  public int addNum (int numA, int numB) {
    return numA + numB;
  }

  public static void main(String args[]) {
    JavaDocExample obj = new JavaDocExample();
    int sum = obj.addNum(10, 20);
    System.out.println("Sum of 10 and 20 is: " + sum);
  }
  
}
