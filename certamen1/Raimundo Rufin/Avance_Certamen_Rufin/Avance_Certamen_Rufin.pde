
Punto p;
Punto p2;

void setup() {
  size(500,500);
  background (0);

  p = new Punto(random(500),random(500),1);
  p2 = new Punto(random(500),random(500),-1);
  

}
void draw() {


p.run();
p2.run();

p.con(p2);

}