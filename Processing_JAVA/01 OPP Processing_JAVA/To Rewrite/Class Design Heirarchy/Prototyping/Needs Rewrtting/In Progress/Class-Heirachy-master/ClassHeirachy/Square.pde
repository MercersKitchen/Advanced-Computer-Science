class Circle extends Shape{

  float radius;
  color c;

  Circle(float x, float y, float radius, color c){
    super(x, y);
    this.radius = radius;
    this.c = c;
  }

  void draw(){
    fill(c);
    ellipse(x, y, radius, radius);
  }
}