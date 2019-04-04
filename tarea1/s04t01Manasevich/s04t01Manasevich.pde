//Tarea 1 - Programacion Creativa
//Profesor: Nicolás Troncoso
//Alumno: Pedro Manasevich
Clase c;

boolean linea1;
boolean linea2;
boolean linea3;
boolean linea4;
boolean estrellas;
float xspeed = 5;
float x= 0;
float r = 0;
float rspeed = 5;
float yspeed = 5;
float y = 0;
int f=210;
int relleno = 255;


void setup() {
  size (595, 842);
  background(f);
  c = new Clase();
}

void draw() {


  if (linea1) {
    c.linea1();
  }

  if (linea2) {
    c.linea2();
  }

  if (linea3) {
    c.linea3();
  }

  if (linea4) {
    c.linea4();
  }
  if (estrellas) {
    c.estrellas();
  }
  c.punto1(); 
  c.punto2();
  c.punto3();

  if (mousePressed == false) {
    c.elipse();
  } else {
    c.cuadrado();
  }
}
