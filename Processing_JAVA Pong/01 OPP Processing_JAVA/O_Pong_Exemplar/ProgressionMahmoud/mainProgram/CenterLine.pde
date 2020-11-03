public class CenterLine {

  private float X;
  private float Y;
  final private float W;
  final private float i;
  final private color C;
  final private color CB;

  CenterLine(float CenterLineX, float CenterLineY, float CenterLineW, float CenterLinei) {
    X =  CenterLineX;
    Y =  CenterLineY;
    W =  CenterLineW;
    i =  CenterLinei;
    C=(#FF0000);
    CB=(#0000FF);
  }
  private void display() {
    fill(C);
    for (int i = 30; i < 520; i = i+100) {
      rect(width*1/2, i, 10, 40);
    }
    fill(CB);
    for (int i = 80; i < 520; i = i+100) {
      rect(width*1/2, i, 10, 40);
    }
  }
}
