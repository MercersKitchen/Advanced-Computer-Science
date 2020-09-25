class Circle extends Shape {
  //Variables
  color colour; 

  Circle(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this.colour = c;
  }//End Constructor

  void draw() {
    fill(colour);
    ellipse(x, y, w, h);
  }//End draw()

  void step() {
    y++;
  }//End step()
  
}//End class Circle
