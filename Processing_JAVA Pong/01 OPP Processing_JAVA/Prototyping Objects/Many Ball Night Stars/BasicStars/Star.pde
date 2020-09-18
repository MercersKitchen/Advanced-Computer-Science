class Star {
  //variables or object's group of variables
  float x;
  float y;
  float diameter;

  //constructor
  Star (float xParameter, float yParameter, float diameterParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
  }//End Contstuctor

  void draw() {
    background(0);
    ellipse(x, y, diameter, diameter);
  }//End draw()
}//End Class
