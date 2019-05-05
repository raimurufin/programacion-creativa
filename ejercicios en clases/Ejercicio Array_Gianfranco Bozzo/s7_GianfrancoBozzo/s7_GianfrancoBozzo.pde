Objeto[] o;

void setup() {
  size(500, 500);
  o=new Objeto[10];
  for (int i=0; i<o.length; i++) {
    o[i]=new Objeto(random(width/2,width),random(0,height),i);
  }
}


void draw() {
  background(255);
  for (int i=0; i<10; i++) {
    o[i].figura();
  }
}
