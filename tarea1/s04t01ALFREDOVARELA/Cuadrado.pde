class Cuadrado {

  int intervalo = 40;// separacion lineas que siguen el mouse
  int d = 40; // distancia cuadrados entre ellos
  int alfa = 70; 
  int beta = 5;
  int t = 0; //variables para cambio de color a negro
  int u = 255; //variables para cambio de color a blanco
  int o = 0;
  int p = 5;
  int q = 750; //coordenada
  int s = 500; //coordenada


  void press() { //Al presionar el mouse cambiamos de color entre negro y blanco
    if (mousePressed) {
      u = 0;
      o = 255;
    }
  }

  void linea() {//Crea las lineas que siguen al mouse
    stroke(t);
    strokeWeight(3);
    for (int i = p; i <= height; i += intervalo) {
      line(0, i, mouseX, mouseY);
      line(width, i, mouseX, mouseY);
    }

    for (int i = p; i <= width; i += intervalo) {
      line(i, 0, mouseX, mouseY);
      line(i, height, mouseX, mouseY);
    }
  }

  void cuadrado() {//Crea el cuadrado principal
    for (int i=alfa; i>0; i--) {

      if (i%2==1) {
        fill(u);
      } else {
        fill(o);
      }
      rect(width/2, height/2, d+i*width*0.025, d+i*width*0.025);
    }
  }

  void cuadrado2() {
    for (int i=beta; i>0; i--) {

      if (i%2==1) {
        fill(u);
      } else {
        fill(o);
      }
      rect(100, 100, mouseX, i*width*0.025);
    }
  }

void cuadrado3() {
    for (int i=beta; i>0; i--) {

      if (i%2==1) {
        fill(u);
      } else {
        fill(o);
      }
      rect(s, 100, i*width*0.025, mouseY);
    }
  }
  
  void cuadrado4() {
    for (int i=beta; i>0; i--) {

      if (i%2==1) {
        fill(u);
      } else {
        fill(o);
      }
      rect(100, q, i*width*0.025, mouseY);
    }
  }
  void cuadrado5() {
    for (int i=beta; i>0; i--) {

      if (i%2==1) {
        fill(u);
      } else {
        fill(o);
      }
      rect(s, q, mouseX, i*width*0.025);
    }
  }
  void cambiocolor() {
    keyPressed(); 
    {
      if (key == 'h')
        t = 255;
    }
  }

  void cambiocolor2() {
    keyPressed(); 
    {
      if (key == 'l')
        t = 0;
    }
  }
  void reiniciar(){ //se reinicia el canvas
    if (key == 'm')
    setup();
  }
}
