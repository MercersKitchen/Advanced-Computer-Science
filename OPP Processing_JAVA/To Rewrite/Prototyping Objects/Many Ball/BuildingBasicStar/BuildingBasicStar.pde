private Boolean start = false;
private Star stars = new Star(250, 250, 25);

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {
    
    background(0);

    ellipse(stars.getX(), stars.getY(), stars.getRadius(), stars.getRadius());
    
  } //End of startStop
} //End draw()
