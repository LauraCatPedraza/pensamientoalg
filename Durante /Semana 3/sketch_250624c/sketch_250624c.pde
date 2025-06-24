int size = 200;

int centroHorizontal;
int centroVertical;

int posBordeSuperior;
int posBordeInferior;
int posBordeIzquierdo;
int posBordeDerecho;

void setup() {
  size(1000, 1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background(150, 150, 200);
  noStroke();

  posBordeSuperior = centroHorizontal - (size/2);
  posBordeInferior = centroHorizontal + (size/2);
  posBordeIzquierdo = centroVertical - (size/2);
  posBordeDerecho = centroVertical + (size/2);

  if (mouseX > posBordeIzquierdo
      && mouseX < posBordeDerecho 
      && mouseY > posBordeSuperior 
      && mouseY < posBordeDerecho) {
    fill(45, 80, 50);
    print("Inicio de zona interactiva");
  } else { 
    fill(255);
  }

  rectMode(CENTER);
  rect(width/2, height/2, size, size);
}
