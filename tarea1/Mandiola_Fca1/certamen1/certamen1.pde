float circleX;
//float circleY;
//float xspeed = 1;
//float Yspeed = 1;



Figura f;

void setup() {
  size(400, 400);
  circleX = 0;
  f = new Figura();
}

void draw() {
  background (00);
  
  
  f.pelota();

  
  //exportar imagenes A4
    if (keyPressed) {
     if (key == 'p') {
      saveFrame("export.pdf");
      }
    }
}

