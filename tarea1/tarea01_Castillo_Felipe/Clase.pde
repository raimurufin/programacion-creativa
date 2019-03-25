//Tarea 1
//Autor: Felipe Castillo
//Codigo Clase
class Orb {
  float x = width/2;
  float y = height/2;
  float rect1 = 40;
  float rect2 = 20;
  float rect3 = 10;
  float rect4 = 30;
  float elli1 = 1000;
  float elli2 = 1000;
  float elli3 = 800;
  float elli4 = 800;
  float elli5 = 600;
  float elli6 = 600;
  float elli7 = 400;
  float elli8 = 400;
  float elli9 = 200;
  float elli10 = 200;
  float alt1 = 10;
  float alt2 = 10;

  Orb (int x, int y) {

  }
 void cuadrado() {
   rectMode(CENTER);
   for (int i=0; i<30; i++) {
     for (int j=0; j<30; j++) {
       noStroke();
       fill(255);
       if (mousePressed) {
         if (mouseButton==LEFT) {
           fill(0);
         } else {
           fill(255);
         }
       }
       rect(35*i, 30*j, rect1, rect2);
       if (mousePressed) {
         if (mouseButton==RIGHT) {
           rect1 = mouseX;
           rect2 = mouseY;
         } else {
           rect1 = 40;
           rect2 = 20;
         }
       }
       noStroke();
       fill(0);
       if (mousePressed) {
        if (mouseButton==LEFT) {
          fill(255);
        } else {
          fill (0);
        }
      }
       rect(35*i, 30*j, rect3, rect4);
       if (mousePressed) {
         if (mouseButton==RIGHT) {
           rect3 = mouseX;
           rect4 = mouseY;
         }
       }
      }
    }
  }
  void circulos() {
    for (int i=0; i<30; i++) {
      for (int j=0; j<30; j++) {
        noStroke();
        fill(255);
        if (mousePressed) {
          if (mouseButton==LEFT){
            fill(0);
          } else {
            fill(255);
          }
        }
        ellipse(35*i, 30*j, alt1, alt2);
      }
    }
  }
  void hypnosis() {
    ellipseMode(CENTER);
    translate(x, y);
    stroke(0);
    if (mousePressed) {
      if (mouseButton==LEFT) {
        stroke(255);
      } else {
        stroke(0);
      }
      if (mouseButton==RIGHT) {
        stroke(255);
      } else {
        stroke(0);
      }
    }
    noFill();
    strokeWeight(20);
    ellipse(0, 0, elli1, elli2);
    ellipse(0, 0, elli3, elli4);
    ellipse(0, 0, elli5, elli6);
    ellipse(0, 0, elli7, elli8);
    ellipse(0, 0, elli9, elli10);
    if (mousePressed) {
      if (mouseButton==RIGHT) {
        elli1 = mouseX;
        elli2 = mouseY;
        elli3 = mouseX;
        elli4 = mouseY;
        elli5 = mouseX;
        elli6 = mouseY;
        elli7 = mouseX;
        elli8 = mouseY;
        elli9 = mouseX;
        elli10 = mouseY;
      } else {
        elli1 = 1000;
        elli2 = 1000;
        elli3 = 800;
        elli4 = 800;
        elli5 = 600;
        elli6 = 600;
        elli7 = 400;
        elli8 = 400;
        elli9 = 200;
        elli10 = 200;
      }
    }
  }
 void keyPressed() {
    if (key=='r') {
      saveFrame("captura_###.png");
    }
  }
}
