class Cuadrado {
  float x;//Origen del centro en X
  float y;//Origen del centro e Y
  int num=10; // Cantidad de cuadrados
  int frames = 30;// Velocidad del angulo de rotate "sw"
  float theta;//Es el resultado del angulo representado en PI

  Cuadrado() {
    x = width/2; // Se establece el origen de los cuadrados en el centro asignadnole un valor a x e y
    y = height/2;
  }



  void rotacion1() {
    translate(x, y);// Da el origen de los cuadrados con los valores anteriormente mencionados

    for (int i=0; i<num; i++) { //For asignado para definir la cantidad de cuadrados queremos que hayan
      float sz = i*35;// tamaño de los cuadrados multiplicados para aumentar de tamaño secuencialmente
      float sw = map(sin(theta+TWO_PI/num*i), -1, 1, 1, 5); // aumento y disminucion del GROSOR DE LA LINEA/ANGULO DE ROTACION a partir de rangos establecidos
      pushMatrix();
      rotate(sw/20); // Resultado final del angulo que genera elefecto rebote
      rect(0, 0, sz, sz); // Cuadrado con valores distintos segun sz (Escala de los cuadrados)
      if (i%2==1) { //Condicion que cambia los colores de las lineas dependiendo de los valores en i
        stroke(0);

      } else {
        stroke(255);
      }
      rectMode(CENTER);//Permite trabajar desde el centro de la figura
      strokeWeight(sw);// grosor de la linea
      popMatrix();
    }
    theta += TWO_PI/frames;
  }
}
