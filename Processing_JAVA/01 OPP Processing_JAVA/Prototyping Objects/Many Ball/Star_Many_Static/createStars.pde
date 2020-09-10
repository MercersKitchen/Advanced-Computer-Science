void createStars() {
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(width), random(height), random(Star.maxRadius));
  }
} 
