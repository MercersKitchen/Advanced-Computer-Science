class RedSquare extends Square {

  //Calls the Constructor of the Square Class (and thus Rectangle)
  RedSquare(float x, float y, float length) {
    super(x, y, length);
  }

  void draw() {
    fill(255, 0, 0); // Red Square
    rect(x, y, width, height);
  } // End of Blue Square void draw ()
}