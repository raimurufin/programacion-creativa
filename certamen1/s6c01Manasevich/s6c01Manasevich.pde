Linea c1,c2;


int cantidad = 20;
float r = 0;




void setup() {

  size(900, 700);//Tamaño Canvas
  background(0);//Fondo
  noStroke(); //Valor de la linea.
  strokeCap(SQUARE);
  c1 = new Linea();
  c2 = new Linea();


}

void draw() {
  background(0);
  c1.lineas();
  println(cantidad);



  }

  void keyPressed( ) {
  if(key=='a'||key=='A'){//Aumenta la cantidad de lineas
      cantidad+=1;
  }

  if(key=='s'||key=='S'){//disminuye la cantidad de lineas
    cantidad-=1;
  }
  if(key=='w'||key=='W'){//reanuda el sketch
    loop();
  }
  if(key=='q'||key=='Q'){//detiene el sketch
    noLoop();
  }
  }
