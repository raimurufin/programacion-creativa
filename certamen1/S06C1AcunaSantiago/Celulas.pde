class Celular {
 
  boolean CDivide = false;
  ArrayList<Celular> Celulas;
  float tono = 100;
  float friccion = 0.98;
  float radio;
  PVector posicion;
  PVector velo = new PVector(2, -2);
  PVector acel = new PVector(2, -2);
  
  Celular(PVector pos, float _radio) {
    posicion = pos.copy();
    radio = _radio;
    Celulas = new ArrayList<Celular>();
    nbCelula++;
  }
 
  Celular(PVector pos, float _radio, float _tono) {
    tono = _tono;
    posicion = pos.copy();
    radio = _radio;
    Celulas = new ArrayList<Celular>();
    nbCelula++;
  } // Constructor
 
  void nuevo() {
 
    if (!CDivide) {
      if (frameCount % 20 == 0) {
        this.seMueve(new PVector(random(-1, 1), random(-1, 1)));
      }
 
      velo.add(acel);
      posicion.add(velo);
      acel.mult(0);
      velo.mult(friccion);
 
      this.collision();
 
      if (mousePressed && dist(mouseX, mouseY, posicion.x, posicion.y) < radio) {
        this.mitosis();
      }
    } else {
      for (Celular c : Celulas) {
        c.nuevo();
      }
    }
  }
 
  void display() {
    if (!CDivide) {
      ellipseMode(RADIUS);
      noStroke();
      fill(200,random(0,30),random(60,90));
      ellipse(posicion.x, posicion.y, radio,radio);
    } else {
      for (Celular c : Celulas) {
        c.display();
      }
    }
  }
 
  void run() {
    this.nuevo();
    this.display();
  }
 
  void mitosis() {
  
    PVector sep = new PVector(random(1,5), random(1,5));
 
    Celulas.add(new Celular(posicion, radio*0.8, tono-1));
    Celulas.add(new Celular(posicion, radio*0.6, tono-2));
    Celulas.get(0).seMueve(new PVector(sep.x, sep.y));
    Celulas.get(1).seMueve(new PVector(sep.x*-1, sep.y*-1));
 
    CDivide = true;
  }
 
  void seMueve(PVector _fuerza) {
    if (!CDivide) {
      acel.add(_fuerza);
    } else {
      for (Celular c : Celulas) {
        c.seMueve(_fuerza);
      }
    }
  }
 
  void collision() {
    if (posicion.x - radio < 0) {
      posicion.x = radio;
      velo.x*=-2;
    }
 
    if (posicion.x + radio > width) {
      posicion.x = width-radio;
      velo.x*=-1;
    }
 
    if (posicion.y-radio < 0) {
      posicion.y = radio;
      velo.y*=-1;
    }
 
    if (posicion.y + radio > height) {
      posicion.y = height-radio;
      velo.y*=-1;
    }
  }
} 
