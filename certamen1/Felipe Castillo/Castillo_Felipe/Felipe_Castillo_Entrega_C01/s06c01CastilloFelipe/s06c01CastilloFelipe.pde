//Autor: Felipe Castillo
//Certamen 01/Programación Creativa
//Profesor: Nicolás Troncoso
//Universidad del Desarrollo
//Código Principal

/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
 Si bien está en un archivo README.md este es una copia de la descripción que aquí que genera, y no al revés
*/

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
