//INSTRUCCIONES//
/*
1.-
2.-
3.-
4.-

*/


//////////////////////////////////// SKETCH ////////////////////////////////////

//OBJETIVOS: // HACER QUE CAMBIE DE COLOR CON ArrayList DE COLOR/
             // HACER QUE LA VELOCIDAD CAMBIE CON KEYPRESSED
             // INCORPORAR UNA INTERACCION CON EL MOUSE (¿GRADIENTES? ¿COS, SIN? ¿?)

// VARIABLES FLOAT
float p;
float cg;    // color gradient
float d;

// VARIABLES INT
int f = 240;

// VARIABLES DE COLOR
color c1,c2;

// LISTAS
color [] lista;




void setup(){
  size(800,800);

  c1    = color(235,139,184);               // Se define un color
  c2    = color(199,229,219);               // Se define otro color
  lista = new color[f];                     // f represenata el total de los objetos en lista

  for(int i   = 0; i < f/2; i ++){           //  f/2 para que el maximo del for se manifieste justo en la mitad
    float amt = map(i,0,f/2,0,1);            // mapear el valor de i para incorporarlo al lerp ("solo acepta 1 - 0")
    lista[i]  = lerpColor(c1,c2,amt);        // Esta lista es la que describe los limites de colores (En el lerp)
  }
}


void draw(){
// COMPROBACIONES
//println(cg);
p = p + 5;
background(214,190,130);
translate(width/2, height/2);
for(int i = 0; i < f; i++){           // i = angulo de rotacion 0-360/ Separacion entre lineas
  // float x = sin(radians(i))*150;   // variable de rotacion
  //float y = cos(radians(i))*150;    // variable de rotacion

if (i < 120){
  fill(lista[i]);
}
else {
fill(lista[(f-1)-i]);
 }



strokeWeight(1);
stroke(250,150,60);

//fill(20,50,90);
//ellipse(width/2, height/2, 300, 300);
//println(i);
float a = map (i, 0, 239, 0, TWO_PI);
    float x = sin(a)*150;            // variable de rotacion
      float y = cos(a)*150;            // variable de rotacion
      //fill(sin(radians(i/2))*255, 50, sin(radians(i*3))*100);   // fill con gradiente R0-R255, b0-b255
      //fill(sin(radians(p/2))*255, 150, 200);                      // esto hara que palpite el anillo
      //fill(sin(radians(i/2))*cg, 200, 150);                     // prueba gradientes cambiantes
      pushMatrix();
        translate(x, y);
        //rotate(radians(360/f));
        rotate(radians(-i+frameCount));                           // proporciona movimiento al sketch/ cambia los ejes/ direccion de rotacion
        noStroke();                                               // sin bordes
        rect(0, 0, 120, 2, 2);
      popMatrix();

  }

// ANILLO CENTRAL.

for(int i = 0; i < 360; i+=20){
      float x = sin(radians(i))*150;
      float y = cos(radians(i))*150;
      pushMatrix();
        translate(x, y);
        rotate(radians(-i+frameCount+90));            // proporciona el movimiento al sketch / cambia los ejes / direccion de rotacion
        stroke(255);                                  // sin bordes
        fill(sin(radians(i/2))*255, 50, 100);
        rect(0, 0, 120, 20, 25);
      popMatrix();
  }

// LINEAS RECTAS

  for(int i = 0; i < 360; i+=10){
        float x = sin(radians(i))*150;               // suma al origen
        float y = cos(radians(i))*150;               // suma al origen // intenta sacarle a la multiplicacion
        pushMatrix();
          translate(x, y);                             // hace que no partan desde el punto (0,0)
          rotate(radians(-i+frameCount+90));           // proporciona el movimiento al sketch / cambia los ejes / direccion de rotacion
          stroke(255);                                 // sin bordes
          fill(50, 50, 100);
          rect(0, 0, 120, 5, 15);
        popMatrix();
    }

}


/////////////////////////////////////                   ///////////////////////////////////
///////////////////////////////////// IDEAS ABANDONADAS ///////////////////////////////////
/////////////////////////////////////                   ///////////////////////////////////


/*

////// TODOs LO DEL COLOR ANTIGUO /////////
// //VARIABLES DE MOVMIENTO
p = p + 5;
 cg = cg +10;

// Variables de contorno cambio de color
if (cg > 500){
 f = 1;
}

if (cg < -10){
 d = 1;
}
if (f == 1){
 cg = cg - 15;
}

if (d == 1){
 cg = cg + 15;
}


ArrayList<Vert1> lista = new ArrayList<Vert1>();

float p = 0;
float o = 0;
float i = 0;
Vert1 a;
*/
//void setup(){
  /*for (int i = 0; i < 20; i++){ // el numero 10 es la cantidad de figuras que aparecen
  a = new Vert1 (i,60);
  lista.add(a);
}
*/
// Inicializacion de la clase

//size(800,800);
//}


//void draw(){
/*for (Vert1 a : lista) {
a.bubls();
i = i +3;
}
*/

/*
p = p +3;
o = o +2;
background(200,150,190);
///////////////////////////////////////////////////
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(p));
  rect(-26, -26, 52, 52);
  popMatrix();
///////////////////////////////////////////////////
  pushMatrix();
  translate(50, 50);
  rotate(radians(p));
  a.bubls();
  rect(-26, -26, 52, 52);
  popMatrix();
///////////////////////////////////////////////////
//pushMatrix();
//a.lineas();
//popMatrix();
}



//////////////////////////////////////////////////////////////////////
//////////////////////// DOCUMENTACION Y AVANCE //////////////////////
//////////////////////////////////////////////////////////////////////

- Revisar el leerpColor();
- ROTACION DE COORDENADAS POLARES: A difierencia de los movimientos en el plano, yo solo necesito
  un angulo y

// cada elemento tiene que tener su pocicion
float x, y;  // cordenadas cartesianas
float angle, r;  // coordenadas polares

void setup(){
size(500,500);
}

void draw(){
background(255);
translate(width/2, heigth/2);
ellipse(x,y 10,10)
}

////////////////////////////// LERP COLOR ////////////////////////////

float desdex, desdey, hastax, hastay;  // cordenadas cartesianas

void setup(){
size (500,500);
fill(50);
}

void drwa(){
background(255);
//translate(width/2, height/2);

desdex = lerp(desdex, hastax, 0);
desdey = lerp(desdey, hastay, 0);

ellipse(desdex, desdey, 10,10);
}

void mousePressed(){

hastax = mouseX;
hastay = mouseY;
}

*/
