class Rectangle extends Shape {
  //Varaibles
  color colour;

  //Constructor
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this.colour = c;
  }//End Constructor

  void draw() {
    fill(colour);
    rect(x, y, w, h);
  }//End draw()
}//End clas Rectangle
