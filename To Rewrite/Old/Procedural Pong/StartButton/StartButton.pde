// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)
Boolean start = false;

//This File is the main file
//It calls each Procedure in either setup() or draw()
void setup() {
}

void draw() {
  //Code to change "Start" Boolean Variable to true

  if (start == false) { //Demonstrating that Game is Still here
    println ("Game has not started yet.");
  }

  if (start==true) { //Demonstrating that Game is now active
    println ("Game has Started");
  }

  startStop(); //No return call
}
