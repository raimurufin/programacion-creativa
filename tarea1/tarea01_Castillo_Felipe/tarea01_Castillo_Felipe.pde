//Tarea 1
//Autor: Felipe Castillo
//Codigo Principal
Orb alpha;

void setup(){
  noStroke();
  size(595, 842);
  alpha = new Orb(10, 10);
}

void draw(){
  background(0);
  if (mousePressed) {
    if (mouseButton==LEFT) {
      background(255);
    }
    if (mouseButton==RIGHT) {
      background(255);
    }
  }
  alpha.cuadrado();
  alpha.circulos();
  alpha.hypnosis();
  alpha.keyPressed();
}
