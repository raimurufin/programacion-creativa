/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/
Cdo w;

void setup() {
  size(500, 500);
  //rectMode(CENTER); //las líneas de código que no van, no se escriben.


  w = new Cdo();
}

void draw() {

  background(255);

  // Los métodos se escriben con minúsculas
  w.CreaCdo();
  w.CreaCCdo();
  w.Press();
}
