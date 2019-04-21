//Certamen 1 - Cristóbal Schaerer - 2019
/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Figura f;// La clase

void setup() {
  size(842, 595);//Tamaño A4 en píxeles
  rectMode(CENTER);//Los rectángulos rotarán desde su eje central
  f = new Figura(0, 0, 0, 0, 0,100,0);//x,y,r,x1,y1,r2,rot
}

void draw() {
  background(85,226,217);//Fondo blanco
  f.patron(random(0,width),random(0,height));//Patrón de círculos
  pushMatrix();
  translate(width/2, height/2);//La posición inicial es en el centro del sketch
  f.rectangulos(30);//Patrón de rectángulos fondo;(columnas)
  f.circulo1(50, 1);//Arcos;(radio,velocidad)
  f.circulo2(600, 600);//Círculo que divide;(t1,t2)
  f.circulos4(380);//Círculo que divide pequeño;(radio)
  f.circulos(15, 10);//Círculos centrales en espiral(radio, brazos)
  f.circulos3(5, 200);//Círculos de color naranjo;(radio,posX)
  f.line1(100,180);//Líneas de tamaño aleatorio(tamaño y grosor)
  f.circulos5(2, 2, 300);//Círculos rodeando zona grande; (radio, radio2, posX)
  popMatrix();

}
