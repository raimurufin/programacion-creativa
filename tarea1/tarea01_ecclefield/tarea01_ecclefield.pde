/////////////////////////////////// INSTRUCCIONES ////////////////////////////////////////

// test
/////////////////////////////////// VARIABLES ////////////////////////////////////////
import processing.pdf.*;

float tamX;            // Variable para tamaño en X
float tamX2;           // Variable para tamaño en X
float tamY;            // Variable para tamaño en y
int v = 1;             // Variable para el movimiento sketch 1
int v2 = 1;            // Variable para el movimiento sketch 2

boolean sketch_01 = true;         // Boleana para activar y desactivar sketch
boolean sketch_02 = false;        // Boleana para activar y desactivar sketch

int colBackR = 0;       // Variable para alterar el color de fondo rojo
int colBackG = 0;       // Variable para alterar el color de fondo verde
int colBackB = 0;       // Variable para alterar el color de fondo azul

int bn = 255;        // Variable para alterar el color de fondo
int nb = 0;          // Variable para alterar el color de fondo

 ////////////////////////////////////////////////////////////////////////////////


ClassTarV2 a;

void setup(){
  size(842,595);
  //beginRecord(PDF,"sketch4.pdf");                // Comenzar a grabar el frame
  a = new ClassTarV2(tamX, tamY, bn, nb);        // LLamar constructor y sus especificar atributos

}

void draw(){
  background(colBackR,colBackG,colBackB);        // Color de fondo cambiante con interacciones

/////////////////////////// VARIABLES ANIMACIONES //////////////////////////////


if (tamX < 100){  tamX = tamX + v;}
else if(tamX >= 100){ v = -1;  tamX = tamX + v;}
if(tamX <= 10){ v = 1;}


if (tamX2 < 50){ tamX2 = tamX2 + v2;}
else if(tamX2 >= 50){ v2 = -1; tamX2 = tamX2 + v2;}
if(tamX2 <= 10){v2 = 1;}


// Primer sketch
if (sketch_01) {
  a.rotObj(tamX, bn, nb);
  a.segAnillo(bn, nb);
  a.terAnillo(tamX2, bn, nb);
  a.cuarAnillo(bn, nb);
  a.quinAnillo(bn,nb);
}

// Segundo Sketch, se activa con la tecla b
if (sketch_02) {
  a.efect_01();
  a.efect_02();
  a.efect_03();
  a.efect_04();

}
}

/////////////////////////////////////INTERACCIONES///////////////////////////////////////////

void keyPressed() {
  if (keyPressed) {
      if (key == 'w' || key == 'W') {

        sketch_01 = false;
        sketch_02 = true;

        colBackR = 255;
        colBackG = 255;
        colBackB = 255;

      }
    }

    if (keyPressed) {
        if (key == 'r' || key == 'R') {

          sketch_01 = true;
          sketch_02 = false;
          bn = 255;
          nb = 0;
          colBackR = 0;
          colBackG = 0;
          colBackB = 0;

        }
      }

    if (keyPressed) {
        if (key == 'e' || key == 'E') {

          bn = 0;
          nb = 255;
          colBackR = 255;
          colBackG = 255;
          colBackB = 255;

          }
        }

      if (keyPressed) {
          if (key == 'p' || key == 'P') {
            endRecord();    // Guarda el frame en .pdf
            exit();         // Salir del sketch
            }
          }

}
