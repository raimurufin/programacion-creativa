Objeto[] o;


void setup() {


  size(500, 500);

  o = new Objeto[30];

  for (int i=0; i<o.length; i++) {
    o[i]=new Objeto(random(-1, 1), random(-1, 1));
  }
}


void draw() {
  background(0);
  for (int i=0; i<o.length; i++) {
    o[i].display();
    o[i].velocidad();
  }
}
