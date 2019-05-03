class Clase{

Clase(){

}

void run(){
display();
//mover();
}


}
void display(){
  for(int i=0;i<width;i++){
  fill(255,200,255,random(255));
  ellipse(cos(i)*width/2,sin(i)*width,50,50); //circulos rosados
  fill(200,250,255,random(255));
  ellipse(sin(i)*width/2,cos(-i)*width/2,50,50); //circulos celeste
  
  // Se le agrega opacidad para apreciar cambios

  }
  

}
