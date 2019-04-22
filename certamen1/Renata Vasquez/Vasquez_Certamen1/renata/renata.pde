//Certamen 1
//Alumna: Renata Vásquez
//Profesor: Nicolás Troncoso
//Fecha: 8/04/2019

//INSTRUCCIONES:
//1) Al mover el mouse a lo largo del canvas el color de la figura cambia.
//2) Al mantener apretado el mouse la figura crece pero deja de rotar, una vez suelto el mouse, esta vuelve a rotar normalmente.
//3) Al mantener cualquier tecla apretada (menos barra espaciadora) la figura comienza a rotar más rápido.
//4) AL apretar la barra espaciadora la figura se detiene.
//5) Para reiniciar el canvas se apreta la tecla Z seguida de X.


triangulo t1;


void setup() {
  size(800, 800);
  background (0);
  colorMode(RGB);
  frameRate(30);

  t1 = new triangulo();
}

void draw() {

  t1.movimiento(1, 6); // (float s , float v) donde s = sentido y la velocidad de rotación de la figura / v = la cantidad de vértices de la figura.
  t1.caracteristicas(0, 1/2);   // (int c, int g) donde c = gama de color de la línea / g = grosor de la línea.
  t1.keyPressed();
  t1.mousePressed();
  t1.reiniciar();
}
