class Linea {
  float x;
  float y;

  Linea() {
    x = width/2;
    y = height/2;
  }

  void display() {
    for (int i=0; i<5; i++) {
      for (int j=0; j<10; j++) {

        pushMatrix();
        translate(x, y);
        rotate(radians(frameCount));
        strokeWeight(1);
      
        line(80, 50, 100, 250);
        popMatrix();
      }
    }
  }
}
