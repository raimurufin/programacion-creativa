class Orb {
  float x = 30;
  float y = 30;
  float tamano1 = 20;
  float tamano2 = 20;

  Orb (int x, int y) {

  }
  void metodo() {
    for (int i = -10; i < 10; i++){
    pushMatrix();
    translate(width/2,height/2);
    rotate(millis() * 0.0001 * 30);
    ellipse(x*i, y*i, tamano1*i, tamano2*i);
    strokeWeight(2);

    x = x + 0.01;
    y = y + 0.01;
    stroke(0);
    popMatrix();
}
  }
}
