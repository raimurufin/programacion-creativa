class Objeto {
float x,y,z;

  Objeto(float posx,float posy, int num) {
    this.x=posx;
    this.y=posy;
    num=num*2;
  }

  void figura() {
    fill(255, 0, 0);
    rect(x, y, 50, 50);
    fill(0, 255, 0);
    ellipse(x, y, 50, 50);
  }
}
