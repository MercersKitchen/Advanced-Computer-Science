class ScoreBoard () {
  
  //Printing to Console
  
  //Printing to Screen
}

void score () {
  //Printing Score to the Canvas and resetting game
  
  //Ball Movement within Pong Table after scoring
  if (ballX == 0+(ballDiameter/2) || ballX == width-(ballDiameter/2)) { //Score for Player 2, note the index
    if (ballX == 0+(ballDiameter/2)) { //Player 2 Score
      score[1] += 1;
    }
    if (ballX == width-(ballDiameter/2)) { //Player 1 Score
      score[0] += 1;
    }
    
    //Resetting the Ball Position
    ballX = ballStartX;
    ballY = ballStartY;
    
    //Randomizing the initial ball movement in four directions, commented out as an intentional mistake
    ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveX == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    } //will set the beginning of the draw loop
    ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveY == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    }
    
    //Resetting the ARROW Controlled Paddle to the center
    player[1] = height/2 - height/paddleHeightRatio/2;
    
    //Old Debugging Code
    //println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    //println("Middle: " + player[1]);
  }

  textSize(0.1*width);
  text("Player 1:\n" + score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
}
