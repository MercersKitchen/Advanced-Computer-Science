class PaddlesClass {
  float x;
  float y;
  float rectWidth;
  float rectHeight;
  float yMove;
  Boolean up;
  boolean down;

  PaddlesClass (float parameterWidth, float parameterHeight, float locationRatio, float shift) {
    // locationRatio must be decimal, trunction
    rectWidth = parameterWidth/40;
    rectHeight = parameterHeight/4;
    this.x = (parameterWidth * locationRatio) - parameterWidth*shift;
    this.y = (parameterHeight/2) - rectHeight/2;
    yMove = parameterHeight/parameterHeight; //"1 Pixel at a time"
    this.up = false;
    this.down = false;
  }

  // Procedures

  float edgeDetection(float ballX, float ballY, float ballDiamter) {
    float bounceXtop = x;
    float bounceYtop = y;
    //float bounceXbottom = x;
    float bounceYbottom = y+rectHeight;
    //println(bounceXtop);
    if ( ballX<=bounceXtop+rectWidth+ballDiamter/2 ) {
      if (ballY >= bounceYtop && ballY <= bounceYbottom) {
        return -1;
      }
    }
    return 1;
  }

  void movePaddle(Boolean up, Boolean down, float height) {
    //up
    if (up == true && down == false) {
      y = y - yMove;
    }
    //down
    if (up == false && down == true) {
      y = y + yMove;
    }
    up = false;
    down = false;
    if (y < 0) {
      y = 0;
    }
    if (y > height-rectHeight) {
      y = height-rectHeight;
    }
  }


  void classDraw() {
    rect(x, y, rectWidth, rectHeight);
  }


  // Getters and Setters
}
