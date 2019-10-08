/*
// One way of calling Classes, but these are all related
Rectangle rectangle = new Rectangle(10, 10, 80, 10);
Square square = new Square(40, 30, 20);
RedSquare redSquare = new RedSquare(10, 75, 20);
BlueSquare blueSquare = new BlueSquare(70, 75, 20);
*/
/*
Rectangle rectangle = new Rectangle(10, 10, 80, 10);
 Rectangle square = new Square(40, 30, 20);
 Rectangle redSquare = new RedSquare(10, 75, 20);
 Rectangle blueSquare = new BlueSquare(70, 75, 20);
 */

//Summarized Way
 ArrayList<Rectangle> rectangles = new ArrayList<Rectangle>();
 
 
void setup() {
  size(100, 100);
  //square.printMe(); //Works when Square square = new Square () is called, ask Kevin why
  
  // When using Array List
  rectangles.add(new Rectangle(10, 10, 80, 10));
  rectangles.add(new Square(40, 30, 20));
  rectangles.add(new RedSquare(10, 75, 20));
  rectangles.add(new BlueSquare(70, 75, 20));
}

void draw() {
  /* //Used for other Class Initialization
  rectangle.draw();
  square.draw();
  redSquare.draw();
  blueSquare.draw();
  */
  
  //When using ArrayList 
  for (int i = 0; i < rectangles.size(); i++) { //size is different than length
    rectangles.get(i).draw(); //changed from 4 lines of code to 1
  }
}