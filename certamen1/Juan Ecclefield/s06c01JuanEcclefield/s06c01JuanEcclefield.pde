/*
Alumno: Juan Ecclefield G.
Asignatura: Programación Creativa
Fecha: 08/04/2019

Artista referente: Dave Whyte
Fuente: https://www.instagram.com/davebeesbombs/?utm_source=ig_embed
        https://www.instagram.com/p/BslTILaHYwV/
        https://www.instagram.com/p/BrK1DcNCcZX/


INSTRUCCIONES:
  1- Tecla q/Q: Cambia el display del sketch1 al sketch2
  2- Tecla w/W: Cambia el display del sketch2 al sketch1

*/

// Variables para rotaciones
int rot;
float rot2;
float rot3;
float rot4;
float rot5;

// Variables para cambiar estados.
float estado;

// Booleanas para ocultar y mostrar metodos.
boolean sketch1 = false; // Display sketch simple.
boolean sketch2 = true; // Display sketch Complejo.

boolean ciclo3 = false; // Ciclos que varían segun figura y fondo.
boolean ciclo4 = false; // Ciclos que varían segun figura y fondo.
boolean ciclo1 = true; // Ciclos que varían segun figura y fondo.
boolean ciclo2 = false; // Ciclos que varían segun figura y fondo.

ClassMov_02 a; // LLamar la clase

// Variables para color del fondo
int blanco = 255;
int negro = 0;
int fondo = 255;



void setup() {
  size(842, 595);
  a = new ClassMov_02(rot, rot2, rot3, rot4, rot5); // LLamar al constructor y sus parametros.
}

void draw() {

  background(fondo);
  rot = frameCount;
  rot2 = rot2 + 0.995; // velocidad Rotacion triangulos.
  rot3 = rot3 + 0.747; // velocidad Rotacion hexagonos.
  rot4 = rot4 + 1; // velocidad Rotacion triangulos.
  rot5 = rot5 + 0.749; // velocidad Rotacion rectangulos.

  if (rot > 180) {
    frameCount = 0;
  } // Resetear el contador de frames ps.
  estado = estado + 0.988; // Contador que define el tiempo de cada ciclo.

  // Variables para definir el rango de tiempo de cada ciclo (Rotacion de las figuras y si display).

  if (sketch1 == true) { // Todo esto ocurrirá mientras el sketch 1 (Simple) este activo.
    if (ciclo1 == true) { // Estado del ciclo y display de los metodos.
      a.diagramacion1(rot); // grilla de cuadrados negros que giran.
      a.diagramacion2(rot); // grilla de cuadrados negros que giran.
    }

    if (ciclo2 == true) {
      a.diagramacion3(rot); // grilla de cuadrados blancos que giran.
      a.diagramacion4(rot); // grilla de cuadrados blancos que giran.
    }

    if (rot > 90 && sketch1 == true) { // Los ciclos estan limitados por el tiempo y el angulo de rotacion.
      ciclo1 = false; // por lo tanto, si el objeto supera una cierta cantidad de tiempo rotando.
      ciclo2 = true; // se alteran los estados de los ciclos que son los que varian el display de los métodos.
      fondo = negro; // Estado de color del fondo.

    }

    if (rot < 90 && sketch1 == true) { // Los ciclos estan limitados por el tiempo y el angulo de rotacion.
      ciclo1 = true; // por lo tanto, si el objeto supera una cierta cantidad de tiempo rotando.
      ciclo2 = false;
      fondo = blanco;
    }
  }

  //////////////////////////// SEGUNDO SKETCH /////////////////////////////////

  if (sketch2 == true) {
    a.diagramacion5(rot4);
    ciclo1 = false; // Cambia el estado de un ciclo a falso, desactivando el display de sus métodos.
    ciclo2 = false; // Cambia el estado de un ciclo a falso, desactivando el display de sus métodos.
    fondo = blanco; // Estado de color del fondo.

    if (estado > 108) { // Los ciclos estan limitados por el tiempo y el angulo de rotacion.
      ciclo4 = true; // por lo tanto, si el objeto supera una cierta cantidad de tiempo rotando.
    } // se alteran los estados de los ciclos que son los que varian el display de los métodos.

    if (estado > 238) { // Los ciclos estan limitados por el tiempo y el angulo de rotacion.
      ciclo4 = false; // por lo tanto, si el objeto supera una cierta cantidad de tiempo rotando.
      estado = 0; // se alteran los estados de los ciclos que son los que varian el display de los métodos.
    }

    if (ciclo4 == true && sketch2 == true) { // condicion que maneja el displey de algunos metodos del sketch.
      a.diagramacion6(rot2); // Display metodo de triangulos.
      a.diagramacion7(rot2); // Display metodo de triangulos.
      a.diagramacion8(rot3); // Display metodo de rectangulos blancos.
      fondo = negro; // Estado de color del fondo.
    }

    if (ciclo4 == false && sketch2 == true) { // condicion que maneja el displey de algunos metodos del sketch.
      a.diagramacion9(rot5); // Display metodo de rectangulos negros.
      fondo = blanco; // Estado de color del fondo.
    }
  }
}


// Interacciones

void keyPressed() {

  // Tecla para cambiar al sketch 1 (Simple)
  if (keyPressed) {
    if (key == 'q' || key == 'Q') {
      sketch1 = true;
      sketch2 = false;

    }
  }

  // Tecla para cambiar al sketch 1 (Complejo)
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      sketch1 = false;
      sketch2 = true;
    }
  }


}
