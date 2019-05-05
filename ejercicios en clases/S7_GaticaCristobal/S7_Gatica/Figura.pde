class Figura {

  float x, y, tam;
  float vx;
  float vy;

  //constructor

  Figura( float fx, float fy, float ftam ) {
    this.x= width / 2;
    this.y= height / 2;
    vx = fx;
    vy = fy;

    tam = ftam;
  }

  void crear() {
    smooth();
    stroke(255, 0, 0);
    strokeWeight(tam);
    //noFill();
    //color(255,0,0);
    //noStroke();
    ellipse(x, y, tam, tam);
    //line(x,y,0.1,0.1);
    //point(x,y,1);
  }

  void mover() {

    x+=vx;
    y+=vy;
  }

  void rebote() {
    if (x <= 0 || x >= width) {
      vx*=-1;
    }
    if (y <=0|| y >= height) {
      vy*=-1;
    }
  }

  void con(Figura m) {
    if (dist(x, y, m.x, m.y) < 850) {
      strokeWeight(random(0.01, 1));
      stroke(255, 80);
      line(x, y, m.x, m.y);
    }
  }
  //void tama() {
  //x = x + 0.04;
  //  y = cos(x)*2;
  //  translate(width/2, height/2);
  // scale(random(1));
  //fill(random(1));
  // void movF() {
  //this.x++;
  // float x = noise(frameCount*.01);
  // float y2 = map(x, 0, 1, -5, 5);
  //this.y+= y2;
}
