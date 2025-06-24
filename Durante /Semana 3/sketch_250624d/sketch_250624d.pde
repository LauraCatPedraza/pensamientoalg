int size = 200;

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

  if ((keyPressed == true) && ((key == ' ') || (key == 'A'))) {
    fill(45, 80, 50);
    print("Inicio de zona interactiva");
  } else {
    fill(255);
  }

  rectMode(CENTER);
  rect(width/2, height/2, size, size);
}
