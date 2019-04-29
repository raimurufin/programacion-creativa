cuadrado[] c;

void setup() {
  size (350, 350);
  c = new cuadrado[5]; 

  for (int i = 0; i < c.length; i++) {
    c[i] = new cuadrado(random(255), random(200));
  }
}

void draw() {
  background (255);

  for (int i = 0; i < c.length; i++) {
    c[i].colores();
    c[i].trasladar();
    c[i].keyPressed();
  
 
  }
}