class Objeto {

  int index;
  float x, y;

  Objeto(float x, float y, int index) {

    this.index = index;
    this.x = x;
    this.y = y;

  }

  void figura(){//metodo
    fill(0);//relleno
    ellipse(x,y,30,30); //ellipse

  }

  void con(Objeto a){//metodo
    stroke(0);//color linea
    strokeWeight(4);//grosor linea
    line(a.x, a.y, x, y);//linea
  }
}
