ArrayList<Shape> shapes = new ArrayList<Shape>();

Shape triangle = new Shape(50, 75) {
  void draw() {
    fill (0, 255, 255);
    triangle (x, y, x-10, y+10, x+10, y+10);
  }
}
;

void setup() {
  size (100, 100);
  
  Rectangle r = new Rectangle(10, 10, 80, 10, color(255, 0, 0));
  Circle c = new Circle(40, 50, 20, color(0, 255, 0));
  
  shapes.add(r);
  shapes.add(c);
  shapes.add(triangle);
  
}

void draw() {
  background(0);
  
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
}