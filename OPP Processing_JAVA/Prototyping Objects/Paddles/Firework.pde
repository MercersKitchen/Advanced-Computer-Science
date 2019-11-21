class Firework {
  // Object Variables for Abstract Object ("any object")
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float xGravity;
  float yGravity;

  //Static Variable for the number of exploding objects
  //Static Varaible for the smallest Diameter
  //Static Variable for the largest Diameter

  // Constructor - Populates Single Object Variables
  Firework (float width, float height) {
    //This constructor is randomizing the diameter, how can this change?
    if (mouseX == 0 && mouseY == 0) {
      this.x = width/2;
      this.y = height/2;
    } else {
      this.x = mouseX;
      this.y = mouseY;
    }
    this.c = color( int(random(256)), int(random(256)), int(random(256)) );
    float minDiameter = width*1/27.77777777; // Value = 18
    float maxDiameter = width*1/25; //Value = 20
    this.diameter = random(maxDiameter-minDiameter, maxDiameter);
    this.xSpeed = random (-5, 5);
    this.ySpeed = random (-5, 5);
    xGravity = 0.5;
    yGravity = 0.5;
  } // End of Constructor

  // Edge Detection
  float edgeDetection(float PaddlexSpeed) {
    if (x+PaddlexSpeed-diameter/2 < 0 || x+PaddlexSpeed+diameter/2 > width) {
      return -1;
    }
    if (y+ySpeed-diameter/2 < 0 || y+ySpeed+diameter/2 > height) {
      ySpeed *= -1;
    }
    return 1;
  } // End of edgeDetection()

  // Ball Movement
  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  void gravity() {
    ySpeed += yGravity;
  }

  void magnetEffect() {
    xSpeed += xGravity;
  }

  void threeBallXStart() {
    for (int i = 0; i< threeBallStart.length; i++) {
      xSpeed = 3;
    }
  }

  // Draw 
  void classDraw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  // Getters and Setters
}
