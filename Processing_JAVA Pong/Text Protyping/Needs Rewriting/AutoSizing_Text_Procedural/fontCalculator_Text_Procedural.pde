//Example Calculator instead of copy and paste
float fontCalculator (String text, float rectLength, float textHeight) {

  textSize (textHeight); // for textWidth() calc
  float textHeight_local = textHeight;
  //creates memory location for the new textHeight_local, separating values that are same to different places, needed

  for (float i=1; textWidth(text) > rectLength; i = i - 0.01) {
    textHeight_local = textHeight_local*i;
    textSize (textHeight_local);
  }

  return textHeight_local;
}
