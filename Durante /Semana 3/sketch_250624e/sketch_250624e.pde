int h;
int m;
int s;

String timeString;

void setup() {
  size(1000, 1000);
  frameRate(1);
  textAlign(CENTER);
}

void draw() {
  background(0);

  h = hour();
  m = minute();
  s = second();

  timeString = nf(h, 2) + ':' + nf(m, 2) + ':' + nf(s, 2);
  println(timeString);
  
  text(timeString, width/2, height/2);
}
