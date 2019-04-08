//importar libreria pdf
import processing.pdf.*;


Punto p;
Punto p2;

void setup() {
  size(595, 842);
  // comenzar PDF
  beginRecord(PDF, "print.pdf");
  background(0);

  p = new Punto(random(width), random(height));
  p2 = new Punto(random(width), random(height));
  
  
}
void draw() {
  p.run();
  p2.run();

// Terminar PDF y salir
  if (key == 's' || key == 's') {
    endRecord();
    exit();
  }
}

//borrar todo
void mousePressed() {
  background(0);
}