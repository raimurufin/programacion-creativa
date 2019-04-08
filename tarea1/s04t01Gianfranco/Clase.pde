class Clase {
  float x;
  float y;
  float z;
  float q;
  float w;
  float r;
  float e;
  float t;
  float u;
  float i;
  float o;

  Clase() {
    x=0;
    y=100;
    z=144;
    q=0;
    w=297.5;
    r=595;
    e=842;
    t=128;
    u=245;
    i=242;
    o=77;
  }
  /*OP ART de lineas blancas y negras, generando la sensacion
   de movimiento e ilusion optica entre la forma y fondo.*/
  //Fondo del canvas, lineas blancas y negras en las que encima va un Rombo.
  void fondolineas() {
    //background(0);
    x=0;
    //stroke(255);  
    while (x<width) {
      x=x+24;
      //Lineas verticales superiores.
      strokeWeight(6);
      line(x, 0, x, 117);
      //Lineas verticales inferiores.
      line(x, 742, x, height);
    }
    //stroke(255);
    y=100;
    while (y<height/1.15) {
      //Lineas horizontales
      y=y+20;
      strokeWeight(6);
      line(0, y, width, y);
    }
  }

  //Rombo en el centro.
  void rombo() {
    noStroke();
    quad(294, 120, 147, 413, 294, 740, 427, 413);
  }

  //Lineas dentro del rombo.
  void lineasrombo() {
    //stroke(0);
    line(z+24, 366, z+24, 472);
    line(z+264, 366, z+264, 472);
    line(z+48, 326, z+48, 513);
    line(z+240, 326, z+240, 514);
    line(z+72, 266, z+72, 574);
    line(z+216, 266, z+216, 574);
    line(z+96, 226, z+96, 614);
    line(z+192, 210, z+192, 633);
    line(z+120, 175, z+120, 673);
    line(z+168, 166, z+168, 693);
    line(z+144, 130, z+144, 730);
  }

  /*OP ART de Contraste Simultaneo, la exposicion de un solo color en 
   distintos fondos revela tonalidades y gradientes que son diferentes 
   dependiendo del fondo en donde se ponga el color.*/
  //Fondos de 2 colores que ocupan la mitad del canvas cada uno.
  void fondo() {
    fill(0, 255, 255);
    rect(q, q, w, e);
    fill(255, 0, 0);
    rect(w, q, r, e);
  }
  void fondo2() {
    fill(0);
    rect(q, q, w, e);
    fill(255);
    rect(w, q, r, e);
  }
  void fondo3() {
    fill(84, 173, 122);
    rect(q, q, w, e);
    fill(171, 84, 135);
    rect(w, q, r, e);
  }
  void fondo4() {
    fill(255, 97, 0);
    rect(q, q, w, e);
    fill(0, 158, 255);
    rect(w, q, r, e);
  }


  //Rectangulos que se posicionan en la mitad de cada color del fondo, el color de ambos rectangulos son el mismo.
  void rectangulos() {
    noStroke();
    rect(111.2, 346, 75, 150);
    rect(408.7, 346, 75, 150);
  }

  /*FUNCIONES*/
  //Función para poner las lineas blancas y negras y que estas cambien a un color distinto.
  void funcion1() {
    if (key=='a') {
      background(0);
      stroke(255);
      c.fondolineas();
      fill(255);
      c.rombo();  
      stroke(0);
      c.lineasrombo();
    } else if (key=='s') {
      background(0, 0, 255);
      stroke(255, 170, 0);
      c.fondolineas();
      fill(255, 170, 0);
      c.rombo();  
      stroke(0, 0, 255);
      c.lineasrombo();
    }
  }

  //Función para poner el contraste por similitud
  void funcion2() {
    if (key=='d') {
      c.fondo();
      fill(u, t, t);
      c.rectangulos();
    } else if (key=='f') {
      c.fondo2();
      fill(u, t, t);
      c.rectangulos();
    }
  }

  void funcion3() {
    if (key=='g') {
      c.fondo3();
      fill(i, t, o);
      c.rectangulos();
    } else if (key=='h') {
      c.fondo4();
      fill(i, t, o);
      c.rectangulos();
    }
  }
  
  
}
