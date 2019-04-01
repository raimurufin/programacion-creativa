float circleX;
float circleY;
float xspeed = 1;
float Yspeed = 1;



Figura f;

void setup() {
  size(640, 360);
  circleX = 0;
  f = new Figura();
}

void draw() {
  background (random(232),random(26),random(26));
  
  f.pelota();
  f.pelota2();
  f.pelota3();
  f.pelota4();
  f.pelota5();
  f.pelota6();
  f.pelota7();
  f.pelota8();
  f.pelota9();
  f.pelota10();
  
  //exportar imagenes A4
    if (keyPressed) {
     if (key == 'p') {
      saveFrame("export.pdf");
      }
    }
}

