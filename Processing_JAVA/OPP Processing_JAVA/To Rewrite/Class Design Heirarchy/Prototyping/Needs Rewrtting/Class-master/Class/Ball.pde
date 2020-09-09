 class Ball {
  float radius;
  float x;
  float y;
  color c;
 float xSpeed;
 float ySpeed;
  
 Ball (float x, float y, color myColor){
    this.x = x;
    this.y = y;
    c = myColor;
    xSpeed=3.0;
    ySpeed=5.0;
    radius = 25; //Radius is also shared with all Balls 
  }// End of Constructor
  
  void EdgeDetection() {
    
      //Ensuring Ball does not leave the screen
  if(x+xSpeed < 0 || myBall.x+ySpeed > width){
  xSpeed *= -1;
  }
  if(y+ySpeed < 0 || myBall.y+ySpeed > height) {
    ySpeed *= -1;
  }
  
   x += xSpeed;
   y += ySpeed;
  }//end of Edge detection
  
  void ClassDraw () {
     fill(c); //Fills the ball with a colour
  ellipse(x, y, radius, radius); //Shape for myBall
  }// end of ClassDraw
  
} //End of Class Ball