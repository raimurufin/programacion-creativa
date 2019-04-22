class OndaClase{

int x;   //posición x
int y;   //posición y
int h;   //height
int w;   //width
int tamX;   //tamaño x
int tamY;   // tamaño y
float p;


OndaClase(int x, int y, int w, int h){

  this.x = x;
  this.y = y;
  this.h = h;
  this.w = w;
  this.tamX = tamX;
  this.tamY = tamY;
  this.p = p;

}

//METODO 1: MOVIMIENTO DE ACUERDO AL SENO
void seno(float p, int x, int y){

rect(x, y + sin(p)*50, 50,150, 25, 25, 25, 25 );

}

//METODO 2: MOVIMIENTO SEGUN EL COSENO
void coseno(float p, int x, int y){

rect(x, y + cos(p)*50, 50,150, 25, 25, 25, 25 );

}


}
