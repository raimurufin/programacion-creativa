
//INSTRUCCIONES:
//1) AL hacer click, el color del fondo de la composición cambia y adquiere distintas tonalidades al ser desplazado por el canvas, se debe jugar con el click durante todo momento para ver la mayor variedad de composiciones posibles. 
//2) La tecla  X cambia la composición.
//3) La tecla C cambia la composición.
// 4) La tecla V cambia la composición.
//5) La tecla B cambia la composición.
//6) la tecla f saca un screenshot del canvas.
//7) Para volver a la composición incial cualquier tecla menos las anteriormente mencionadas sirve. 

cuadrado c1;
cuadrado c2; 


void setup() {

  size(595, 842); 
  c1 = new cuadrado(0); 
  c2 = new cuadrado(0);
}
void draw () {
  c1.grilla(10, 10,4, 20, 5, 5);
  c1.grilla(200, 200,4, 20, 5, 5);
  c1.grilla(mouseX, mouseY, 3, 10, 6, 6);
//c1.foto();
//  c1.fondo();
//  c1.pos();
//  c1.pos2(); 
//  c1.cambiodecolor1();
//  c1.negativo(); 

//c2.foto();
//  c2.keyPressed();
//  c2.cambiodecolor2();
//  c2.pos();
//  c2.pos3();
//  c2.pos4();
  
}