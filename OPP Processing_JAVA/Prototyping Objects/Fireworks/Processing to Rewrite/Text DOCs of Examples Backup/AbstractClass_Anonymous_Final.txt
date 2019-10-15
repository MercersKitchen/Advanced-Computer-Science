ArrayList<Shape> shapes = new ArrayList<Shape>();

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

//Deleted abstract class Shape{} and added this final class Shape{}
//Will produce run time errors
//Final Classes cannot be extended, safety
final class Shape{
  float x;
  float y;

  Shape(float x, float y){
   this.x = x;
   this.y = y; 
  }

  void draw(){
   point(x, y); 
  }
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