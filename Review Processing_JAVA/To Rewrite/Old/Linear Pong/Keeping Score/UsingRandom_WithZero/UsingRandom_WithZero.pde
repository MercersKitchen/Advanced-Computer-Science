int number;
int counter;

void setup () {
}

void draw() {
  number = int (random (-1, 1)); //What do these values need to change to?
  counter += 1;
  println ("Choice#" + counter + ": " + number);
}
