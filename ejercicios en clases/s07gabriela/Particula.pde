class Particula {
  float x, y, velx, vely;
  int i;
  color tu, na, ne, bl;

  Particula(float velx, float vely) {
    this.velx = velx;
    this.vely = vely;
    tu = color(63, 201, 188);                 
    bl = color(255);                            
    na = color(255, 128, 0);                          
    ne = color(0);   
    x= width/2;
    y= height/2;
  }

  void display() {
    stroke(ne, 70);
    strokeWeight(.01);
    fill(tu, 65);
    ellipse(x, y, 4, 4);
    fill(na, 8);
    stroke(bl, 5);
    strokeWeight(.001);
    rect(x, y, 10, 10);
  }
  void mover() {
    x += velx;
    y += vely;
  }
  void bordes() {

    if (x < 0 || x > 600 || y < 0 || y > 600) {
      x *= -2;
      y *= -2;
    }
  }
}
