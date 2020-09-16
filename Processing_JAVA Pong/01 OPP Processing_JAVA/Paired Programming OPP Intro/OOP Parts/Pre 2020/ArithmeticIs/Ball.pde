class Ball {
  //Variable Declaration & Assignment, notice that inside object, variable are not Class-Referenced by delimiter
  float x = 50;
  float y = 100;
  float diameter = 20;
  color colour = color(0, 255, 0);
  float xSpeed = 1;
  float ySpeed = 1;
} //End of Class Ball

//
  //Object is
  float x;
  float y;
  float diameter;
  color colour;
  //Note: a float does not use enough memory to hold the bytes of colour
  // A float only holds enough for gray-scale 0-255
  float xSpeed;
  float ySpeed;
  //
  //Contructor is ... illstrate numbers since key variables do not exist here
  x = 50; //width*1/10
  y = 100; //height*1/3
  diameter = 20; //width*1/25
  colour = color(31,255,3); //use hexidecimal from color selector, 
  //#1FFF03
  xSpeed = 1;
  ySpeed = 1;
  //
