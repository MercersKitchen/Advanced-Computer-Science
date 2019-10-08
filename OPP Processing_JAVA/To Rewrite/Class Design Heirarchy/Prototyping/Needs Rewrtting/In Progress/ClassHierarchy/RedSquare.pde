class RedSquare extends Square {
  RedSquare (float x, float y, float length) {
    super (x, y, length);
  }
  
  void draw () {
    fill(255, 0, 0);
    rect (x, y, width, height);
  }
}