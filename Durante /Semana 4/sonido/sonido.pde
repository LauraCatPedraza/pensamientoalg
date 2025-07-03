import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

//# bandas de frecuencia
int bands = 256;

//array guardar el espectro de nuestras frecuencias
float[] spectrum = new float[bands];

//detectar cambios
float prevLevel = 0;

//iniciar con cuadrado
String currentShape = "square";

void setup() {
  size(1000, 1000);
  background(255);
  rectMode(CENTER);

  //importar cancion
  soundfile = new SoundFile(this, "Azul.mp3");

  //crear analizador de frecuencias
  fft = new FFT(this, bands);

  //analice cancion
  fft.input(soundfile);

  //reproducir cancion
  soundfile.play();
}

void draw() {
  //fondo blanco
  fill(255, 255, 255, 10);
  rect(0, 0, width * 2, height * 2);

  fft.analyze(spectrum);

  //fuerza del espectro
  float level = spectrum[50] * 500;
  //tamaño del objeto segun nivel
  float size = level * width;

  //detectar cambios bruscos de nivel
  float change = abs(level - prevLevel);

  //cambio forma segun nivel
  if (change > 0.5) {
    if (change > 1.5) {
      //cambio fuerte
      currentShape = "circle";
    } else {
      //cambio normal
      currentShape = "rectangle";
    }
  } else {
    //sin cambio
    currentShape = "square";
  }

  noStroke();
  //colores del video
  fill(lerpColor(color(30, 30, 230, 120), color(220, 20, 40, 120), level / 2.0));

  float cx = width / 2;
  float cy = height / 2;

  //forma en la mitad
  switch(currentShape) {
  case "square":
    //cuadrado
    rect(cx, cy, size, size);
    break;
  case "circle":
    //circulo
    ellipse(cx, cy, size, size);
    break;
  case "rectangle":
    //rectangulo
    rect(cx, cy, size * 1.5, size * 0.5);
    break;
  }
  //detectar los cambios de ritmo
  prevLevel = level;
}
