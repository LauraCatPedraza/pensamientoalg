import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

int timeLapsed;

//# bandas de frecuencia
int bands = 256;

//array guardar el espectro de nuestras frecuencias
float[] spectrum = new float[bands];

int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  
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
  timeLapsed++;
  println(timeLapsed);
  
  fft.analyze(spectrum);

  float level = spectrum[50] * 100;
  radio = (level * width);

  //fill(255, 30);
  //stroke(random(0, 100), random(100, 255), random(200, 255));
  noStroke();

  if (random(1) < 0.5) {
    fill(255, 0, 0, 100); // rojo con transparencia
  } else {
    fill(0, 0, 255, 100); // azul con transparencia
  }

  float ancho = radio;
  float alto = radio / 2.0;

  rect(x, y, ancho, alto);

  // controlar dibujo eje vertical
  if (x > width) {
    x = 0;
    y = y + 10;
  }
  //controlar dibujo eje horizontal
  if (y > height) {
    y = 70;
    background(0);
  }
}
