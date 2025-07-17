Table table;
int nSamples;

//guardar valor de peso y altura 
float[] weightValor;
float[] heightValor;

void setup() {
  size(1000, 1000);
  
  //cargar archivo
  table = loadTable("pokemon_data.csv", "header");
  //# de filas del archivo
  nSamples = table.getRowCount();

  //iniciar con la cantidad del peso y altura
  weightValor = new float[nSamples];
  heightValor = new float[nSamples];

  //recorre cada fila de la tabla y coge los valores de peso y altura
  for (int i = 0; i < nSamples; i++) {
    //peso en la fila i
    weightValor[i] = table.getFloat(i, "weight");
    //altura en la fila i
    heightValor[i] = table.getFloat(i, "height");
  }
}

void draw() {
  background(0); 
  
  //hacer un circulo por cada pokemon
  for (int i = 0; i < nSamples; i++) {
    //hacer puntos en eje x
    float x = map(i, 0, nSamples, 50, width - 50); 
    //hacer puntos en eje y
    float yWeight = map(weightValor[i], 0, max(weightValor), height - 50, 50);
    //verde para peso
    fill(0, 255, 0); 
    noStroke();
    //hacer circulo de peso en la posicion calculada
    ellipse(x, yWeight, 10, 10); 

    //hacer puntos en eje Y (igual que peso)
    float yHeight = map(heightValor[i], 0, max(heightValor), height - 50, 50);
    //azul para altura
    fill(0, 100, 255); 
    noStroke();
    //hacer circulo de altura en la posicion calculada
    ellipse(x, yHeight, 10, 10); 
  }
}
