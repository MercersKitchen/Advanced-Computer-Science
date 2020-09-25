private class Circle extends Shape {
  //Variables
  private color colour; 

  private Circle(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this.colour = c;
  }//End Constructor

  public void draw() {
    fill(colour);
    ellipse(x, y, w, h);
  }//End draw()

  private void step() {
    y++;
  }//End step()
  
}//End class Circle
