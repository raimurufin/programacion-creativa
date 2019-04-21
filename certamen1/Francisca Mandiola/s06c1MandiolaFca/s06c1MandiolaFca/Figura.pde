class Figura {
  //declarar float
  float r = 0;


  void pelota() {
    //push/pop  matrix para que cumpla esa función una vez y continue
    pushMatrix();
    //Especifica una cantidad para desplazar objetos dentro de la ventana de visualización
    translate(width/2, height/2);
    //rota la cantidad especificada por el parámetro de ángulo. Los ángulos deben especificarse en radianes.
    rotate(r);
    //color de la ellipse
   //blanco
    fill (255);
    //sin línea de trazo
    noStroke();
    //figura creada
   //con el mouse se mueve la variable x
    ellipse(mouseX, 0, r, 50);
    //velocidad de rotación
    r++;
    popMatrix();



  }
}
