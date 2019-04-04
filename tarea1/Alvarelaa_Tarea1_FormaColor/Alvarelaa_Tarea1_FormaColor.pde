Cuadrado w;

void setup() {
  size(595, 842);
  rectMode(CENTER);


  w = new Cuadrado();
}  

void draw() {

  background(0);
  

  w.press();
  w.cuadrado();
  w.cuadrado2();
  w.cuadrado3();
  w.cuadrado4();
  w.cuadrado5();
  w.linea();
  w.cambiocolor();
  w.cambiocolor2();
  w.reiniciar();
  
 if (keyPressed) {
    if (key == 'z') {
      saveFrame("export.pdf");
    }
  }
}
