//Global Variables

// Creating a Class Variable like a Global Variable
Ball myBall = new Ball();
//Option: create more ellipses

void setup() {
  size (500, 600); //Use size() while developing, will use fullScreen later

  //Assigning Variables in setup(), can be anywhere & should be in class
  myBall.x = 50; 
  myBall.y = 100;
  myBall.diameter = 20;
  myBall.colour = color(0, 255, 0); //Able to use hexidecimal from colour selctor
}

void draw() {
  background(0);
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
} //Empty void Draw()
