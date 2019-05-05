class Objeto{
float x,y,t,r;
int rojo,verde,azul;
Objeto( float t, int rojo,int verde,int azul){
  x = width/2;
  y = height/2;
this.t = t*2+25;
this.rojo = rojo;
this.verde = verde;
this.azul = azul;
}

void rectangulos(){

  stroke(0);
  strokeWeight(4);
  rect(x,y,t,t);// varía el tamaño según el i en el setup

}

void rotacion(float pos, int a){
  if(a == 1){
    rotate(radians(r*pos));
    r+= 0.001;
  }else if(a == 2){
    rotate(radians(r*pos));
    r-= 0.001;
  }
}
}
