Linea l;

int cantidad = 3;


void setup() {
  size(600, 600);
  l = new Linea();
}

void draw() {
  background(200);
  translate(width/2, height/2);
l.figura();

  }

  void keyPressed( ) {
    if(key=='a'||key=='A'){
      cantidad+=1;
    }

  if(key=='s'||key=='S'){
    cantidad-=1;
  }

  }
