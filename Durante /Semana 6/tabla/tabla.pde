Table table;
int nSamples;

float[] appUsageTime;
float[] screenOnTime;

void setup() {
  size(1000, 1000);

  table = loadTable("user_behavior_dataset.csv", "header");
  nSamples = table.getRowCount();
  

  appUsageTime = new float[nSamples];
  screenOnTime = new float[nSamples];

  //variable //condicion incremento
  for (int i = 0; i < nSamples; i = i +1) {
    appUsageTime[i] = table.getFloat(i, "App Usage Time (min/day)");
    screenOnTime[i] = table.getFloat(i, "Screen On Time (hours/day)");
  }
}

void draw() {
  background(0);

  for (int i = 0; i < nSamples; i++) {
    float x = map(appUsageTime[i], 0, max(appUsageTime), 0, width);
    float y = map(screenOnTime[i], 0, max(screenOnTime), height, 0);

    fill(0, 0, 255); // Azul
    noStroke();

    // Dibujar un triángulo equilátero apuntando hacia arriba
    float size = 10;
    triangle(
      x, y - size,              // vértice superior
      x - size * 0.866, y + size / 2, // vértice inferior izquierdo
      x + size * 0.866, y + size / 2  // vértice inferior derecho
    );
  }
}
