class BlueSquare extends Square {
  BlueSquare (float x, float y, float length) {
    super (x, y, length);
  }
  
  void draw () {
    fill(0, 0, 255);
    rect (x, y, width, height);
  }
}