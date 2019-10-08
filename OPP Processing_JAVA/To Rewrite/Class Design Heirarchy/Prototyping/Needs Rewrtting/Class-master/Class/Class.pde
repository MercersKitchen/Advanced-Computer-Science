Ball myBall = new Ball(50,100,color(0, 255, 255)); // Intializing the Class
Ball yourBall = new Ball(75,125,color(0, 255, 255)); // Intializing the Class

void setup() {
 //size(100, 200);
 fullScreen();
 print("Screen Dimensions" + "\n My width is " + displayWidth + "\n My height is " + displayHeight);
}

void draw() {
  background(0); //Black on GreyScale
  myBall.EdgeDetection();
  myBall.ClassDraw ();
  
  yourBall.EdgeDetection();
  yourBall.ClassDraw ();
  
} //End of Draw loop