class Firework {
  // Object Variables for Abstract Object ("any object")
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;

  // Constructor - Populates Single Object Variables
  Firework (float xPosition, float yPosition, color colour) {
    this.x = xPosition;
    this.y = yPosition;
    c = colour; //Notice when THIS is missing
    diameter = 25.0;
    xSpeed = 3.0;
    ySpeed = 5.0;
  }

  // Edge Detection
  void edgeDetection() {
    if (x+xSpeed-diameter/2 < 0 || x+xSpeed+diameter/2 > width) {
      xSpeed *= -1;
    }
    if (y+ySpeed-diameter/2 < 0 || y+ySpeed+diameter/2 > height) {
      ySpeed *= -1;
    }
  } // End of edgeDetection()


  // Ball Movement
  void move() {
    x += xSpeed;
    y += ySpeed;
  }


  // Draw 
  void classDraw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  // Getters and Setters
}
