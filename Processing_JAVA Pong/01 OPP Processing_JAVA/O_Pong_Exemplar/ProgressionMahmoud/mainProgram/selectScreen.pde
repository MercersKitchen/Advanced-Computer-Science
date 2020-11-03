public void Menu() {
  if(key == 'm'){
  Menu = true;
  }
if(Menu == true){
  rect(width*1/2, height*1/2, 200, 400);
  }
}

public void Reset() {
ball.x = width/2;
ball.y = height/2;
scoreLeft = 0;
scoreRight = 0;
loop();
}

void paused() {
if ( key == 'p' )
noLoop();
if ( keyCode == ENTER )
loop();
  }
