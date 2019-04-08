Spiral s;
int n;
int m;
int l;
int q;


void setup() {
  size(500, 500);
  s = new Spiral(n,l,m,q);
  n = 20;
  m = 250; //eje X del translate 
  l = 250; //eje Y del translate
  q = 4; //cantidad de triangulos internos pd. no subir a más de 5 por capacidad
}
void draw() {
  background(255);
  if (frameCount%60==0) {
    n = (int)random(5, 100);
  }
  s.crot();
  s.back1();
  s.tri(n, m, l, q);
}
    
