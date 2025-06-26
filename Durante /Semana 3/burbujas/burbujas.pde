int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  //noStroke();
  frameRate(10);
  y = 70;
}

void draw() {
  //numero provisional que representa una onda de sonido
  float numAleatorio = random(0, 1);
  radio = (numAleatorio * width/2);

  fill(random(100, 255), random(100, 255), random(100, 255), 180);
  stroke(random(0, 100), random(100, 255), random(200, 255));
  ellipse(x, y, radio, radio);
  triangle(x, y - 30, x - 20, y + 30, x + 20, y + 30);
  x += 10;
  

  // controlar dibujo eje vertical
  if (x > width) {
    x = 0;
    y += 70;
  }
  //controlar dibujo eje horizontal
  if (y > height) {
    y = 70;
    background(0);
  }
}
