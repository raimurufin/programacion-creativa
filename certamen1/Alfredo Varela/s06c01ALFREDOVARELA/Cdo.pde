class Cdo {

  int num = 500;
  float[] xPos = new float[num]; //array
  float[] yPos = new float[num]; //array
  float posX;
  float posY;
  float sizeX, sizeY;
  float vel;
  float desplazamientoY;
  float desplazamientoX;
  float angulo = 0;

  void CreaCdo() {
    rectMode(CENTER);

    xPos[0] = width / 2 + sin(vel);
    yPos[0] = height / 2 - cos(vel);


    for (int i = num - 1; i > 1; i--) {
      frameRate(100);
      stroke(0, 0, 9); //color de borde
      fill(49, 170, 193, 250 - 1 * i); //color de relleno que aumtenta hasta el 250 y se detiene. por eso se ve que el cyan se detiene.
      rotate(angulo);
      rect(xPos[i], yPos[i], i, i); // Cuadrado que aumentara de tamano y que aparece infinitas veces
    }

    for (int i = num - 1; i > 0; i--) { // array que permite la creacion de nuevos cuadrados

      xPos[i] = xPos[i - 1];
      yPos[i] = yPos[i - 1];
    }

    vel = frameCount * 10.000; //velocidad con la que aparecen los cuadrados
  }

  void CreaCCdo() { //crea cuadrado del centro negro para hacer la profundidad
    rectMode(CENTER);
    fill(0);
    rect(250, 250, 20, 20);
  }

  void Press() {
    keyPressed(); {
      if (key == 'l') // Al presionar l, camba la secuencia con la que se crean los cuadrados
        for (int i = num - 1; i > 0; i--) { //Este array hace que cambie la composicion de la aparicion de los cuadrados
          xPos[i] = xPos[i - 1];
          yPos[i] = yPos[i - 1];
        }
      if (key == 'k') {
        angulo = angulo + 0.000004; //Modifica la velocidad con la que gira si, aumentamos el valos girara de manera descontrolada
      }
    }
  }
}
