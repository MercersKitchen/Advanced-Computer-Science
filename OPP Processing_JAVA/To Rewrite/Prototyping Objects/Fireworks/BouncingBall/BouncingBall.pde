// Variables go here
Ball myBall = new Ball( 50, 100); // Initiatlizing the Class
Ball yourBall = new Ball (75, 75);

void setup() {
  size (500, 600);
  //fullScreen ();
  print ("Screen Dimensions" +"\n  My width is " + displayWidth + "\n  My height is " + displayHeight);
}

void draw () {
  background (0); //Black on a GreyScale
  
  myBall.EdgeDetection();
  myBall.ClassDraw ();
  
  yourBall.EdgeDetection();
  yourBall.ClassDraw ();
  
} // End of DRAW Loop
