int incrementos = 50;

void setup() {
  size(1000, 1000);
  background(255);
  noLoop();
}

void draw() {
  //variable condicion // incremento
  for(int y = 0; y <= height; y+= incrementos) {
    for(int x = 0; x <= width; x+= incrementos) {
      noStroke();
      fill(random(150, 255), random(100, 255), random(150, 200));
      rect(x, y, incrementos, incrementos);
      ellipse(x, y, incrementos, incrementos);
      
    }
  }
}
      
