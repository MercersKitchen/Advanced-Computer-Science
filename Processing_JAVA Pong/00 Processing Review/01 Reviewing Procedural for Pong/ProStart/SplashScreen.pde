String startInstructions = "Click the Canvas & Press the Space Bar to start";

void splashScreen () {
  //rect (0, height*1/2-height*1/20, width-1, height*1/10);
  background(0);
  textDraw(startInstructions, quitFont, height, 255, CENTER, CENTER, 0, height*1/2-height*1/20, width-1, height*1/10);
}
