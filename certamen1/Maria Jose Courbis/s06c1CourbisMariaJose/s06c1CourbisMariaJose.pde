OndaClase o;
int x;
int y;
int h;
int w;
float p = 0; //variable para posicion y
int fondo;
int figura;
color calipso = color(66, 255, 219);
color naranjo = color(255, 83, 13);

void setup() {
  size(800, 600);
  fondo = calipso;
  figura = naranjo;
  o = new OndaClase(x, y);
}

void draw() {

  background(fondo);

  fill(figura);

  o.coseno(400, 220, p + 3.5); //figura de mas atras
  o.coseno(440, 250, p + 3);
  o.coseno(480, 280, p + 1.5);
  o.coseno(425, 280, p + 2.5);
  o.coseno(460, 310, p + 3);
  o.coseno(360, 250, p + 0.5);
  o.coseno(375, 280, p + 2);
  o.coseno(400, 310, p + 2.5);
  o.coseno(320, 280, p);
  o.coseno(340, 310, p + 1);
  o.coseno(425, 340, p + 1.5); //entremedio fila 3
  o.coseno(375, 340, p + 2); // entremedio fila 3
  o.coseno(520, 310, p + 1); //el del medio mas a la derecha
  o.coseno(480, 340, p + 4); //d 3
  o.coseno(440, 370, p + 3.5); //d 2
  o.coseno(280, 310, p); //el del medio mas a la izquierda
  o.coseno(320, 340, p + 0.5); //i 3
  o.coseno(360, 370, p + 2.5); //izquierda 2
  o.coseno(400, 400, p + 4.5); //medio abajo 1

  p = p + 0.03;


}


//INTERACCIÓN CON EL TECLADO
//EL PROGRAMA AL EJECUTARSE PARTE CON EL
//FONDO DE COLOR CALIPSO Y LAS FIGURAS
//DE COLOR NARANJO. AL APRETAR LA TECLA "S"
//LOS COLORES SE INTERCAMBIAN, LAS FIGURAS PASAN
//A SER CALIPSO Y EL FONDO PASA A SER NARANJO.
//AL APRETAR LA TECLA "D" EL FONDO VUELVE A SER
//CALIPSO Y LAS FIGURAS NARANJAS.

void keyPressed() {
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      fondo = naranjo;
      figura = calipso;
    }
  }

  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      fondo = calipso;
      figura = naranjo;
    }
  }
}
