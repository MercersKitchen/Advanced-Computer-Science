float number;
int counter;

void setup () {
}

void draw() {
  number = random (-1.49, 1.49); //Will pick random number in these areas
  counter += 1;
  println ("Choice#" + counter + ": " + number);
}

//What do you notice in the console with all these numbers?
//Answer: all -1, 0, or +1
