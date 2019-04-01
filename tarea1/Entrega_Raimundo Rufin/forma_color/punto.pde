

class Punto {

  float x, y;
  color col;
  float xtam;
  float ytam;

  // direccion y velocidad incial del punto con numeros aleatorios enteros
  int vx =  round(random(-5, 5));
  int vy =  round(random(-5, 5));

  float r = 255;
  float g = 255;
  float b = 255;

  //Constructor, 2 variables de posicion
  Punto(float px, float py) {

    x = px;
    y = py;
  }

  //correr todas las funciones en una sola
  void run() {
    punto();
    move();
    bounce();
    linea();
    rgb();
    tamano();
    circle();
  }

  //crear un punto
  void punto() {
    noFill();
    noStroke();
    point(x, y);
  }

  // mover el punto
  void move() {
    x+=vx;
    y+=vy;
  }

  // rebotar cuando toca una pared
  void bounce() {
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height|| y < 0) {
      vy *= -1;
    }
  }

  //crear linea entre 2 puntos de esta clase
  void linea() {
    strokeWeight(0.5);
    stroke(r, g, b);
    line(p.x, p.y, p2.x, p2.y);
  }

  // cambiar parametros de color
  void rgb() {
    if (key == 'y'|| key == 'Y') {
      r = 255;
    } else if (key == 'h'|| key == 'H') {
      r = 0;
    }

    if (key == 'u'|| key == 'U') {
      g = 255;
    } else if (key == 'j'|| key == 'J') {
      g = 0;
    }

    if (key == 'i'|| key == 'I') {
      b = 255;
    } else if (key == 'k'|| key == 'K') {
      b = 0;
    }
  }

  //crear un circulo con su eje en el punto y cambiar su diametro
  void circle() {
    strokeWeight(0.5);
    stroke(b, r, g);
    noFill();
    ellipse(x, y, xtam, ytam);
  }
  //cambiar tamaño de circulo
  void tamano() {
    if (key == 'v') {
      xtam+=1;
      ytam+=1;
    } else if (key == 'b') {
      xtam-=1;
      ytam-=1;
    } else if (key == 'c') {
      xtam = 0;
      ytam = 0;
    }
  }
}