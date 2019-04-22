// Ejemplo codigo ondas
/*
float px, py, px2, py2;
float angle, angle2;
float radius = 90;
float frequency = 2;
float frequency2 = 2;
float x, x2;

void setup(){
  size(400, 250);
  background (0);
}
   void draw(){
  fill(0,10);
rect(0,0,width, height);
  noStroke();
  fill(random(#1442C6),random(#FF3429),random(#14DB1F));

  px = width/8 + cos(radians(angle))*(radius);
  py = 150 + sin(radians(angle))*(radius);

  fill(#1D5BDE,60,150);

  angle2 = 0;

  for (int i = 0; i< width; i++){
    px2 = width/8 + cos(radians(angle2))*(radius);
    py2 = 70 + sin(radians(angle2))*(radius);
    point(width/radius+i, py2);
    angle2 -= frequency2;
  }

  noStroke();
  ellipse(width/radius+x, py, 40, 40);
  angle -= frequency;
  x+=1;

  if (x>= width-60) {
    x = 0;
    angle = 0;
  }

}

*/

/*

// codigo coseno

float a = 0.0;
float inc = TWO_PI/25.0;
for (int i = 0; i < 25; i++) {
  line(i*4, 50, i*4, 50+cos(a)*40.0);
  a = a + inc;
}

//codigo seno

float a = 0.0;
float inc = TWO_PI/25.0;

for (int i = 0; i < 100; i=i+4) {
  line(i, 50, i, 50+sin(a)*40.0);
  a = a + inc;
}
*/

//CODIGO BASE LOGRADO PARA LA ENTREGA DEL CERTAMEN

float p = 0;        //variable para posicion y
float s = 0;        // variable para posicion x

void setup(){
  size (800, 600);
  background (0);

}

void draw (){
 fill(255);
 background(0);
 ellipse(300,height/2 + sin(p)*100, 30, 25);    // la posicion de y es = a la altura partido 2 mas el seno de la variable p * 100
 p = p + 0.035;
 //s = s + 3;


}
