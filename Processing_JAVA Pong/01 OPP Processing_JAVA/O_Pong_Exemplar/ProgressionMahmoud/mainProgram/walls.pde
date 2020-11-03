
public class Wall {


  private float x;
  private float y;
  final private float w;
  final private float h;
  final private color c;

  Wall(float WallX, float WallY, float WallW, float WallH) {
    x = WallX;
    y = WallY;
    w = WallW;
    h = WallH;
    c=(255);
  }
  private void display() {
    fill(c);
    rect(x, y, w, h);
  }
}


  
