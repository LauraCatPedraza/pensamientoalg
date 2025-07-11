Gato miGato;
Perro miPerro;

void setup() {
  size(1000, 1000);
  miGato = new Gato(color(255, 100, 50), 50, 100, 10);
  miPerro = new Perro(color(20, 100, 50), 50, 500, 1);
}

void draw() {
  background(255);
  
  miGato.display();
  miGato.correr();
  miPerro.display();
  miPerro.correr();
}
//clase padre
class Mamifero {
  //propiedades
  color c;
  float posX;
  float posY;
  float velocidad;
 
  
  //metodos
  void display() {
    fill(c);
    noStroke();
    rect(posX, posY, 100, 100);
  }
  
  void correr() {
    posX += velocidad;
    if(posX >= width || posX == 0) {
      velocidad = velocidad * -1;
    }
  }
}
//clases hijo
class Gato extends Mamifero {
//contructor
  Gato(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }
  
  void maullar() {
    println("el gato esta maullando");
  }
}

class Perro extends Mamifero {
//contructor
  Perro(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }
  
  void ladrar() {
    println("el gato esta ladrando");
  }
}
