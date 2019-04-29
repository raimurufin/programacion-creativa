//Clase
class Objeto{


//Variable
int i;
float x;
float y;


//Contructor
Objeto(int i,float x, float y){// variables
  this.i=i;
  this.x=x;
  this.y=y;
}

//metodo
void display(){
  ellipse(x,y,40,40);//Ellipse
}



}
