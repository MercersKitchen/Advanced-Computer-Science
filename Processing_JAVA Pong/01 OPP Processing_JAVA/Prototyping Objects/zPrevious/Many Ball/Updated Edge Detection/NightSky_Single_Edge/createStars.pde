void createStars() {
  //Noticem the code for drawing one or more stars
  float minRadius = width*1/27.7777777777; // Based on 500 width, 20 max, and 2 min radii
  
  //Edge Detection Algorithm, occurs before executing Constructor
  float xParameter = random(width);
  float yParameter = random(height);
  float radiusParameter = random(Star.maxRadius-minRadius, Star.maxRadius);
  while (xParameter < radiusParameter || width-xParameter < radiusParameter) {
    xParameter = random(width);
  }
  while (yParameter < radiusParameter || height-yParameter < radiusParameter) {
    yParameter = random(width);
  }
  
  //Constructor Execution with Edge Detection for Single star complete
  stars[1-Star.starCount] = new Star (xParameter, yParameter, radiusParameter);
  //Need to change "18"
} // End createStars()
