class Objeto {
  float x, y, xv, yv;

  Objeto(float xvel, float yvel) {
    this.x = width/2;
    this.y = height/2;
    xv=xvel;
    yv=yvel;
  }

  void velocidad() {
    x += xv;
    y += yv;
  }

  void display() {

    for (int i=0; i<20; i++) {
      fill(100*i, 0, 50, i);
      noStroke();
      ellipse(x, y, random(10,100), random(10, 100));
      
    }
  }
}
