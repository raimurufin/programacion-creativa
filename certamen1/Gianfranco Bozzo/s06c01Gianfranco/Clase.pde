class Clase {
  float x;
  float y;

  Clase() {
    x=100;
    y=100;
  }

  /*Función para circulo real, que sera el que va a ser reflejado
   una vez terminado el codigo, x1 y x2 establecen hasta que anchura y altura
   es el maximo y el minimo por donde se puede mover el circulo real.*/
  void circuloreal(float x1, float x2) {
    noFill();
    // si hay noFill, pero no hay stroke, el color no se controla
    x1=map(mouseX, 0, width, 0, width);
    x2=map(mouseY, 0, height, 0, height/2);
    ellipse(x1, x2, x, y);
  }

  /*Función para el reflejo del circulo real, x3 y x4 establecen la anchura y la
   altura minima y maxima por donde se puede mover el reflejo del circulo.*/
  void circuloreflejo(float x3, float x4) {
    noFill();
    // si hay noFill, pero no hay stroke, el color no se controla
    x3=map(mouseX, 0, width, 0, width);
    x4=map(height-mouseY, 0, height, height/2, height);
    ellipse(x3, x4, x, y);
  }

  /*Funcion para controlar el tamaño de ambos circulos.*/
  // Estas funciones de teclado, aunque sean locales, deben estar declaradas en el archivo principal
  void tamanocirculo() {
    if (key=='a') {
      x=x+1;
      y=y+1;
    } else if (key=='s') {
      x=x+0;
      y=y+0;
    } else if (key=='d') {
      x=x-1;
      y=y-1;
    }
  }
}
