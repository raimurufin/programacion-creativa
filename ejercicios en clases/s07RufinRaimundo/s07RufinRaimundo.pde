Punto[] pu;
int index;

Punto p;
Punto p2;
Punto p3;

void setup() {
  size(500, 500);
 
  pu = new Punto[25];
  for(int i = 0; i < pu.length; i ++){
    pu[i] = new Punto (random(500), random(500));
  }

  //p = new Punto(random(500), random(500));
  //p2 = new Punto(random(500), random(500));
  //p3 = new Punto(random(500), random(500));
}
void draw() {
   background (0);
  //p.run();
  //p2.run();
  //p3.run();
  
  
  for(int i = 0; i < pu.length; i++){
    pu[i].run();
  }
  
  //cambio de direccion aleatorio cada 1 segundo
  if(frameCount% 60==0){
    for(int i = 0; i < pu.length; i++){
    pu[i].ndirec();
  }
    //p.ndirec();
    //p2.ndirec();
    //p3.ndirec();
  }

  //p.con(p2);
  //p2.con(p3);
  //p3.con(p);
  for(int i = 0; i < pu.length-1; i++){
    pu[i].con(pu[i+1]);
  }
  
  //p.tri(p2,p3);
  for(int i = 0; i < pu.length-2; i++){
    pu[i].tri(pu[i+1],pu[i+2]);
  }
  
}