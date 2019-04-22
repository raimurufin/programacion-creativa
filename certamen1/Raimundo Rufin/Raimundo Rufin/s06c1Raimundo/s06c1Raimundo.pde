// CERTAMEN 01 - PROGRAMACION CREATIVA
/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Punto p;
Punto p2;
Punto p3;

void setup() {
  size(500, 500);


  p = new Punto(random(500), random(500), 1);
  p2 = new Punto(random(500), random(500), -1);
  p3 = new Punto(random(500), random(500), 1);
}
void draw() {
  background(0);


  p.run();
  p2.run();
  p3.run();

  p.con(p2);
  p2.con(p3);
  p3.con(p);


  p.tri(p2, p3);
}
