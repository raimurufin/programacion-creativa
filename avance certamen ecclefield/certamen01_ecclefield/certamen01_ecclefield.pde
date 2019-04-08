// Variables
int ang;
int tamX;
float m;
float radRot = 0;
int bn = 255;        // Variable para alterar el color de fondo
int nb = 0;          // Variable para alterar el color de fondo



boolean sketch_01 = true;

//int mouse = mouseY;
//int mapTamX;
ClassMov a;

void setup(){
size(842, 595);
a = new ClassMov(tamX, ang, m, radRot,  bn, nb);
}

void draw(){
  println(radRot);
  background(255);
  //mapTamX =(int) map(mouse, 0, 250, 0, 500);
  //a.primerObj(mouseX, mouseY);
  ang  = mouseY;
  m = map(ang, 0, 842, 0, 510);


  if (sketch_01) {
    //a.segundoObj(m, mouseY);
    a.tercerObj(m, mouseY, radRot);
  }

  if (keyPressed) {
      if (key == 'v' || key == 'V') {
          radRot = radRot + 0.1;

      }
    }
}


void keyPressed() {

    if (key == 'e' || key == 'E') {
      bn = 0;
      nb = 255;
    }
}
