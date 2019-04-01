// Universidad del Desarrollo - Facultad de Diseño - Diseño Digital - 5to semestre
// Programación crativa - 2019
// Gabriela Navarro Risopatrón
// gabrielas4t00

//Declaración de variable y clase
import processing.pdf.*;
boolean guardarTIFF;
float z, r;
Optica o;


//inicialización
void setup() {
  size(600, 600);
  guardarTIFF = false;
  o = new Optica();
  background(0);
}

//inicialización ámbito dibujo
void draw() {
  o.circulo();
  o.circul(); 
  o.circu(); 
  o.circ(); 
  o.cir();
  o.keyPressed();

  if (guardarTIFF) {
    beginRecord(PDF, "gabrielas4t00.tiff");
    if (guardarTIFF) {
      endRecord();                                                 // Detiene el proceso
      guardarTIFF = false;
    }
  }
}
//inicialización ámbito tecla
void keyPressed() {
  if (key == 's') {
    guardarTIFF = true;                                           // Guarda el proceso
    saveFrame("gabrielas4t00.tiff");
  }
}
