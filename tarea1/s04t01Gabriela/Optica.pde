//Inicalización clase
class Optica {
  int value;
  float  z, r;
  color t, n, am, na;                                             // Se declaran las variables de color

  //Constructor
  Optica() {
    t = color(63, 201, 188);                                  // Turquesa
    n = color(0);                                             // Negro
    am = color(254, 255, 6);                                  // Amarillo
    na = color(255, 128, 0);                                  // Naranja
    z = 0;                                                    // Valor de z es 0
    r = 0;                                                    // Valor de r es 0
    value = 0;                                                // Valor de value es 0
  }

  void circulo () {
    stroke(t);
    strokeWeight(4);
    if (z < 550) {
      point(width/2 - cos(z) * r, height/2 - sin(z) *r);     // espiral central
      z = z + 0.5;
      r = r + 0.2;
    }
  }

  //Inicialización de figurass
  void circul () {
    point(width/4 - cos(z) * r, height/4 - sin(z) *r);       // espiral izquierdo superior
  }
  void circu () {
    point(450 - cos(z) * r, 450 - sin(z) *r);                // espiral derecho inferior
  }
  void circ () {
    point(width/4 - cos(z) * r, 450 - sin(z) *r);
  }
  void cir() {
    point(450 - cos(z) *r, height/4 - sin(z) * r);
  }

  //Inicialización de rotaciones
  void keyPressed () {  
    if ( key =='1') {
      stroke(am);
      point(width/2 + cos(z) * r, height/2 + sin(z) *r);
      point(width/4 + cos(z) * r, height/4 + sin(z) *r);
      point(450 + cos(z) * r, 450 + sin(z) *r);
      point(width/4 + cos(z) * r, 450 + sin(z) *r);
      point(450 + cos(z) *r, height/4 + sin(z) * r);
    }
  }
  {
    if ( key =='f') {
      stroke(t);
      point(width/2 - cos(z) * r, height/2 - sin(z) *r);
      point(width/4 - cos(z) * r, height/4 - sin(z) *r);
      point(450 - cos(z) * r, 450 - sin(z) *r);
      point(width/4 - cos(z) * r, 450 - sin(z) *r);
      point(450 - cos(z) *r, height/4 - sin(z) * r);
    }
  }
}
