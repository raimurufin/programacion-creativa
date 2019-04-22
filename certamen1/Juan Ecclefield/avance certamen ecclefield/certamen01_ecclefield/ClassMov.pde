class ClassMov{
  int tamX;
  int ang;            // Control para el angulo de rotacion
  int mapTamX;        // mapeo para difeerencia de tamaños
  float m;            // mapeo de ang
  int radRot;

  ClassMov(int tamX, int ang, float m, float radRot){
      this.tamX = tamX;
      this.ang = ang;
      this.mapTamX = mapTamX;
      this.m = m;
      this.bn   = bn;       // Variable de color
      this.nb   = nb;       // Variable de color
      //this.radRot = radRot;

  }

void primerObj(int ang, int tamX,  int bn, int nb){

       pushMatrix();
       rectMode(CENTER);
        translate(width/2, height/2);
        rotate(radians(ang));
        strokeWeight(5);
        //rect(0,0, mapTamX, 40);
        rect(0, 0, tamX, 40);
       popMatrix();
}

void segundoObj(float m, int tamX){

  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(0);
rotate(radians(m));
    for(int i = 0; i < 500; i+=10){
    //  rotate(radians(m));
      rect(0,0, i, i);
    }
  popMatrix();
}

void tercerObj(float m, int tamX, float radRot, int bn, int nb){
  translate(width/2, height/2);
  rectMode(CENTER);
  rotate(radians(frameCount));
  noFill();
  strokeWeight(10);
  for(int i = 0; i < 1200; i+=40){
    rotate(radians(radRot));
    rect(0,0, i, i,25);
  }
}

// Activar y desactivar
void cuartoObj(){


}

}
