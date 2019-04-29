class Burbujas {
float x, y, diametro, yvel;
int tam;
Burbujas(float tempD) {
 x = random(width);
 y = height;
 diametro = tempD
 yvel = random(0.5,2.5);
}

void subir() {
  y = y - yvel;
  x = x + random(-2,2);

}

void display() {
  stroke(0);
  ellipse(x, y, random(0, 70), random(0, 70));
}

void bordes() {
  if ( x<0
}
}
