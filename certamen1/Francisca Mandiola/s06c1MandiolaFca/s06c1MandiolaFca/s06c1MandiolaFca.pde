/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/



//declarar figura
Figura f;

void setup() {
  //configuración tamaño
  size(400, 400);
  f = new Figura();
}

void draw() {
  //Color fondo,Negro
  background(00);

  f.pelota();
  //llamar figura


  //exportar imagenes A4
  if (keyPressed) {
    if (key == 'p') {
      saveFrame("export.pdf");
    }

  }
}
