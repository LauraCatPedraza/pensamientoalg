size(600, 600);
  background(204, 80, 100);

//Cabeza
  fill(255);
  ellipse(300, 350, 300, 320);

//mancha negra izq
  fill(0);
  arc(300, 350, 300, 320, PI + QUARTER_PI, TWO_PI);

// mancha negra der
  arc(300, 350, 300, 320, PI, PI + QUARTER_PI);

//lunar naranja mejilla
  fill(190, 110, 50);
  ellipse(320, 410, 20, 20);

//mancha blanco frente
  fill(255);
  triangle(280, 350, 320, 350, 300, 260); 
  
//mancha naranja frente
  fill(190, 110, 50);
  triangle(290, 290, 310, 290, 300, 260); 
  
//orejas
  fill(0);
  triangle(180, 180, 240, 200, 220, 100); // izq
  triangle(360, 200, 420, 180, 380, 100); // der
  
// interior oreja izq
  fill(190, 110, 50);
  triangle(180, 180, 215, 190, 210, 120);
  
//ojos
  fill(170, 160, 60);
  ellipse(240, 330, 60, 80); // izq
  ellipse(360, 330, 60, 80); // der

// Pupilas negras
  fill(0);
  ellipse(240, 330, 15, 60);
  ellipse(360, 330, 15, 60);

//nariz
  fill(255, 150, 170);
  triangle(290, 390, 310, 390, 300, 410);

//boca
  strokeWeight(2);
  line(300, 410, 300, 420); // linea mitad
  noFill();
  arc(290, 430, 20, 20, PI, TWO_PI); // izq
  arc(310, 430, 20, 20, PI, TWO_PI); // der

//bigotes
  stroke(0);
  strokeWeight(1);

// izq
  line(220, 400, 150, 390);
  line(220, 410, 150, 410);
  line(220, 420, 150, 430);

// der
  line(380, 400, 450, 390);
  line(380, 410, 450, 410);
  line(380, 420, 450, 430);
