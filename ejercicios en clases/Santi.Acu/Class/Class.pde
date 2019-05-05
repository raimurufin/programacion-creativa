

Nieve[] nieve = new Nieve[150];// Array, cantidad de copos


void setup() {
  size(600, 600);//tamaño del canvas
  for (int i = 0; i < nieve.length; i++) {//forloop
    nieve[i] = new Nieve();//Utilizar la clase nieve
  }
}
void draw() {
  background(255);//Color de fondo
  for (int i = 0; i < nieve.length; i++) {
    nieve[i].copo();//Llamar a la variable copo
    nieve[i].gravedad();//Llamar a la variable gravedad
  }
}
void keyPressed() {
  if ( key=='p') {
    saveFrame("img_###.jpg");
  }
}
