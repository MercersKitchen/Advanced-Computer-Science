class Ball {
  float x;
  float y;
  color c;
  float radius;
  float xSpeed;
  float ySpeed;
  
  Ball (float x, float y){ //Constructor for Ball
    this.x = x; //Unique x coordinate
    this.y = y; //Unique y coordinate
    c = color(0, 255, 255); //Colour is shared with all Balls
    xSpeed = 3.0; 
    ySpeed = 5.0; 
    radius = 25; //Radius is also shared with all Balls
    
  } // End of Constructor
  
  void EdgeDetection () {
    
    // Ensuring Ball does not leave the screen
    if (x+xSpeed < 0 || x+xSpeed > width){
      xSpeed *= -1;
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
    ySpeed *= -1;
    }
    
    x += xSpeed;
    y += ySpeed;
  } // End of Edge Detection
  
  void ClassDraw () {
    fill(c); //Fills the ball with a colour
    ellipse(x, y, radius, radius); //Shape for myBall
  }
  
} //End of Class Ball
