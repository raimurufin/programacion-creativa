
class ClassTarV2{
  float tamX, tamX2, tamY;   // Variables de cambio de teamaño
  int bn, nb;                // Parametro para color blanco y negro y viceversa

ClassTarV2(float tamX, float tamY, int bn, int nb){           // se definen los parametros que se van a ocipar como variables

  this.tamX = tamX;     // Variable de tamaño X
  this.tamY = tamY;     // Variable de tamaño Y
  this.bn   = bn;       // Variable de color
  this.nb   = nb;       // Variable de color
}

void rotObj(float tamX, int bn, int nb){

///////////////////////////////////////PRIMER SKETCH///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////

// Anillo inicial
  for(int i = 0; i < 360; i+=20){                    // For que define: angulo máximo de rotación, cantidad de figuras y su separación
       float x = sin(radians(i))*150;                // variable de rotacion
       float y = cos(radians(i))*150;                // variable de rotacion
       pushMatrix();                                 // Abriendo propiedades independientes
        translate(width/2, height/2);                // Se traslada el origen, que al mismo tiempo esta en movimiento
        rotate(radians(-i+frameCount));
        stroke(0);                                   // proporciona movimiento al sketch/ cambia los ejes/ direccion de rotacion
        fill(bn);                                    // Se rellena la figura con el color original, pero es alterado en el canal R. (P.127) esto hara que palpite el anillo
        rect(50, 0, 120, tamX, 45);                  // Se dibujan las figuras que se encuentran en el fondo
       popMatrix();                                  // Cerrando propiedades independientes
}
}

// Anillos verdes, Principales

void segAnillo(int bn, int nb) {
  for(int i = 0; i < 360; i+=20){
       float x = sin(radians(i))*150;
       float y = cos(radians(i))*150;
       pushMatrix();
        translate(width/2, height/2);
        rotate(radians(i-frameCount));
        strokeWeight(5);
        stroke(nb);
        fill(bn);
        rect(175, 0, 80, 40, 45);
       popMatrix();
  }
}

// Anillos pequeños dentro de rect(25)

void terAnillo(float tamX2, int bn, int nb) {
    for(int i = 0; i < 360; i+=20){
         pushMatrix();
          translate(width/2, height/2);
          rotate(radians(i-frameCount));
          fill(nb);
          rect(190, 15, tamX2, 10, 22);
         popMatrix();
  }
}


// Anillos interiores (line ipx)
void cuarAnillo(int bn, int nb) {
    for(int i = 0; i < 360; i+=20){
       pushMatrix();
         translate(width/2, height/2);
         rotate(radians(i-frameCount*2));
         fill(nb);
         line(50,20,5,5);
      popMatrix();
  }
}

void quinAnillo(int bn, int nb) {
    for(int i = 0; i < 360; i+=20){
       pushMatrix();
         translate(width/2, height/2);
         rotate(radians(i-frameCount*2));
         fill(bn);
         rect(250,0,10,50);
      popMatrix();

  }
    for(int i = 0; i < 360; i+=20){
      pushMatrix();
        translate(width/2, height/2);
        rotate(radians(i-frameCount*2));
        noStroke();
        fill(bn);
        rect(40,0,2,10);
        rect(170,0,5,20);
      popMatrix();
    }
}
///////////////////////////////////////SEGUNDO SKETCH///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////

void efect_01(){
  pushMatrix();
    translate(width/2, height/2);
    noFill();
    strokeWeight(150);
    stroke(0);
    ellipse(0,0,700,700);
  popMatrix();

  for(int i = 0; i < 360; i+=5){
    pushMatrix();
      translate(width/2, height/2);
      rotate(radians(i));
      noStroke();
      fill(0, 0, 0);
      rect(20,20,7,500);
    popMatrix();
  }
}

void efect_02(){
  for(int i = 0; i < 360; i+=20){
    pushMatrix();
      translate(width/2, height/2);
      noStroke();
      ellipse(0,0,100,100);
      rotate(radians(i+frameCount));
      noStroke();
      fill(0);
      ellipse(200,0,50,50);
      noStroke();
      fill(0);
      rect(200,20,7,50);
    popMatrix();
  }
}

void efect_03(){
  for(int i = 0; i < 360; i+=10){
    pushMatrix();
      translate(width/2, height/2);
      rotate(radians(i+frameCount));
      noStroke();
      fill(255);
      rect(270,20,160,35);
    popMatrix();
  }
}

void efect_04( ) {
  for(int i = 0; i < 360; i+=20){
    pushMatrix();
      translate(width/2, height/2);
      noStroke();
      rotate(radians(i-frameCount));
      noStroke();
      fill(0);
      ellipse(150,0,50,50);
      ellipse(250,0,50,50);
      noStroke();
      fill(0);
      rect(150,20,7,50);
      rect(250,20,7,50);
    popMatrix();
    }
  }
}
