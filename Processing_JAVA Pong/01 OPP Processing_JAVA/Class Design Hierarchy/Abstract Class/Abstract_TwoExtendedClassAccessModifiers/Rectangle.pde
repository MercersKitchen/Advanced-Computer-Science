private class Rectangle extends Shape {
  //Varaibles
  private color colour;

  //Constructor
  private Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this.colour = c;
  }//End Constructor

  public void draw() {
    fill(colour);
    rect(x, y, w, h);
  }//End draw()
}//End clas Rectangle
