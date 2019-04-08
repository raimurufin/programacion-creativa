class Objeto{
  //Variables
  float x=0;
  float y=0;
  float v=50;
  float z=100;
  float c=0.5;
  float diameter,d;
  color fondooo = color(200);
  float spot=6.5*v;
  float mitadX=width/2;
  float mitadY=height/2;
  
  //Constructor
  Objeto(float tempD){
  d=tempD;

  
}
  
  //Funcionalidades
  void run(){ //función que incluye a las demás, desde la pestaña principal solo llamamos a esta función
    grosorlinea();
    fondo();
    lineas();
    cuad();
    target();
    suelo();
    angulo();
    reiniciar();
    blanco();
    grow();

  }
  
  void fondo(){
    background((fondooo),20,mouseY); //con mouseY controlamos el color
  }
  
  void grosorlinea(){
    strokeWeight(mouseX/10); //con mousex controlamos el grosor de linea. Lo divimos por 10 para mejor resultado.
  }
  
  void lineas(){
    //loop para multiplicar lineas del fondo
     y =0;
        while(y<height){
          if(mouseY<1){ y=y+1;
          } else{
          y=y+mouseY/2;
          }
          y=y+1;
          line(0-20,y,width,y);
        }    
  }
  
  void cuad(){
    //rombo del centro
    fill(200,0,mouseY/2);
    quad(mitadX,mouseY*1.3+5*v,mitadX+4*v,mouseY+v, mitadX,-3.5*v,mitadX-4*v,mouseY+v);            
    quad(mitadX,mouseY*1.2+3.5*v,mitadX+2.5*v,mouseY+v, mitadX,-1.5*v,mitadX-2.5*v,mouseY+v);        
    quad(mitadX,0,mitadX+v,mouseY+v, mitadX,mouseY*1.1+2*v,mitadX-v,mouseY+v);      
  }
  
  void target(){
  //cicrculos ubicados en la parte superior del canvas
  if(mouseY>0){
    fill(200,100,mouseY/2);
    ellipse(mitadX,0,mouseY,mouseY);
    ellipse(mitadX,0,mouseY/2,mouseY/2);
  }
  }
  
  void suelo(){
    //figuras ubicadas en la base
    fill(200,0,mouseY/4);
    triangle(0,height,width,height,mitadX,mouseY+4.5*v);
    triangle(v,height,width-v,height,mitadX,mouseY+6.5*v);
    fill(200,100,mouseY/2);
    ellipse(mitadX,mouseY+5.5*v,0+mouseY/2,mouseY/2);
  }
  
  void angulo(){
    //cambian el ángulo correspondiente a "v"
   if (keyPressed) {
     if (key == 'n') {
      v= v*3*c;
      }
     if (key == 'm') {
      v= v*c;
      }
   }
  }

  void reiniciar(){
  if (mousePressed){
  v=50; //revertimos "v" al valor inicial, reciniciando ediciones de "m" o "n".
  fill(255);
  stroke (0); //podemos apreciar como se ve la composición con bordes negros
  } else{
  stroke(mouseY,0,100); //al soltar la tecla vuelve a color
}
  
  }

  void blanco(){
   if (keyPressed) {
     if (key == 'j') {
      stroke(255); //podemos ver la composición con bordes blancos
  }
}
}

  void grow(){
    //función de da movimiento a la composición
  v = v +0.1;
  }
  

}
