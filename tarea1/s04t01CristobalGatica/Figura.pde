//Variables
class Figura {
  float Angulo = 0;
  float Velocidad = 0;
  float Aceleracion = 0.001;

  Figura() {
    Angulo = 0;
    Velocidad = 0;
    Aceleracion = 0.001;
  }

  void forma() {
    //fill(127);
   // stroke(0);

    translate(width/2, height/2); //Posicion
    rectMode(CENTER); 
    rotate(Angulo);
    //stroke(0);
    strokeWeight(2);
    //fill(127);
    line(-60, 0, 60, 0); //composicion de figura
    ellipse(60, 0, 16, 16);
    ellipse(-60, 0, 16, 16);
    ellipse(100, 0, 10, 10);
    ellipse(-100, 0, 10, 10);
    ellipse(150, 10, 10, 10);
    ellipse(150, 0, 10, -100);
    ellipse(-150, 0, 10, 100);
    ellipse(0, 0, 10, 10);
  }


  void correr() {  //Movimientos laterales, rotacion
    Angulo +=Velocidad;
    Velocidad += Aceleracion;
  }

  void escala() {
    if (key=='a') {
   fill(random(0,255),random(0,255),random(0,255));
   stroke(255,0,0); //Cambio multicolor, degrade al ojo.
    } else if(key=='b'){ //Cambio a ROJO
     fill(255,0,0);
   stroke(255,0,0);
   
    }
  }
}
