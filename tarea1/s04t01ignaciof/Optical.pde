class Optical {

int x;
int y;
float m= 0;
float n= 0;
//variables de void rectangulo()
int Columnas= 40; 
int horizontales=40;
int separacion= 35;
int verticales = 40;

float[] [] [] tamanos = new float [Columnas] [horizontales] [verticales];


Optical (int x, int y){ 


}

void Circulo() {
pushMatrix();
 noFill();
 for (int m = 0; m <= 600; m += 15) {   
  strokeWeight(4); 
  rect(width/2,height/2,m,m);
  rotate(millis() * 0.0001 * 10);
  translate(-300,-300);
}
popMatrix();
}

void Rectas (){
 pushMatrix();
background(0); 
 for (int n = 0; n <= 1000; n += 1) {   
  translate (width/2,height/2);
  rotate(PI/1.040);
  rect(width/2-200,height/2-250,n,n);
  noFill();
  stroke(255);
 
}
popMatrix();
}
 
 void Linea (){
pushMatrix();
//background(0);
  noFill();
  stroke(random(255));
  translate(width/2, height/2);
  rotate(millis() * 0.0001 * 10);
  translate(-500,-300);
  rotate(millis() * 0.0000001 * 1); 
  ellipse(random(500,300),random(300,100),random(1000),random(10));
popMatrix();
}
void Rectangulo(){
  background(255);  //color de fondo
  rectMode(CENTER);
  stroke(255);
  for (int i=0; i<Columnas; i++) {
   for (int j=0; j<horizontales; j++) {
      rect(separacion*i, separacion*j, width/2, 5);
     for (int x=0; x<verticales; x++) {
        fill(1);
        rect(separacion*x, separacion*j, 20, width);
        fill(0);
      }
    }
  }


} 

void Cuadrado(){
 noFill();
 translate(width/2, height/2);
 rotate(millis() * 0.0001 *10);
 translate(-120, -30);
 stroke(random(255));
 rect(100, 0, 100,100);
 translate(105, 105);
 stroke(random(255));
 rect(100, 0, 150,150);
 translate(155, 155);
 stroke(random(255));
 rect(100, 0, 150,150);
}
}
