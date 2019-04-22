class Cdo {
  int num = 500;
  float[] xPos = new float[num]; //array
  float[] yPos = new float[num];//array
  float posX;
  float posY;
  float sizeX, sizeY;
  float vel;
  float desplazamientoY;
  float desplazamientoX;


  void CreaCdo() {
    rectMode(CENTER);
    frameRate(50);
    smooth();

    posX  = width/2;
    posY  = height/2;
    sizeX = 50;
    sizeY = 50;
    //radio = 200;
    desplazamientoY = 1;
    desplazamientoX = 1;


    xPos[0] = width/2  + sin(vel); 
    yPos[0] = height/2 - cos(vel);

    for (int i=num-1; i>1; i--) {

      stroke(0, 0, 9);
      fill(255, 0, 0, 255 - 2*i);
      rect(xPos[i], yPos[i], i, i); // Cuadrado que aumentara de tamano
    }


    for (int i=num-1; i>0; i--) {

      xPos[i] = xPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array
      yPos[i] = yPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array
    }

    vel = frameCount*10.000;
    posX = posX+desplazamientoX; // movimiento del circulo
    posY = posY+desplazamientoY;
  }

  void Press() {
    keyPressed(); 
    {
      if (key == 'l')
        for (int i=num-1; i>0; i--) {
          xPos[i] = xPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array
          yPos[i] = yPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array;
        }
    }
  }
}
