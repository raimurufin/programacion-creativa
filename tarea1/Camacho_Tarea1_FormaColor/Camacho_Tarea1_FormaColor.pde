Cuadrado a;

void setup() {
  size(595, 842);
  rectMode(CENTER);
  a=new Cuadrado();
}  

void draw() {
  background(255);
  a.Rotacion1();
  a.Rotacion2();
  a.Rotacion3();
  a.Rotacion4();
  a.click1();
  a.linea1();
  a.linea2();
  a.colorLinea();
  if (keyPressed) {
    if (key == 'p') {
      saveFrame("export.pdf");
    }
  }
}
