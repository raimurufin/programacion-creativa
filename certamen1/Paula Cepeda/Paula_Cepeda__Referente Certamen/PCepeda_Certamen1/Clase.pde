class Clase {

  float a = 0;
  float b = 0;

  Clase() {}

  void run() {
    comportamiento();
    circulos();
  }

  /*Función para determinar el comportamiento de los círculos,
  varian según el click del mouse, y puede congelar el estado
  de a y b
  */
  void comportamiento() {
      // aspectos gráficos deben ir en conjunto
    stroke(255); //Malys por lo general trabajo blanco sobre fondo negro
    strokeWeight(1);
    if (mousePressed) { //detiene la forma central de vacío
      a = a + 0.2;
      b = b++;
    } else {
      a = a + 0.3;
      b = b + 0.001;
    }
  }

  void circulos() {
    float x0 = map(sin(a), -1, 1, 0, width);
    float y0 = map(cos(a), -1, 1, 0, height);
    float x1 = map(sin(b), -1, 1, 0, width);
    float y1 = map(cos(b), -1, 1, 0, height);

    noFill();
    ellipse(x0, y0, x1, y1); //especificacion de forma


  }


}
