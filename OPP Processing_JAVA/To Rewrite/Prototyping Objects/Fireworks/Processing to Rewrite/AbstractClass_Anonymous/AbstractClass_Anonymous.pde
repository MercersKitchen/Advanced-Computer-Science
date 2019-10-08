ArrayList<Shape> shapes = new ArrayList<Shape>();

//Anonymous Classes extend Abstract Classes
//There will only be one triangle drawn
Shape triangle = new Shape(50, 75) {
  void draw() {
    fill(0, 255, 255);
    triangle(x, y, x-10, y+10, x+10, y+10);
  }
}
; //Not a mistake, ; is moved to a new line to see the {} connection


void setup() {
  size(100, 100);

  Rectangle r = new Rectangle(10, 10, 80, 10, color(255, 0, 0));
  Circle c = new Circle(40, 50, 20, color(0, 255, 0));

  shapes.add(r);
  shapes.add(c);
  shapes.add(triangle); //New line for Anonymous Class above
}

void draw() {

  background(0);

  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
}

abstract class Shape {
  float x;
  float y;

  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
}

class Rectangle extends Shape {

  float width;
  float height;
  color c;

  Rectangle(float x, float y, float width, float height, color c) {
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

class Circle extends Shape {

  float radius;
  color c;

  Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }
}
