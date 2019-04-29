/*
Programacion Creativa - Nicolás Troncoso
Alumno: Pedro Manasevich

Una lista 6 objetos en donde un atributo de sea el indice de la lista
posicion en X:un tercio del ancho
Posicion de Y: entre un quinto y cuatro quintos

Una lista 6 objetos en donde un atributo de sea el indice de la lista
posicion X: tercer tercio del ancho
posicion Y: entre un quinto y cuatro quintos

Conectar con una linea objetos con mismo indice

*/

float x;//variable X
float y;//variable Y
int n;//variable N


Objeto[] obj, ob2;//variable arrays


void setup(){//Setup
size(500,500);
fill(random(255),random(0),random(255));//Relleno
obj = new Objeto[6];
ob2 = new Objeto[6];

  for (int i=0; i<obj.length; i++) {
    obj[i] = new Objeto(i,width/3,map(i,0,5,height/5,4*height/5));
    ob2[i] = new Objeto(i,2*width/3,map(i,0,5,height/5,4*height/5));
}
}

void draw(){//Draw
  background(0);
  for (int i=0; i<obj.length; i++){
    obj[i].display();
    ob2[i].display();
  }
}
