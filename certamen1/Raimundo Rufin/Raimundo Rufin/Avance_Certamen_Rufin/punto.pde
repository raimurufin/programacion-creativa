

class Punto {

  float x, y, mult;


  // direccion y velocidad incial del punto con numeros aleatorios enteros
  int vx = (int)random(3,5);
  int vy = (int)random(3,5);

  //Constructor
  Punto(float px, float py,float pmult) {

    x = px;
    y = py;
    
    mult = pmult;
    
    vx*=pmult;
    vy*=pmult;

  }

  void run() {
    create();
    move();
    bounce();
  }


  void create() {
    //strokeWeight(5);
    noStroke();
    //stroke(255,200);
    point(x, y);
  }

  void move() {
    x+=vx;
    y+=vy;
  }
  
  void bounce() {
    if (x > width || x < 0) {
      vx *= -1;
    }
    if (y > height|| y < 0) {
      vy *= -1;
    }
  }

  void con(Punto m) {
    if (dist(x, y, m.x, m.y) < 350) {
      strokeWeight(2);
      stroke(255,50);
      line(x,y,m.x,m.y);
    }
  }
}