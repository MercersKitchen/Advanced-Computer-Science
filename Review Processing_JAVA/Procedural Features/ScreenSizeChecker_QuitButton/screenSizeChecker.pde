void screenSizeChecker() {

  String fullSize = "DisplayWidth= " + width + "; Height= " + height;
  //Concatenated String

  println (fullSize);

  if (displayWidth < 500) { //Width checker
    println("ERROR: This program will not work on this display, the width is too small.");
  }

  float checker = displayWidth / displayHeight;

  if (checker < 0.7) {//Height Checker
    println("ERROR: This program will not work on this display, the height is too small.");
      exit();
  }
}
