/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Lineas l;

void setup() {
  colorMode(RGB, 100);
  background(0); //fondo negro inicial
  size(800, 800);
  l = new Lineas();
}

void draw() {
  l.display();
}

//En caso de presionar las teclas 'b' o 'w' el fondo del canvas cambiará a negro o blanco, respectivamente, lo cual produce un cambio en como los colores pertenecientes a las figuras son vistos.
//Además, permite reiniciar la figura.
void keyPressed() {
  if (key == 'b') {
    background(0); //black - SATURATED COLORS
  }
  if (key == 'w') {
    background(100); //white - PASTEL COLORS
  }
}
