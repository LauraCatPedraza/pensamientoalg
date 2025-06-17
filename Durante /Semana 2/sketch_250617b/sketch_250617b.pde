int posX;
int posY;

void setup(){
  background(255);
  //           R   G   B
  //background(20, 50, 80)
  size(500, 500);
}

void draw(){
  background(255);
  //agregar color
  //fill(20, 150, 200);
  
  //valor variable
  posX = posX + 1;
  posY = posY + 1;
  println(posX);
  println(posY);
  
  //dibujar un circulo
  fill(20, 150, 200);
  noStroke();
  ellipse(posX, posY, 50, 50);
}
