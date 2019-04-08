Linea l,l1,l2,l3,l4;


int cantidad = 6;
float rot = 0;
float r=(random(255));
float g=255;
float b=255;




void setup() {

  size(900, 700);
  l = new Linea();
  l2 = new Linea();
  l3 = new Linea();
  l4 = new Linea();


}

void draw() {
  background(0);
  fill(random(255),0,0);
  l.figura(cantidad,rot,r,g-255,b-255);
  //l.figura(cantidad-100,rot,r,g-255,b-255);
  //l.figura(cantidad-65,rot,r,g,b);


  }

  void keyPressed( ) {
    if(key=='a'||key=='A'){
      cantidad+=100;
    }

  if(key=='s'||key=='S'){
    cantidad-=100;
  }

  }
