PImage img;
int index = 0;

//objeto que almacenara los ingredientes añadidos
Pastel pastel = new Pastel();


void setup() {
  size(1000, 1000);
  //imagen inicial en index
  loadImageEvent(index);
}


void draw() {
  background(255);
  //imagen cargada segun la etapa
  image(img, 0, 0, width, height);
}

//pseudocodigo
void mousePressed() {
  //Si la etapa_actual es 0 Y el usuario hace clic con el mouse
  if (index == 0) {
    println("Iniciar pedido");
    //Entonces, cambia la etapa_actual a 1
    index = 1;
    // y se actualiza la imagen correspondiente
    loadImageEvent(index);
  }
}


void keyPressed() {
  //convertir la tecla presionada a minuscula
  char k = Character.toLowerCase(key);

  //si esta en la etapa del pedido y se presiona 't'
  if (index == 1 && k == 't') {
    //se agrega el ingrediente "Torta"
    pastel.agregarIngrediente(new Torta());
    //avanzar a la siguiente etapa
    index = 2;

    //si esta en la etapa de torta y se presiona 'c'
  } else if (index == 2 && k == 'c') {
    pastel.agregarIngrediente(new Crema());
    index = 3;

    //si esta en la etapa de crema y se presiona 'f'
  } else if (index == 3 && k == 'f') {
    pastel.agregarIngrediente(new Fresa());
    index = 4;

    //si esta en la etapa de fresas y se presiona 'e'
  } else if (index == 4 && k == 'e') {
    //se pasa a la etapa final: entrega
    index = 5;
  }
  //se actualiza la imagen de la etapa actual
  loadImageEvent(index);
}


void loadImageEvent(int i) {
  //segun el valor de index, se carga una imagen especifica
  switch(i) {
  case 0:
    println("Imagen: inicio");
    img = loadImage("inicio.jpg");
    break;
  case 1:
    println("Imagen: pedido");
    img = loadImage("pedido.jpg");
    break;
  case 2:
    println("Imagen: torta");
    img = loadImage("torta.jpg");
    break;
  case 3:
    println("Imagen: crema");
    img = loadImage("crema.jpg");
    break;
  case 4:
    println("Imagen: fresas");
    img = loadImage("fresas.jpg");
    break;
  case 5:
    println("Imagen: entrega");
    img = loadImage("entrega.jpg");
    break;
  default:
    //si hay un error no valido, reinicia el proceso
    println("Reinicio");
    index = 0;
    img = loadImage("inicio.jpg");
    break;
  }
}


class Pastel {
  //lista que guarda todos los ingredientes añadidos al pastel
  ArrayList<Ingrediente> ingredientes;

  //inicio de la lista
  Pastel() {
    ingredientes = new ArrayList<Ingrediente>();
  }

  //agregar ingredientes a la lista
  void agregarIngrediente(Ingrediente i) {
    ingredientes.add(i);
    //muestra el nombre del ingrediente agregado
    println("Ingrediente agregado: " + i.getNombre());
  }
}

abstract class Ingrediente {
  //metodo que obliga a las clases hijas a devolver su nombre
  abstract String getNombre();
}

class Torta extends Ingrediente {
  //se empieza a implementar el metodo getNombre
  String getNombre() {
    return "Torta";
  }
}

class Crema extends Ingrediente {
  String getNombre() {
    return "Crema";
  }
}

class Fresa extends Ingrediente {
  String getNombre() {
    return "Fresa";
  }
}
