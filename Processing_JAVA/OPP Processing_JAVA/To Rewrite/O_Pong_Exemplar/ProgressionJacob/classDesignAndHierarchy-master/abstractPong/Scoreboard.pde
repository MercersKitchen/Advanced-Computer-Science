Shape Score1 = new Shape(50,100) {
  public void draw() {
    text(abstractPong.scores[0], x, y);
  }
};

Shape Score2 = new Shape (930, 100) {
  public void draw() {
    text(abstractPong.scores[1], x, y);
  }
};
