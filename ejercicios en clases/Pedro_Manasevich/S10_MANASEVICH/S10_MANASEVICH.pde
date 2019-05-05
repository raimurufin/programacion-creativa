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

Objeto[] c; //declarar lista c de clase
Objeto[] d; //declarar lista d de clase

void setup() {//Setup
  size(600, 600);//Tamaño Canvas


  c = new Objeto[6]; //C
  d = new Objeto[6];//D
}
void draw() {
  background(255);//Color Fondo

  for (int i = 0; i < c.length; i++) {
    c[i] = new Objeto(width/3, map(i, 0, 5, height/5, height*4/5), i); //llama objeto
    d[i] = new Objeto(width*2/3, map(i, 0, 5, height/5, height*4/5), i); //llama objeto
    c[i].figura();
    d[i].figura();

  }

  for (int i = 0; i < c.length; i++) {//For loops
    for (int j = 0; j < c.length; j++) {
      if (c[i].index == d[j].index) {//condicional
        c[i].con(d[j]);
      }
    }
  }
}
