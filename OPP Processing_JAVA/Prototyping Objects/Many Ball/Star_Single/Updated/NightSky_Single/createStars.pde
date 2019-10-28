void createStars() {
  //Noticem the code for drawing one or more stars
  float minRadius = width*1/27.7777777777; // Based on 500 width, 20 max, and 2 min radii
  stars[1-Star.starCount] = new Star (random(width), random(height), random(Star.maxRadius-minRadius, Star.maxRadius));
  //Need to change "18"
}
