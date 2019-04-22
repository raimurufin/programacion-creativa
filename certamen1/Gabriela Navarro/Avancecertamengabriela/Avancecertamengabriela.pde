// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 5to semestre
// Programación crativa - 2019
// Gabriela Navarro Risopatrón
// gabrielas6c00

//Declaración de variable y clase

Espiral e;


//Inicialización
void setup() {
  background(0);
  size (600, 600);
  e = new Espiral();
}

//Inialización ámbito dibujo
void draw() {
  e.espiral();
  //e.movimiento();
}
