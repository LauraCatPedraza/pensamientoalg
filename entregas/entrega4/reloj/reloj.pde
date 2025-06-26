int segundo, minuto, hora;
ArrayList<Circulo> circulos;

void setup() {
  size(1000, 1000);
  frameRate(1);
  circulos = new ArrayList<Circulo>();
  background(0);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);

  segundo = second();
  minuto = minute();
  hora = hour();

  float radioMaximo = 900;
  float radioActual = map(segundo, 0, 59, 0, radioMaximo);

  int indiceColor = minuto / 3;
  color colorCirculo = obtenerColorPorBloque(indiceColor);

  if (segundo == 59) {
    circulos.add(new Circulo(radioActual, colorCirculo));
  }

  for (Circulo circ : circulos) {
    fill(circ.colorCirculo, 80);
    ellipse(0, 0, circ.radio, circ.radio);
  }

  fill(colorCirculo, 80);
  ellipse(0, 0, radioActual, radioActual);

  dibujarCirculosDeTiempo(hora, minuto, segundo);
  dibujarRelojDigital(hora, minuto, segundo);
}

//tamaño y color
class Circulo {
  float radio;
  color colorCirculo;

  Circulo(float radio, color colorCirculo) {
    this.radio = radio;
    this.colorCirculo = colorCirculo;
  }
}

//color cada 3 minutos
color obtenerColorPorBloque(int indice) {
  float tono = map(indice % 20, 0, 19, 0, 255);
  colorMode(HSB, 255);
  color colorGenerado = color(tono, 200, 255);
  colorMode(RGB, 255);
  return colorGenerado;
}

//circulos hora, minuto, segundo
void dibujarCirculosDeTiempo(int hora, int minuto, int segundo) {
  noFill();
  strokeWeight(8);

  //hora
  stroke(255, 100, 100);
  arc(0, 0, 200, 200, 0, map(hora % 24, 0, 24, 0, TWO_PI));

  // minuto
  stroke(100, 255, 100);
  arc(0, 0, 160, 160, 0, map(minuto, 0, 60, 0, TWO_PI));

  // segundo
  stroke(100, 100, 255);
  arc(0, 0, 120, 120, 0, map(segundo, 0, 60, 0, TWO_PI));
}

//reloj
void dibujarRelojDigital(int hora, int minuto, int segundo) {
  pushMatrix();
  //ubicacion
  translate(-60, -15);

  String tiempo = nf(hora, 2) + nf(minuto, 2) + nf(segundo, 2);

  for (int i = 0; i < tiempo.length(); i++) {
    char c = tiempo.charAt(i);
    dibujarDigitoMini(c - '0', i * 20);

    //:
    if (i == 1 || i == 3) {
      fill(255);
      ellipse(i * 20 + 16, 4, 2, 2);
      ellipse(i * 20 + 16, 12, 2, 2);
    }
  }

  popMatrix();
}

//dibujos hora
void dibujarDigitoMini(int numero, int desplazamientoX) {
  int[][] digitos = {
    {1, 1, 1, 1, 1, 1, 0}, // 0
    {0, 1, 1, 0, 0, 0, 0}, // 1
    {1, 1, 0, 1, 1, 0, 1}, // 2
    {1, 1, 1, 1, 0, 0, 1}, // 3
    {0, 1, 1, 0, 0, 1, 1}, // 4
    {1, 0, 1, 1, 0, 1, 1}, // 5
    {1, 0, 1, 1, 1, 1, 1}, // 6
    {1, 1, 1, 0, 0, 0, 0}, // 7
    {1, 1, 1, 1, 1, 1, 1}, // 8
    {1, 1, 1, 1, 0, 1, 1}  // 9
  };

  int[] barras = digitos[numero];
  fill(255);
  noStroke();

  if (barras[0] == 1) rect(desplazamientoX, 0, 12, 2);     // A
  if (barras[1] == 1) rect(desplazamientoX + 12, 2, 2, 12);// B
  if (barras[2] == 1) rect(desplazamientoX + 12, 16, 2, 12);// C
  if (barras[3] == 1) rect(desplazamientoX, 28, 12, 2);    // D
  if (barras[4] == 1) rect(desplazamientoX - 2, 16, 2, 12);// E
  if (barras[5] == 1) rect(desplazamientoX - 2, 2, 2, 12); // F
  if (barras[6] == 1) rect(desplazamientoX, 14, 12, 2);    // G
}
