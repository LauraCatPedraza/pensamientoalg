int diametro = 200;
float radio = diametro/2;
float circunferencia = TWO_PI * diametro;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(150, 150, 200);
  noStroke();
  
  //float d = dist(mouseX, mouseY, centroHorizontal, centroVertical);
  translate(centroHorizontal, centroVertical);
  noFill();
  
  // dibujar diametro
  stroke(0);
  line(-radio, 0, radio, 0);
  
  //radio
  line(0, 0, 0, radio);
  
  //circulo
  stroke(100);
  ellipse(0, 0, diametro, diametro);
  
  println(circunferencia);
  
  //ellipse(centroHorizontal, centroVertical, diametro, diametro);
}
  
