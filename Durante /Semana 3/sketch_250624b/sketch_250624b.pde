//def variable
int posX = 0;

//ejecuta una vez
void setup() {
  size(500, 500);
  frameRate(100);
}

//ejecuta varias veces
void draw() {
  background(255); //<>//
  line(posX, 0, posX, height);
  posX++;
  println(posX); //<>//

  if (posX > width) {
    posX = 0;
  }
}
