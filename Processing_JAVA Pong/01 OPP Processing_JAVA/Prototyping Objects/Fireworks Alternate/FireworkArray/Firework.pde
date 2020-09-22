class Firework {
  //Variables
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;
  float gravity;

  //Constructor (Populates Variables)
  Firework (float width, float height) {
    this.x = mouseX; //width*1/2
    this.y = mouseY; //height*1/2
    this.colour = color (random(255), random(255), random(255) );
    this.diameter = random (width*1/150, width*1/30);
    this.xSpeed = random (-5, 5);
    this.ySpeed = random (-5, 5);
    gravity = 0.5;
  }//End Constructor

  //Methods
  void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }//End step()

  void bounce() {
    if (y < 0+diameter*1/2 || y > height-diameter*1/2) { //
      ySpeed = ySpeed*-1;
    }//End height bounces
    if (x < 0+diameter*1/2 || x > width-diameter*1/2) {
      xSpeed = xSpeed * -1;
    }// End left and right bounces
  }//End bounce()

  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
  }//End draw()
} //End Firework Class
