int number;
int counter;

void setup () {
}

void draw() {
  number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  counter += 1;
  println ("Choice#" + counter + ": " + number);
}

//What does the WHILE Loop make disappear, compared to the UsingRandom.PDE?
//Answer: zero disappears
