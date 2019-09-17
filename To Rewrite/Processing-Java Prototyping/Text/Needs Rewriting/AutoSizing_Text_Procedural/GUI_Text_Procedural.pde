void GUI_Setup () {
  //Title Rectangle
  /*
  println("Starting of Console"); // If you cannot see this, then find another way to see the list on the program 
  printArray(fontList); // for listing all possible fonts to choose from, then createFont
  */
  
  titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont
  rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); 
  textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
  textAlign (CENTER);

  // Passing needed measures to Calculator
  fontFit = fontCalculator (title, displayWidth*1/2, displayHeight*1/10); 

  println(fontFit);
  textSize (fontFit);
  fill (0); //Black Ink
  text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); 
  fill (255);

  //Another Rectangle, to view remove multi-line comment
  //Bottom Rectangle

  rect (displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10); 
  textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
  textAlign (CENTER, CENTER); //Horizontal and Vertical CENTER'ing

  // Passing needed measures to Calculator
  fontFit = fontCalculator (endCopy, displayWidth*1/4, displayHeight*1/10); // 2nd parameter is different

  println(fontFit);
  textSize (fontFit);
  fill (0); //Black Ink
  text(endCopy, displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10); 
  fill (255);
}
