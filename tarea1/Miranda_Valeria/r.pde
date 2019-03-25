class Rombo {
  float x;
  float y;
  float t;
  float b;

  Rombo() {
    x = width/2;
    y = height/2;
    t = 500;
    b = 255;
  }

  void display() {

    //Quads giratorios de fondo//
    //Circulo negro centro
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(0);
    ellipse(0, 0, 400, 400);
    popMatrix();

    //Quad blancos transparentes de fondo
    pushMatrix();
    translate(x, y);
    rotate(radians(frameCount*2));
    noStroke();
    fill (b, b, b, 50);
    quad(0, -550, t, 0, 0, 550, -t, 0);
    quad(0, -650, 600, 0, 0, 650, -600, 0);
    popMatrix();

    //Quad negro transparente
    pushMatrix();
    translate(x, y);
    rotate(radians(frameCount*3));
    noStroke();
    fill(0, 0, 0, 200);
    quad(0, -t, t, 0, 0, t, -t, 0); 
    popMatrix();
    //
  }
}
