class Ball {
  private int Radius;
  private int X;
  private int Y;

  public int Xm; // X Move
  public int Ym; // Y Move

  public Ball(int x, int y, int radius, int xm, int ym) {
    this.X = x;
    this.Y = y;
    this.Radius = radius;
    this.Xm = xm;
    this.Ym = ym;
  }

  public float getX() {
    return X;
  }
  public float getY() {
    return Y;
  }
  public float getRadius() {
    return Radius;
  }

  void Bounce(boolean Horizontal) {
    if (Horizontal) {
      Xm = Xm*-1;
    } else {
      Ym = Ym*-1;
    }
  }
  void reset() {
    fill(c);
    X = 500;
    Y = 250;
    Xm = 3;
    Ym = 3;
    Bounce(true);
    
  }
  void stop() {
  Xm=0;
  Ym=0;
  }
  
  void step() {
    X = X + Xm;
    Y = Y + Ym;
    if (X<20+Radius && Xm<0) {
      if (paddle1.getY()<Y+Radius && paddle1.getY()+200>Y-Radius) {
        Bounce(true);
        Xm = Xm+2;
        Ym = Ym+2;
        Y=Y+2;
      }
    } else if (X>980-Radius && Xm>0) {
      if (paddle2.getY()<Y+Radius && paddle2.getY()+200>Y-Radius) {
        Bounce(true);
        Y=Y+2;
      }
    }
    if (Y<0+Radius) {
      if (Ym < 0) {
        Bounce(false);
      }
    } else if (Y>500-Radius) {
      if (Ym > 0) {
        Bounce(false);
      }
    }

    
    ellipse(X, Y, Radius*2, Radius*2);
  }
}
