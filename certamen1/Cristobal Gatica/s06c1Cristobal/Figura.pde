class Figura {

  float x, y, tam;
  float vx = (int) random(-5, 5);
  float vy = (int) random(-5, 5);

  //constructor

  Figura(float fx, float fy, float ftam) {

    x = fx;
    y = fy;

    tam = ftam;
  }

  // descripción de cada método
  void crear() {
    smooth();
    stroke(255, 0, 0);
    strokeWeight(tam);
    ellipse(x, y, 0.011, 0.011);
  }

  void mover() {

    x += vx;
    y += vy;
  }

  void rebote() {
    if (x <= 0 || x >= width) {
      vx *= -1;
    }
    if (y <= 0 || y >= height) {
      vy *= -1;
    }
  }

  void con(Figura m) {
    if (dist(x, y, m.x, m.y) < 850) {
      strokeWeight(random(0.01, 1));
      stroke(255, 80);
      line(x, y, m.x, m.y);
    }
  }
}
