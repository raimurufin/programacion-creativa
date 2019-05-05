// Universidad del Desarrollo - Facultad de Diseño - Diseño de Interacción Digital
// Programación Creativa- 2019
// Gabriela Navarro Risopatrón

//ÁMBITO GLOBAL
Particula[] p;
int i;
//INICIALIZACIÓN;
void setup() {
  size(600, 600);
  background(0);
  p = new Particula[200];  
  for ( int i= 0; i < p.length; i++) {
    p[i] = new Particula(random(-8, 8), random(-8, 8));
  }
}
//INICIALIZACIÓN ÁMBITO DIBUJO
void draw() {
  for ( int i = 0; i < p.length; i ++) {
    p[i].display();
    p[i].mover();
    p[i].bordes();
  }
}
