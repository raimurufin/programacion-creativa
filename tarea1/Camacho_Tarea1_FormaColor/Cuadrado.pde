class Cuadrado {

  float x; // Variable para asignar el origen de los cuadrados
  float y; // Variable para asignar el origen de los cuadrados
  float d = 40; // Variable que suma la distancia entre los cuad
  int num = 70; // Variable que asigna la cantidad de cuadrados en Rotacion1
  int nam = 30; // Variable que asigna la cantidad de cuadrados en Rotacion2
  int nem = 20; // Variable que asigna la cantidad de cuadrados en Rotacion3
  int nim = 7; // Variable que asigna la cantidad de cuadrados en Rotacion4
  int a = 255; // Variable que asigna el color de la linea
  int b = 0; // Variable que asigna el color de la linea

  Cuadrado() {
    x = width/2; // Se establece el origen de las rotaciones en el centro
    y = height/2;
  }

  void Rotacion1() {
    for (int i=num; i>0; i--) { // Primera rotacion ubicada mas al fondo
      pushMatrix();
      translate(x, y);
      rotate(PI+i/2);
      if (i%2==1) {
        fill(0);
      } else {
        fill(255);
      }
      rect(0, 0, d+i*width*0.025, d+i*width*0.025, mouseX);
      popMatrix();
    }
  }

  void Rotacion2() {
    for (int i=nam; i>0; i--) { // Segunda rotacion ubicada delante de la primera rotacion
      pushMatrix();
      translate(x, y);
      rotate(PI+i/1);
      if (i%2==1) {
        fill(255);
      } else {
        fill(0);
      }

      rect(0, 0, d+i*width*0.025, d+i*width*0.025, mouseY);
      popMatrix();
    }
  }
  void Rotacion3() {
    for (int i=nem; i>0; i--) { // Tercera rotacion ubicada delante de la segunda rotacion
      pushMatrix();
      translate(x, y);
      rotate(PI+i/2);
      if (i%2==1) {
        fill(0);
      } else {
        fill(255);
      }

      rect(0, 0, d+i*width*0.025, d+i*width*0.025, mouseX);
      popMatrix();
    }
  }
  void Rotacion4() {
    for (int i=nim; i>0; i--) { // Cuarta rotacion ubicada delante de la tercera rotacion
      pushMatrix();
      translate(x, y);
      rotate(PI+i/1);
      if (i%2==1) {
        fill(0);
      } else {
        fill(255);
      }

      rect(0, 0, d+i*width*0.025, d+i*width*0.025, mouseY);
      popMatrix();
    }
  }
  void click1() { // Asignacion de teclas para quitar cada rotacion segun su letra
    keyPressed(); 
    {
      if (key == 's')
        num = 0;
      if (key == 'd')
        nam = 0;
      if (key == 'f')
        nem = 0;
      if (key == 'g')
        nim = 0;
    }
  }
  void linea1() { //Lineas horizontales negras
    strokeWeight(5);
    stroke(b);
    for (int i = 0; i < 900; i = i+20) {
      line(0, i, 900, i);
    }
  }
  void linea2() { // lineas horizontales blancas
    strokeWeight(5);
    stroke(a);
    for (int i = 0; i < 900; i = i+40) {
      line(0, i, 900, i);
    }
  }
  void colorLinea() { //Cambio de color de las lineas
    keyPressed(); 
    {
      if (key == 'k')
        b = 255;
      if (key == 'l')
        a = 0;
    }
  }
}
