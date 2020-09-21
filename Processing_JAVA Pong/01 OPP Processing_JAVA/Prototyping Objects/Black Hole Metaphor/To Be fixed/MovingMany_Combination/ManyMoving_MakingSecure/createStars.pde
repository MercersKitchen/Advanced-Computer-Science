void createStars() {
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(int(random(width)), int(random(height)), int(random(Star.maxRadius)));
  }
} 
