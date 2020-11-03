class Firework {
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;
  float gravity;
  float RandomColour;

  Firework (float width, float height) {
    this.x = mouseX; //width*1/2
    this.y = mouseY; //height*1/2
    this.RandomColour = int (random(2));
     colour = (#FF0000);
     if (RandomColour < 1) {
      color(#030CFF);
    } else { 
      color (#FF0303);
    }
    this.diameter = random (width*1/150, width*1/30);
    this.xSpeed = random (-5, 5);
    this.ySpeed = random (-5, 5);
    gravity = 0.5;
  }


  void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }

  void bounce() {
    /*if (y < 0+diameter*1/2 || y > height-diameter*1/2) { //
     ySpeed = ySpeed*-1;
     }//End height bounces
     */
    if (x < 0+diameter*1/2 || x > width-diameter*1/2) {
      xSpeed = xSpeed * -1;
    }
  }

  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
  }
}
