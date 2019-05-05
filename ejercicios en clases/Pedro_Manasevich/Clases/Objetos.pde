class Objetos {//Clase

float x, y;


    Objetos(float x, float y) {//Constructor
      this.x=  x;
      this.y=  y;



}

    void objeto() {//objeto con variable de posicion

    ellipse(x,y,tx,ty);
    }

    void mover(){
      x+=velocidad;
    }

    void borde(){

      if(x >= width+10 || x <= -10 || y >= height+10 || y <=-10){
        x = width/2;
        y = height/2;
      }
    }
    void rojo(){
      fill(255,0,0);
      
    }
    void verde(){
      fill(0,255,0);
    }
    void azul(){
      fill(0,0,255);
    }
}
