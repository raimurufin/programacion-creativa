

int cuadrado = 10;
float[] x; //Array eje X
float[] y; //Array eje Y

void setup() {
  size(600, 600); //Tamaño canvas
  background(255); //Color de fondo
  fill(255, 50, 88);
}
void draw() {

  x = new float[cuadrado];//array variable para la cantidad de cuadrados
  y = new float[cuadrado];//array variable para la cantidad de cuadrados

  for (int i=0; i < x.length; i++) { //For loop
    x[i] = random(0, 600); //posicion aleatoria eje X
    y[i] = random(0, 600);//posicion aleatoria eje
  }
  if (mousePressed) {
    for (int i=0; i < x.length; i++) {//For loop
      rect(x[i], y[i], 30, 30); //rect

    }
  }
}
