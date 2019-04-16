//INICIO DEL CODIGO

//se declaran las variables

float x; //valor en el eje x
float y; //valor del eje y
float tamano; //tamaño de los cuadrados 
float al; //alto cuadrado
float an; // ancho cuadrado
float a; 
float c;
color b = color (255); // color 
float d;
float e;


class cuadrado {

  //Se "declara el constructor"
  cuadrado(int t) { 
    x= width/2;
    y= height/2; 
    tamano = t;

    al = 30;
    an =30;
    a = 842;
    c = 50;
    d =100;
    e= 5;
  }

  void fondo () {
    if (mousePressed == true) {
      background(0);
    } else {
      background (255);
    }
  }

  void pos() {  //pos = abreviatura de posición 

    for (int x=2; x<=a; x+=c) {
      for (int y=0; y<=a; y+=c) {   
        noStroke();
        fill(0);
        rect(x, y, al, an);
      }
    }
  }

  void grilla(int x, int y, int n, int space, float al, float an) {  //pos = abreviatura de posición 

    for (int x1=0; x1<n; x1++) {
      for (int y1=0; y1<n; y1++) {   
        noStroke();
        fill(0);
        rect(x +(x1*space), y + (y1*space), al, an);
      }
    }
  }


  void pos2 () {
    for (int x=2; x<=a; x+=40) {
      for (int y=0; y<=a; y+=40) {  
        noStroke();
        fill(c, c, c);
        rect(x, y, al, an);
      }
    }
  }


  void pos3() {
    if (key == 'x') {
      for (int x=2; x<=a; x+=c) {
        for (int y=0; y<=a; y+=c) {   
          noStroke();
          fill(b);
          rect(x, y, al, an);
        }
      }
    }
  }

  void pos4() {
    if (mousePressed == true) {

      for (int x=15; x<=a; x+=c) {
        for (int y=13; y<=a; y+=c) {   
          noStroke();
          fill(b);
          rect(x, y, e, e);
        }
      }
    }
  }

  void cambiodecolor1() {
    if (mousePressed == true) {
      for (int x=2; x<=a; x+=c) {
        for (int y=0; y<=a; y+=c) { 
          noStroke();
          fill(mouseX, mouseY);
          rect(x, y, d, d);
        }
      }
    }
  }

  void negativo() {
    if (key == 'v') {
      for (int x=0; x<=a; x+=c) {
        for (int y=0; y<=a; y+=c) {   
          noStroke();
          fill(255);
          rect(x, y, d, 2*d);
        }
      }
    }
  }

  void keyPressed() {
    if (key == 'c') {
      for (int x=2; x<=a; x+=40) {
        for (int y=0; y<=a; y+=40) {  
          noStroke();
          fill(0);
          rect(x, y, al, an);
        }
      }
    }
  }

  void cambiodecolor2() { 
    if (key == 'b') {
      for (int x=0; x<=a; x+=c) {
        for (int y=0; y<=a; y+=c) {  
          noStroke();
          fill(20, 20, 30);
          rect(x, y, c, c);
        }
      }
    }
  }

  void foto() {
    if (key == 'f' || key == 'F') {
      saveFrame ("tarea1.png");
    }
  }
}


//FIN DEL CÓDIGO