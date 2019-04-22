//Inicialización clase
class Espiral {
  float x, y, r;                                               // Se declaran las variables x, y, r

  color tu, na, am;                                            // Se declaran las variables de color

  //Constructor
  Espiral() {
    tu = color(63, 201, 188);                                  // Turquesa
    am = color(254, 255, 6);                                   // Amarillo
    na = color(255, 128, 0);                                   // Naranja
    x = 0.0;                                                   // Valor de x es 0.0
    y = 0.0;                                                   // Valor de y es 0.0
    r = 0.0;                                                   // Valor de r es 0.0
  }
  //Inicio ámbito espiral
  void espiral() {
    for (float cantidad = 0.0; cantidad <= 360; cantidad = cantidad + (random(0) + 1)/2) {
      pushMatrix();
      x = width/2 + r * sin(cantidad);
      y = height/2 - r * cos(cantidad);
      noStroke();
      ellipse(x, y, 3.5, 3.5);
      r = (r + 5) % (width/2);
      if (millis() % 2 == 0) {
        fill(tu);
      } else if (millis() % 3 == 0) {
        fill(na);
      } else {
        fill(am);
      }
      popMatrix();
    }
  }

  // Descripciones de los métodos es importante para entender código
  void circulo( float x, float y, float w, float r, int n) {
    float angulo = TWO_PI / n;
    float mitad = angulo/4;
    for (float a = 0; a < TWO_PI; a += angulo) {
      float sx = x + cos(a) * r;
      float sy = y + sin(a) * r;
      vertex(sx, sy);
      sx = x + cos(a + mitad) * w;
      sy = y + sin(a + mitad) * w;
      vertex(sx, sy);
    }
  }
}
