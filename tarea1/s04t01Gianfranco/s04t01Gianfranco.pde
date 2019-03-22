/*Programación creativa
 s04t01Gianfranco*/

Clase c;

void setup() {
  size(595, 842);
  c=new Clase();
  background(0);
  stroke(255);
  c.fondolineas();
  c.rombo();
  stroke(0);
  c.lineasrombo();
}

void draw() {
  c.funcion1();
  c.funcion2();
  c.funcion3();
}


/*Guardar frame como imagen*/
void keyPressed() {
  if (key==' ') {
    saveFrame("Tarea1_Gianfranco-###.png");
  }
}
