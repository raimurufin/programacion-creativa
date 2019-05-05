//Figura f;
Figura f2;
Figura f3;
Figura f4;


Figura[] f;
int index;






//como puedo hacer que el movimiento de las elipses varien en rotacion junto con angulos, mas fluido
void setup() {
  background(214, 214, 214);

  f = new Figura [10];
  for (int i = 0; i < f.length; i ++) {
    f[i] = new Figura(random(-1, 1), random(-1, 1), random(2, 4));
  }
  size(800, 900);

 
}

// f = new Figura(300, 300, 1);
//f2 = new Figura(600, 600, 1);
//f3 = new Figura(300, 600, 1);
// f4 = new Figura(300, 600, 1);

void draw() {
  //background(255);
 for (int i = 0; i < f.length-1; i ++) {
    f[i].crear();
    f[i].rebote();
    f[i].mover();
    //NOta_Investigar forLoop
    
    f[i].con(f[i+1]);
  }
  //llamada a ellipses

  // f.crear();
  // f2.crear();
  // f3.crear();
  // f4.crear();

  //llamada a accion rebote 

  // f.rebote();
  // f2.rebote();
  // f3.rebote();
  // f4.rebote();


  // f.mover();
  // f2.mover();
  // f3.mover();
  // f4.mover();

  //f.tama();

  //intersecciones de puntos

 //f.con(f2);
 //f3.con(f4);
 //f2.con(f4);

  //f.movF();
  //f2.movF();
  //f3.movF();
  //f4.movF();
}
void mousePressed() {
  background(random(0, 255));
}
