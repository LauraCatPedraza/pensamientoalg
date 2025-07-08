int spacing;

void setup() {
  size(1000, 1000);
  background(0);
  
  spacing = 30;
}

void draw() {
  int x = spacing;
  for (x = spacing; x <   width; x+= spacing) {
    ellipse(x, 50, 20, 20);
    println(x);
  }
}
