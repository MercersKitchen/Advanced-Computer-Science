//Global Variables
Ball ball = new Ball(250, 250, 25);

void setup() {
  size(600, 500); //Teaching Canvas, all students will use size, not fullScreen()
  //screenSizeTester(); 
  //ellipseMode(CENTER); // Default mode so a reminder that ball is drawn from centre
} // End setup()

void draw() {
  background(0); //Black, greyscale (less memory than color variable)
  fill(255); //White, greyscale for less memory
  noStroke(); //Remove the outline of the Ball
  ellipse(ball.x, ball.y, ball.diameter, ball.diameter); //Parameters 
  stroke(1); // Reset noStroke() to default parameter
  fill(0); //Reset to default black
} // End draw()

void mousePressed() {
} // End mousePressed()

void keyPressed() {
} // End keyPressed()
