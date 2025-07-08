PImage img;
int index;

void setup() {
  size(1000, 1000);
}

void draw() {
   loadImageEvent(index);
}

void mousePressed() {
  //incrementar en una unidad el valor de index, cuando el mouse se presiona
  index++;
  loadImageEvent(index);
  println(index);
}

void loadImageEvent(int i) {
  switch(i) {
  case 0:
    println("evento 0");
    img = loadImage("inicio.jpg");
    break;
  case 1:
    println("evento 1");
    img = loadImage("climax.jpg");
    break;
  case 2:
    println("evento 2");
    img = loadImage("desenlace.jpg");
    break;
  case 3:
    println("evento 3");
    index = 0;
    break;
  }
  
  image(img, 0, 0, width, height);
}
