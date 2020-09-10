float [] number = {0.3, 0.49, 0.5, 0.7, 0.9, 1.1, 1.49, 1.6};
int counter;

void setup () {
  println ("Checking Array Length to debug casting: " + number.length); //should return
  for (int i=0; i<number.length; i++) {
    println ("Casting " + number[i] + " to " + int(number[i]) );
  }
  println ("What do these examples show us about Casting-Narrow and Rounding?");
}

void draw() {} //Called an Empty Draw Loop, necessary for Java Compiler
  
  
  //number = random (-1.49, 1.49); //Will pick random number in these areas
  //counter += 1;
  //println ("Choice#" + counter + ": " + number);
