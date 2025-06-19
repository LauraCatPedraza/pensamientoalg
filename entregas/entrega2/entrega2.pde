int tamaño = 100;

void setup() {
  size(500, 500);
  background(0);
  noLoop();
}

void draw() {
  for (int y = 0; y <= height; y += tamaño) {
    for (int x = 0; x <= width; x += tamaño) {

      //circulos
      fill(127, 255, 212); 
      noStroke();
      ellipse(x + tamaño/2, y + tamaño/2, tamaño * 0.9, tamaño * 0.9);

      //triangulos
      fill(255, 0, 255);
      triangle(x + 30, y, x + 50, y + 20, x + 70, y); //arriba
      triangle(x + 30, y + tamaño, x + 50, y + tamaño - 20, x + 70, y + tamaño);//abajo
      triangle(x, y + 30, x + 20, y + 50, x, y + 70);//izq
      triangle(x + tamaño, y + 30, x + tamaño - 20, y + 50, x + tamaño, y + 70);//der
    }
  }
}
