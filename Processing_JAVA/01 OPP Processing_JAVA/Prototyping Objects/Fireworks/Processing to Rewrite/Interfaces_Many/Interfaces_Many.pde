ArrayList<Drawable> shapes = new ArrayList<Drawable>();
ArrayList<Mover> movingShapes = new ArrayList<Mover>();

void setup() {
  size(100, 100);
  
  //Separated Initialization and declarationa
  Rectangle r = new Rectangle(10, 10, 80, 10, color(255, 0, 0));
  Circle c = new Circle(40, 0, 20, color(0, 255, 0));
  shapes.add(r);
  shapes.add(c);

  movingShapes.add(c);
 }

void draw() {

  background(0);

  for (int i = 0; i < movingShapes.size(); i++) {
    movingShapes.get(i).step();
  }

  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
}

interface Drawable {
  void draw();
}

interface Mover{
  void step();
}

class Rectangle implements Drawable {

  float x;
  float y;
  float width;
  float height;
  color c;

  Rectangle(float x, float y, float width, float height, color c) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.c = c;
  } 

  void draw() {
    fill(c);
    rect(x, y, width, height);
  }
}

class Circle implements Drawable, Mover{

  float x;
  float y;
  float radius;
  color c;

  Circle(float x, float y, float radius, color c){
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.c = c;
  }

  void step(){
    y++;
  }

  void draw(){
    fill(c);
    ellipse(x, y, radius, radius);
  }
}