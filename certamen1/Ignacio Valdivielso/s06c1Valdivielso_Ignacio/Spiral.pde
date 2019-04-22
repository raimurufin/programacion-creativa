class Spiral {

  int l;
  int m;

  Spiral(int n, int l, int m, int q) {
    //this.l = l;
    //this.m = m;

  }
  float rot; //rotación

  void tri(int n, int m, int l, int q) {
    rot += 0.1;

    for (int i = 5; i < n; i++) {
      for (int j = 0; j < q; j++) {
        pushMatrix();
        translate(m, l);
        rotate(radians(rot * i + 10));
        fill(random(1, 5) * i);
        stroke(255);
        triangle(-30 + 1 * j, 30 + 3 * i, 0 + 1 * j, -30 + 3 * i, 30 - 1 * j, 30 + 3 * i);
        popMatrix();
      }
    }
  }

  // Estas funciones de teclado, aunque sean locales, deben estar declaradas en el archivo principal
  void crot() { //cambio de sentido de la rotación
    if (key == 'q') {
      rot -= 0.2;
    } else {
      rot += 0.01;
    }
  }

  // Estas funciones de teclado, aunque sean locales, deben estar declaradas en el archivo principal
  void back1() {
    if (key == 'w') {
      background(random(100, 150), 0, 0);
    } else {
      background(255);
    }
  }
}
