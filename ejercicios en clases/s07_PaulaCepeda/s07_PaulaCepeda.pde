/*
Ejercicio s7: Array con una clase
Intersección de curvas de elipses celeste y rosado
*/

Clase[] c1;

void setup(){
size(600,600);
background (0);

c1 = new Clase[10];

  for(int i=0; i<c1.length;i++){
  c1[i]= new Clase();
}

}

void draw(){
    for (int i=0; i<c1.length; i++){
  c1[1].run();
  }
  
  
}
