//ArrayList<randm> puente =  new ArrayList<randm> ();
//No hay decripción general de lo que el programa hará

/////// TODA ESTO ES SOLO PARA EL COLOR //////
ArrayList < Particula > lista = new ArrayList < Particula > ();


Particula p;
int n, m;

void setup() {
    size(800, 600);
    for (int i = 0; i < 200; i++) {
        p = new Particula(i);
        lista.add(p);

    }

	// este loop se puede eliminar y solo dejar 200 en el de arriba
    // for (int i = 0; i < 100; i++) {
    //     p = new Particula(i);
    //     lista.add(p);
    //
    // }

}

void draw() {
    background(245, 242, 220);
	// descripción
    for (Particula a : lista) {
        a.show();
        a.mover();
        a.denuevo();

		// descripción
        if (mousePressed) {
            a.forma();
            a.crecimiento();
        }
    }
}

// para interaccion con el teclado usar la tecnica qla del nico
// dude!







/*  if(mousePressed){
  listo.add(p);

  }
}
*/
/*void keyPressed( ){
  if (key == '1'){
    n = 1;
  }
  else if(key =='0'){
    n = 0;
}
else if(key =='d'){
  m = 0;
}
else if(key =='i'){
  m = 1;
}
}
*/

/*
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
                         WEAS QUE PUEDES USAR PARA EL EXAMEN
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
if(frameCount % 60==0){// cuando el resto de la division sea 0
//  m=int(random(2));
}
}


if(x>width || x<0||y>height-49||y<0){


}




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////


ArrayList<Juan> lista = new ArrayList<Juan>();
ArrayList<Sotero> listo = new ArrayList<Sotero>();

// Acciones  remotas
//boolean l = false;

// Inicializacion de clases
Juan j;
Sotero b;

void setup(){
  size(600,600);
  for (int i = 0; i < 20; i++){ // el numero 10 es la cantidad de figuras que aparecen
  j = new Juan (random(width),random(height),random(5,100), random (5,100));
  lista.add(j);
  listo.add(b);
}
for (int i = 0; i < 20; i++){
  b = new Sotero(random(width),random(height),random(5,10), random (5,10));
  listo.add(b);
}


}

void draw(){
background(32,219,161);
for (Juan j : lista) { // esto va a definir el comportamiento de todos clas
                           // weas de la lista

// se tiene que ocupar otra inicializacion de la lista for, para otra clase
  j.agrupacion1();
  j.newforma();
  j.crecimiento1();
}

  for (Juan b : lista) {
  b.agrupacion3 ();
  //j.forma();
  //j.crecimiento();
  //j.limites();
  //j.mover();
  //j.color();

  /* Para lograr una interaccion con mouse;
   if(mousePressed){
   lista.add(j);

}


  }


}

/////////////////////////////////////////////////////////////////////////////////

//stroke de la ellipse
float x ;
float y ;
float tx;
float ty;
// centro de la ellipse
float tpx;
float tpy;
//Editor de color
int r = 255  ;
int g = 103 ;
int b = 63 ;
int op = 350;

///////////////////////////////////////////////////
  Juan(float x, float y, float tx, float ty){
  this.x   = x  ;
  this.y   = y  ;
  this.tx  = tx ;
  this.ty  = ty ;
  this.tpx = tpx;
  this.tpy = tpy;

}


// FUNCIONES //
void forma(){
       noStroke()        ;
       fill (r,g,b,op)  ;
       ellipse(x,y,tx,ty);
       op = op -7;
       if (op <= 0){
         op = 351;
       }
}

void crecimiento(){
  tx = tx +7;
  ty = ty +7;

  if (tx > 350){
      tx = 0;
      ty = 0;
  }
}

void inter(){

}

void mover(){
   x++;
   y--;

}

void limites(){
     if(x > width){
     x = 0;
  }
     if(y < 0){
     y = height;
  }
}

void newforma(){

  fill (142,30,0,op);
  ellipse(x,y,tpx,tpy);

}
void crecimiento1(){
  tpx = tpx +3;
  tpy = tpy +3;

  if (tpx > 150){
      tpx = 0;
      tpy = 0;
  }
}

////////////////////////////////////////////
void agrupacion1(){

  limites();
  crecimiento();
  forma();
}
///////////////////////////////////////////
void agrupacion2 (){
  newforma();
  crecimiento1();
}
//////////////////////////////////////////
}
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////


*/
