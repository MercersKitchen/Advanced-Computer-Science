ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size (100, 100);
  
  Rectangle r = new Rectangle(10, 10, 80, 10, color(255, 0, 0));
  Circle c = new Circle(40, 50, 20, color(0, 255, 0));
  
  shapes.add(r);
  shapes.add(c);
  
}

void draw() {
  background(0);
  
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
}