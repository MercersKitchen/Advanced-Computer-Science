class Firework {
  //Variables
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float gravity;

  //Constructor
  Firework (float width, float height) {
    //X&Y are values when Pong Ball scores
    this.x = random (width);
    println(x);
    this.y = random (height);
    println(y);
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    println(c);
    this.diameter = random(width*1/25);
    println (diameter);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  } //End of Constructor

  //Procedures or Functions
  //void draw() {
    //fill(c);
    //ellipse(x, y, diameter, diameter);
  //}

  //Getter and Setters
  
}
