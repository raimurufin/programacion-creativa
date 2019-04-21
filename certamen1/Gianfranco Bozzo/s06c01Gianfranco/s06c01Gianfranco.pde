/*Certamen 1 Programación Creativa
 Gianfranco Bozzo*/

Clase c1, c2;

void setup() {

  size(1800, 900);
  background(255);
  c1=new Clase();
  c2=new Clase();
}

void draw() {
  c1.circuloreal(mouseX, mouseY);
  c2.circuloreflejo(mouseX, mouseY);
  c1.tamanocirculo();
  c2.tamanocirculo();
}

/*Cambiar color de ellipses y background*/
void keyPressed() {
  if (key==' ') {
    background(random(0, 255), random(0, 255), random(0, 255));
  }
  if (key=='q') {
    stroke(random(0, 255), random(0, 255), random(0, 255));
  }
}
