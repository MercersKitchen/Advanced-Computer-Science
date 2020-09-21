void createStars() {
  for (int i=0; i<stars.length; i++) {
    float diameterRandom = random(width*1/150, width*1/30);
    float xRandom = random(diameterRandom*1/2, width-diameterRandom*1/2);
    float yRandom = random(diameterRandom*1/2, height-diameterRandom*1/2);
    stars[i] = new Star(xRandom, yRandom, diameterRandom);
    //Note: use local variables instead of investigating 
    //Execution order of constructor parameters
    //Note: diameter must be chosen first
  }//End FOR
}//End createStars()
