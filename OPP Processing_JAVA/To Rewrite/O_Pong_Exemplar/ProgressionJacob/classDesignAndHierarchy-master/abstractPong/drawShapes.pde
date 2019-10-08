public void drawShapes() {
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
  leftPaddle.draw();
  rightPaddle.draw();
}
