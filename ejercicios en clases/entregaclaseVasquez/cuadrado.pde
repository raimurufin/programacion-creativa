
class cuadrado { 
  float x, y, a, b;
  int i;
  int s;
  float t; //tamaño

  cuadrado (float a, float t) {
    this.a= a;
    this.t = t;
  }


  void colores () {
    s = 60;
    noStroke();
    rect(s, s, s, s);
    fill(a);
  }

  void trasladar() {
    translate(40, 40);
  }

  void keyPressed() {
    if (mousePressed) {
      fill (0);
    } else { 
      fill (a);
    }
  }
}