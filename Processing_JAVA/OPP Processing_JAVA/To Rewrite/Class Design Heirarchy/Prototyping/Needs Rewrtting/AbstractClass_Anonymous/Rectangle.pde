class Rectangle extends Shape {
  float width;
  float height;
  color c;
  
  Rectangle (float x, float y, float width, float height, color c) {
    super(x, y);
    this.width = width;
    this.height = height;
    this.c = c;
    
  }
  
  void draw() {
    fill(c);
    rect(x, y, width, height);
  }
}