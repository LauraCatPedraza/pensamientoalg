int numBolas = 20;

float[] xPositions;
float[] yPositions;

float[] xVelocidad;
float[] yVelocidad;

color[] coloresBolas;

void setup() {
  size(800, 600); 
  noStroke();

  xPositions = new float[numBolas];
  yPositions = new float[numBolas];
  xVelocidad = new float[numBolas];
  yVelocidad = new float[numBolas];
  coloresBolas = new color[numBolas];

  //bucle
  for (int i = 0; i < numBolas; i++) {
    //posicion
    xPositions[i] = random(width);
    yPositions[i] = random(height);

    //velocidad
    xVelocidad[i] = random(-5, 5); 
    yVelocidad[i] = random(-5, 5); 
    
    coloresBolas[i] = color(255);
  }
}

void draw() {
  
  for (int i = 0; i < numBolas; i++) {
    
    xPositions[i] = xPositions[i] + xVelocidad[i];
    yPositions[i] = yPositions[i] + yVelocidad[i];

    if (xPositions[i] >= width || xPositions[i] < 0) {
      xVelocidad[i] = xVelocidad[i] * -1;
      
      //colores
      coloresBolas[i] = color( random(255), random(255), random(255) );
    }

    if (yPositions[i] >= height || yPositions[i] < 0) {
      yVelocidad[i] = yVelocidad[i] * -1;
      
      coloresBolas[i] = color( random(255), random(255), random(255) );
    }

    fill(coloresBolas[i]);
    ellipse(xPositions[i], yPositions[i], 50, 50);
  }
}
