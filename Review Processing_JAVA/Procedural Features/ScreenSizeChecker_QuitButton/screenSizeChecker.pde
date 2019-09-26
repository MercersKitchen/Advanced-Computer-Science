void screenSizeChecker() {

  String fullSize = "DisplayWidth= " + width + "; DisplayHeight= " + height;
  //Concatenated String
  println (fullSize);

  if (width < 350) { //Width checker, displayWidth < 350
    println("ERROR: This program will not work on this display, the width is too small.");
  }

  float checker = height / width; //Ratio for overall layout quality
  //displayWidth / displayHeight

  if (checker < 1.4) {//Height Checker
    println("ERROR: This program will not work on this display, the height is too small.");
      exit();
  }
}
