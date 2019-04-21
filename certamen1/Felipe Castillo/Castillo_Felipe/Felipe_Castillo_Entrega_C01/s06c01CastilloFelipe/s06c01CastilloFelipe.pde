//Autor: Felipe Castillo
//Certamen 01/Programación Creativa
//Profesor: Nicolás Troncoso
//Universidad del Desarrollo
//Código Principal

Orb alpha;

void setup() {
  size(1920, 1080);
  alpha = new Orb (10, 10);
  background(0);
  frameRate(60);
}

void draw() {
  alpha.metodo();
  alpha.keyPressed();

}
