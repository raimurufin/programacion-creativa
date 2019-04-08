Linea l;


int cantidad = 6;




void setup() {

  size(900, 700);
  l = new Linea();


}

void draw() {
  background(255);
  translate(width/2, height/2);
  l.figura(cantidad);


  }

  void keyPressed( ) {
    if(key=='a'||key=='A'){
      cantidad+=1;
    }

  if(key=='s'||key=='S'){
    cantidad-=1;
  }

  }
