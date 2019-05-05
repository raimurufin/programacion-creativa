Burbujas[] b;
int index;

void setup() {
 size (640, 360);
 b = new Burbujas[10];
 for (int i = 0; i < b.length; i++) {
   b[i] = new Burbujas(random(-1,1), random(-1,1),random(50));
 }
}

void draw(){
  background(255);
  index = (int)map(mouseX, 0, width,0, o.length)
  for (int i = 0; i < index; i ++) {
    b[i].subir();
    b[i].display();
    b[i].bordes();
  }
}
