class Clo {

  int num = 100;
  float[] xPos = new float[num];//array
  float[] yPos = new float[num];//array
  float posX;
  float posY;
  float sizeX, sizeY;
  float vel;
  float radio;
  float desplazamientoY;
  float desplazamientoX;

  void Cloo() {

    rectMode(CENTER);
    frameRate(30);

    posX  = width/2;
    posY  = height/2;
    sizeX = 50;
    sizeY = 50;
    radio = 200;
    desplazamientoY = 1;
    desplazamientoX = 1;


    for (int i=num-1; i>0; i--) {
      xPos[i] = xPos[i-1] ; 
      yPos[i] = yPos[i-1] ;
    }

    xPos[0] = width/2  - sin(vel);
    yPos[0] = height/2 + cos(vel)*radio;
    for (int i=num-1; i>0; i--) {
      stroke(0, 0, 9);
      fill(mouseX, mouseY, random(220, 250), 255 - 5*i);
      rect(xPos[i], yPos[i], i, i);
    }
    vel  = frameCount*0.05;

    for (int i=num-1; i>0; i--) {

      xPos[i] = xPos[i-1] ; 
      yPos[i] = yPos[i-1] ;
    }
  }
}
