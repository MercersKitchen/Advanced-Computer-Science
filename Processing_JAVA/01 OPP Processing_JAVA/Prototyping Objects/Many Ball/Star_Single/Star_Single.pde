private Boolean start = false;
private Star[] stars = new Star[Star.starCount]; //only varaibles is how many stars to draw

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
  
  //Need drawing of ball before mouseClick(), two lines of the same code
  createStars();
  
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {
    
    background(0);
    
    //Notice the array-code for drawing one
    ellipse(stars[1-Star.starCount].getX(), stars[1-Star.starCount].getY(), stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getRadius());
    //println ("Pong Ball Coordinates", stars[1-Star.starCount].getX(), stars[1-Star.starCount].getY(), stars[1-Star.starCount].getRadius());
    
  } //End of startStop
} //End draw()

public void mouseClicked() {
  createStars();
} //End of mouseClicked()
