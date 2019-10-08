class Paddle{
  private int X;
  private int Y;
  private int Ym = 0;
  
  public Paddle(int x, int y) {
    this.X = x;
    this.Y = y;
  }
  
  public int getX() {
    return X;
  }
  public int getY() {
    return Y;
  }
  public void changeYm(int a) {
    Ym = a;
  }
  
  public void Move(boolean vertical) {
    if (vertical) {
      if (key == 'w' || key == 'W') {
        Y+=Ym;
      }
      if (key == 's' || key == 'S') {
        Y-=Ym;
      }
    }
  }
  
  void reset() {
    X=10;
    Y=200;
  }
  
  void Step() {
    Y = Y + Ym*5;
    if (Y>height-15 || Y<height+15) {
      Move(false);
    } else {
      Move(true);
    }
    if (Y<10){
      Y=10;
    }
    if (Y>290){
      Y=290;
    }
    rect(X, Y, 10, 200);
  }
}
