float number;
int counter;

void setup () {
}

void draw() {
  number = random (-1.49, 1.49); //Will pick random number in these areas
  counter += 1;
  println ("Choice#" + counter + ": " + number);
}
