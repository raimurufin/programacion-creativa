// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 5to semestre
// Programación crativa - 2019
// Gabriela Navarro Risopatrón
// gabrielas6c00

//Declaración de variable y clase

/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Espiral e;
float x, y, w, r;
int n;

//Inicialización
void setup() {
  background(0);
  size (650, 650);
  e = new Espiral();
}

//Inialización ámbito dibujo
void draw() {
  e.espiral();
  e.circulo(x, y, w, r, n);
}

void keyPressed() {
  if ( key =='2') {
    background(255);
    // e.circulo(x, y, w, r, n);
    // e.espiral();
  }
  if ( key =='3') {
    background(0);
    // e.espiral();
    // e.circulo(x, y, w, r, n);
  }
}
