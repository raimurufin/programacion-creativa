/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Figura f;
Figura f2;
Figura f3;
Figura f4;


void setup() {
  background(214, 214, 214);

  size(800, 900);

  f = new Figura(300, 300, 1);
  f2 = new Figura(600, 600, 1);
  f3 = new Figura(300, 600, 1);
  f4 = new Figura(300, 600, 1);
}
void draw() {

  //llamada a ellipses

  f.crear();
  f2.crear();
  f3.crear();
  f4.crear();

  //llamada a accion rebote

  f.rebote();
  f2.rebote();
  f3.rebote();
  f4.rebote();


  f.mover();
  f2.mover();
  f3.mover();
  f4.mover();

  //intersecciones de puntos

  f.con(f2);
  f3.con(f4);
  f2.con(f4);
}
void mousePressed() {
  background(random(0, 255));

}
