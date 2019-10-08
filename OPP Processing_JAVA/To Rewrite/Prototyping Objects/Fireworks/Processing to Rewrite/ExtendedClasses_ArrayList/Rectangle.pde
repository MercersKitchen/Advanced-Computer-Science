//Using keyword variables is confusing to read

class Rectangle {

  float x;
  float y;
  float width;
  float height;

  //Constructor
  Rectangle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  } // End of Rectangle Constructor

  //Actaul drawing of Rectangle
  void draw() {
    fill(255); //White by Grey Scale
    rect(x, y, width, height);
  } // End of Rectangle void draw ()
}