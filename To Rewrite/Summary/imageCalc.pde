//float imageCalc(){}

/*
float imageCalc (float rectX, float rectY, float imageX, float imageY) {

  float scale_local, scaleX, scaleY;
  float imageWidthScaled, imageHeightScaled;
  float rectX_local = rectX, rectY_local = rectY;
  float imageX_local = imageX, imageY_local = imageY;
  //float scaleXtest, scaleYtest; // Currently not used from "Flat Program" ... old comment is //Will not exist until forced error for debugging loop uncommented
  float testScale, testScaleX, testScaleY;
  Boolean ScaleResize = false;

  println("Entry rectX: " + rectX);
  println("Entry rectY: " + rectY);
  println("Entry imageX: " + imageX);
  println("Entry imageY: " + imageY);
  println("Entry width: " + width);
  println("Entry height: " + height);

  //Scale: rect / image
  scaleX = rectX / imageX; //decimal value needs casting
  println ("ScaleX: " + scaleX);
  scaleY = rectY / imageY; //decimal value needs casting
  println ("ScaleY: " + scaleY);

  //Pick the smallest scale, always! See Truth Table
  if ( scaleX < scaleY ) {
    scale_local = scaleX;
  } else {
    scale_local = scaleY;
  }
  println ("Scale_local: " + scale_local);

  //Scale the image dimensions
  imageWidthScaled = imageX_local * scale_local;
  imageHeightScaled = imageY_local * scale_local;
  println ("Scaled Images: " + "\tScaled X: " + imageWidthScaled + "\tScaled Y: " + imageHeightScaled);
  println ("Rectangle Sizes: " + "\tScaled X: " + rectX + "\tScaled Y: " + rectY);

  //"Just in case" float memory holds wrong value
  //Adjustment LoopscaleX = scale_local;

  //for debugging the resizing loop, uncomment lines below as needed
  //imageWidthScaled = 601; //Manually entered for force an error
  //imageHeightScaled = 373.0;
  //scaleXtest = scale_local;
  //scaleYtest = scale_local;

  println("Before the Adjustment Loop");

  if (imageWidthScaled > rectX_local | imageHeightScaled > rectY_local) {
    println("Just inside the Adjustment Loop");
    while ( imageWidthScaled > rectX_local | imageHeightScaled > rectY_local ) {
      println("While " + "\t\t" + imageWidthScaled + "\t\t" + imageHeightScaled);
      if (imageWidthScaled <= rectX_local) { 
        println("ScaleX has not been changed by imageWidthScaled else-statement");
        println("ScaleX doesn't change in the if-statement");
      } else {
        float i = 1.000;
        while (imageWidthScaled > rectX_local) {
          //scaleXtest = scaleXtest * i;
          i = i - 0.005;
          imageWidthScaled = imageWidthScaled * i;
          println("imageWidth is in the else part of the loop \n" + "i is: " + i + "\timageWidthScaled is: " + imageWidthScaled);
        }
        println("New values from imageWidthScaled are: " + imageWidthScaled + "\t\t" + i);
        println(width, height);
        println(scaleX, i);
        scaleX = scaleX * i;
        println("New scaleX from X-else WHILE is: " + scaleX);
      }
      println("Outisde x-if-else statement");
      if (imageHeightScaled <= rectY_local) {
        println("ScaleY has not been changed by imageHeightScaled else-statement");
        println("ScaleY doesn't change in the if-statement");
      } else {
        float i = 1.000;
        while (imageHeightScaled > rectY_local) {
          i = i - 0.005;
          imageHeightScaled = imageHeightScaled * i;

          println("imageHeight is in the else part of the loop \n" + "i is: " + i + "\timageHeightScaled is: " + imageHeightScaled);
        }
        println("New values from imageHeightScaled are: " + imageHeightScaled + "\t" + i);
        println(width, height);
        println(scaleY, i);
        scaleY = scaleY * i;
        println("New scaleY from Y-else WHILE is: " + scaleY);
      }
      println("Outside y-if-else statement");
    }
    testScaleX = abs(scale_local - scaleX); // Adjusting the scale_local ISIDE the loop
    if (testScaleX != 0) {
      ScaleResize = true;
    }
    testScaleY = abs(scale_local - scaleY);
    if (testScaleY != 0) {
      ScaleResize = true;
    }
    if ( ScaleResize == true) {
      testScale = abs(scaleX - scaleY);
      scale_local = scale_local - testScale;
    }
    println("scaleX & scaleY Values INSIDE Loop are: " + scaleX, scaleY);
    println("scale_local - testScale INSIDE Loop is: " + scale_local);
  } else {

    //This else statement might fail
    //Might need to fix this

    println("In ELSE of Adjustment Loop");
    testScaleX = abs(scale_local - scaleX); // Adjusting the scale_local OUTSIDE the loop
    if (testScaleX != 0) {
      ScaleResize = true;
    }
    testScaleY = abs(scale_local - scaleY);
    if (testScaleY != 0) {
      ScaleResize = true;
    }
    if ( ScaleResize == true) {
      testScale = abs(scaleX - scaleY);
      scale_local = scale_local - testScale;
    }
  }

  return scale_local; //From before Scale_Local Loop Adjustement or from the Adjust
}
*/