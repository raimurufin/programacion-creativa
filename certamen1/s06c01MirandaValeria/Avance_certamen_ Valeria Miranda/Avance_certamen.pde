Linea l;
float x;
float y;

void setup() {
 colorMode(RGB,100);
  background(100);
  size(600, 600);
  l = new Linea();
  x = width/2;
  y = height/2;
}

void draw() {

  l.display();
}
