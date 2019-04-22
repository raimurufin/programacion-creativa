float t; //variable para definir la velocidad de rotación de la figura.
float r; // variable que define la razón de proporción de crecimiento de las figuras.
float c; // Color de la línea.
float g; // Grosor de la línea
float s; //Permite un cambio de dirección de la figura con mayor facilidad.
float v; //Cantidad de vertices de la figura.
float a;

class triangulo {
  {
    r = 1;
  }

  void movimiento (float s, float v ) {

    // Se declara el inicio de la figura
    beginShape();
    // Declaramos la disposición de las figuras a través del canvas así como también la cantidad de vértices de las mismas, esto  indicado con la variable "v"
    for (a = s*t; a < TWO_PI + s*t; a += TWO_PI/v) {
      // aquí se declara desde donde comienza a formarse la figura y el movimietno del vértice, es decir, cómo se va agrandando a través del canvas.
      vertex(r*cos(a)+height/2, r*sin(a)+width/2);
    }
    endShape(CLOSE);

    r *= 1.03; // Aquí se define la razón de crecimiento de la figura.
    t += 1; // Se define el valor de t para que la figura esté siempre en movimiento.

    // Se declara que la figura se comience a hacer nuevamente desde el centro del canvas.
    if (r > width) {
      r = 1; // se declara r con valor 1 para que la figura comience a formarse nuevamente desde centro.
    }
  }

  //La siguiente función define las características del triangulo, como el grosor de la linea y el color de la misma.
  void caracteristicas (int c, int g) {
    noFill();
    strokeWeight(g);
    stroke (c, mouseY, mouseX, 255); //Al mover el mouse a lo largo del canvas, el color de la figura camiba.
  }

  //Los siguientes métodos permite que se generen distintos cambios en la composición.

  //Se declara que al mantener el mouse apretado, la rotación de la figura se detiene y la gama de colores cambia.
  void mousePressed() {
    if (mousePressed) {
      t= 0;
      c = 255;
    }
  }

  void keyPressed() {
    // Al apretar la barra espaciadora la composición se detiene
    if (key == ' ') {
      t= 0;
      r= 0;
    }
    // Al mantener cualquier tecla apretada, la velocidad de rotación de la figura aumenta
    if (keyPressed == true) {
      t+= 1.5;
    } else {
      t +=1;
    }
  }

  //Este método permite reiniciar el código y "limpiar" el canvas.
  void reiniciar() {
    if (key == 'z') {
      setup();
    }
    if (key == 'x') {
      redraw();
    }
  }
}

//Fin del código
