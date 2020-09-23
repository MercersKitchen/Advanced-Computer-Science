class WhiteSquare extends Square {
  WhiteSquare (float x, float y, float length) {
    super (x, y, length);
  }
  
  void draw () {
    fill(255);
    rect (x, y, width, height);
  }
}