class BlueSquare extends Square {

  //Calls the Constructor of the Square Class (and thus Rectangle)
  BlueSquare(float x, float y, float length) {
    super(x, y, length);
  }

  void draw() {
    fill(0, 0, 255); //Blue Colour
    rect(x, y, width, height);
  } // End of Blue Square void draw ()
}