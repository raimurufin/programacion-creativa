//Código Clase
class Orb {
  float y = 0;        //Variable Posición Y
  float tamano = 20;  //Variable Tamaño Circulo
  float vel = 0.0001; //Variable Velocidad
  float grosor = 0.5;   //Variable Grosor Circulo

  Orb (int x, int y) {

  }

  //Método que genera los Circulos

  void metodo() {
    translate(width/2, height/2);       //Traslado al centro del Canvas
    for (float i = -10; i < 10; i++) {  //For Loop que crea los Circulos
      rotate(millis() * vel);           //Variable de Rotación
      fill(0);
      ellipse(i, y, tamano, tamano);
      strokeWeight(grosor);
      stroke(255);
      y = y + 0.01;
      tamano = tamano + 0.0001;

  //Controlador del Movimiento Y

      if (mousePressed) {
        if (mouseButton == LEFT) {    //Aumento de Distancia del Centro
          y = y + 0.1;
        }
        if (mouseButton == RIGHT) {   //Reducción de Distancia del Centro
          y = y - 0.1;
        }
      }
    }
  }

  //Comandos de Teclado
/*
Al momento de modificar atributos en un programa por medio de manupuladores
esternos como el teclado, esto se debe hacer con el método global modificando
variables globales que entran como parámetros locales a los métodos de la clase.
*/

  void keyPressed() {           //Aumento de Velocidad de Rotación
    if (key == 'w') {
      vel = 0.001;
    }
    if (key == 's') {           //Reducción de Velocidad de Rotación
      vel = 0.0001;
    }
    if (key == '1') {           //Comando de Grosor 1
      grosor = 1;
    }
    if (key == '2') {           //Comando de Grosor 2
      grosor = 2;
    }
    if (key == '3') {           //Comando de Grosor 3
      grosor = 3;
    }
    if (key == 'g') {           //Aumento de Tamaño de Circulos
      tamano = tamano + 0.1;
    }
    if (key == 'p') {           //Reducción de Tamaño de Circulos
      tamano = tamano - 0.1;
    }
  }
}
