class Square extends Rectangle {

  //Calls the Constructor of the Square Class (and thus Rectangle)
  Square(float x, float y, float length) {
    super(x, y, length, length);
    // Notice, this super is a rect() and this class-extended lacks a void draw ()
    /*Java and Processing use the most specific function they can find, 
     which is why the RedSquare and BlueSquare draw() functions are called for those instances, 
     even though the variables only know they hold Rectangle values.
     */
  }

  //This will print although the values belong to the Rectangle-Class
  //The Class-Square is a Class-Rectangle
  void printMe() {
    println("X: " + x);
    println("Y: " + y);
    println("Width: " + width);
    println("Height: " + height);
  }
}