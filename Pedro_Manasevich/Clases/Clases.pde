/*
Pedro Mansevich
Programacion Creativa - Nicolás Troncoso
Trabajo en clase
Crear un objetos que aparezca en el centro y que se mueva en una direccion
y que cuando salga aparezca donde empezo y que al apretar 1,2,3 cambie su aspecto

*/
int tx=100;
int ty=100;
int velocidad=5;

Objetos o;//clase

void setup(){//setup

size(600,600);//tamaño canvas

o = new Objetos(width/2,height/2);//Llama a objetos

}


 void draw(){//draw
   background(0);
   o.objeto();//objeto en el centro
   o.mover();
   o.borde();

 }
 void keyPressed(){
   if(key=='1'){
     o.rojo();
     tx=50;
     ty=40;
   }
   if(key=='2'){
     o.verde();
     tx=60;
     ty=80;
   }
   if(key=='3'){
     o.azul();
     tx=100;
     ty=120;

   }
 }
