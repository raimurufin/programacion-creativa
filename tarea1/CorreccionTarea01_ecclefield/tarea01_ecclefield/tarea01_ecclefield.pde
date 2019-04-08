/////////////////////////////////// INSTRUCCIONES ////////////////////////////////////////
/*
Descripción:
En este programa se visualizan dos representaciones de carácter “Hipnótico”
que se pueden seleccionar entre ellas con la ayuda del teclado, además, tienen
la propiedad de alternar sus colores entre negativo o positivo.


Tecla “w”: Con esta tecla se puede alternar entre sketch, cambiando completamente la
          forma y composición de la visualización.
Tecla “e”: Con esta tecla se puede cambiar los colores del primer sketch a sus
          colores en negativo.
Tecla “r”: Con esta tecla el sketch se reinicia, regresando al sketch nro.1
          con sus colores originales.

*/
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


ClassTarV2 a;       // se llama a la clase con la letra "a"

void setup(){
  size(842,595);
  //beginRecord(PDF,"sketch4.pdf");                // Comenzar a grabar el frame
  a = new ClassTarV2(tamX, tamY, bn, nb);          // LLamar constructor y sus especificar atributos

}

void draw(){
  background(colBackR,colBackG,colBackB);        // Color de fondo cambiante con interacciones

/////////////////////////// VARIABLES ANIMACIONES //////////////////////////////

// Animación para cambiar el tamaño X de los rectangulos que giran al centro.
if (tamX < 100){  tamX = tamX + v;}
else if(tamX >= 100){ v = -1;  tamX = tamX + v;}
if(tamX <= 10){ v = 1;}

// Animación para cambiar el tamaño Y de los rectangulos que en el segundo anillo.
if (tamX2 < 50){ tamX2 = tamX2 + v2;}
else if(tamX2 >= 50){ v2 = -1; tamX2 = tamX2 + v2;}
if(tamX2 <= 10){v2 = 1;}


/* Primer sketch, bn = juego de colores blanco y negro
                  nb = juego de colores opuesto, negro y blanco
                  tamX y tamX2 = Variables para el cambio de tamaño
*/
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

// interacción para cambiar el sketch, forma
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


// interacción para reiniciar el sketch
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

// interacción para cambiar los colores del primer sketch
    if (keyPressed) {
        if (key == 'e' || key == 'E') {

          bn = 0;
          nb = 255;
          colBackR = 255;
          colBackG = 255;
          colBackB = 255;

          }
        }

/* interacción para pausar la grabacion y guardar en pdf, tambien
para salir de sketch de processing
*/
      if (keyPressed) {
          if (key == 'p' || key == 'P') {
            endRecord();    // Guarda el frame en .pdf
            exit();         // Salir del sketch
            }
          }
}
