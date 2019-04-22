class Figura { //Nombre de la Clase

  float x, y, x1, y1; //Variables de posición
  float r, r2; //Variables de rotación
  float rot; //Variable rotación (circulos3)

  Figura(float x, float y, float r, float x1, float y1, float r2, float rot) { //constructor
    this.x = x; //(circulos), (circulo1), (circulo2), (circulos4)
    this.y = y; //(circulos), (circulo1), (circulo2), (circulos4)
    this.r = r; //(circulos), (circulo1),
    this.x1 = x1; //(circulos5), (rectangulos)
    this.y1 = y1; //(circulos5)
    this.r2 = r2; //(line1)
    this.rot = rot; //(circulos3)
  }

  void circulos(int radio, int brazos) {
    /*Varios círculos en el centro del sketch los cuales están rotando casi como un espiral*/
    for (int l = 0; l < brazos; l++) { //Aumenta la cantidad de"líneas"en 8 cantidades
      for (int o = 0; o < radio; o++) { //Se forman "líneas" de círculos,15 círculos
        strokeWeight(1); //Grosor del contorno
        stroke(10); //Color del contorno
        pushMatrix();
        r += 0.8; //Rotación irá aumentando en 0.8
        fill(249, 170, 10); //Color de relleno
        rotate(radians(PI) * r * 100); //La rotación variará con el valor de r
        ellipse(x + o * 3, y + o * 2, 5, 5);
        popMatrix();
      }
    }
  }

  void circulo1(int radio, float velocidad) {
    /*Genera varios arcos que rotan alrededor*/
    for (int i = 0; i < radio; i++) { //Número de  arcos
      strokeWeight(5); //Ancho del contorno
      stroke(20); //Color del contorno
      pushMatrix();
      noFill(); //Sin relleno
      r = r + 0.001; //Rotación aumentará en 0.001
      rotate(radians(5 * (i * velocidad)) * r); //Rota al rededor del eje central y varía según valor de r y de i
      arc(x, y, 45 * i, 45 * i, HALF_PI, PI); //Arcos que varían según i
      popMatrix();
    }
  }

  void circulo2(int t1, int t2) {
    /*Círculo de fondo blanco que marca una zona en el centro*/
    stroke(255, 63, 89);
    fill(45, 0, 153); //Color del círculo
    ellipse(x, y, t1, t2);
  }

  void circulos3(int radio, int posX) {
    /*Círculos repetidos de color naranjo rodeando una zona alrededor del centro*/
    pushMatrix();
    rot++;
    rotate(radians(rot));
    for (int p = 0; p < 60; p++) { //Cantidad de líneas de círculos repetidos
      for (int u = 0; u < radio; u++) { //Número de círculos por línea
        noStroke(); //Sin contorno
        fill(249, 170, 10); //color de los círculos
        ellipse(posX + u * 20, 0, 10, 10); //Una elipse alineada con otra.
      }
      rotate(radians(360 / 60));
    }
    popMatrix();
  }

  void circulos4(int radio) {
    /* Es un círculo turquesa con  opacidad de 95% que marca una zona en el centro*/
    noStroke(); //Sin contorno
    fill(85, 226, 217, 95); //Color de relleno con 95% de opacidad
    ellipse(x, y, radio, radio);
  }
  void circulos5(int radio, int radio2, int posX) {
    /*Círculos morados pasteles que rodean el área más grande y pequeña en el centro*/
    pushMatrix(); //Ronda de círculos más pequeña
    for (int m = 0; m < 20; m++) { //20 círculos alrededor del área
      for (int n = 1; n < radio; n++) { //Niveles de círculos, inicia con una fila y tiene máximo de 1
        noStroke(); //Sin contornos
        fill(132, 133, 184); //Color de relleno
        ellipse(x1 + n * 50, y1, 10, 10);
      }
      rotate(radians(360 / 20));
    }
    popMatrix();
    ////////////////////////////////////////////////
    pushMatrix(); //Ronda de círculos más grande
    for (int s = 0; s < 60; s++) { //60 círculos alrededor del área
      for (int d = 1; d < radio2; d++) { //Niveles de círculos,inicia con una fila y tiene máximo de 1
        fill(132, 133, 184); //Color de relleno
        ellipse(posX + d, y1, 20, 20);
      }
      rotate(radians(360 / 60));
    }
    popMatrix();
  }

  void line1(float min, float max) {
    /*Líneas rosadas que varían su grosor y largo posicionadas alrededor del centro */
    for (int k = 0; k < 50; k++) { //50 lineas rosadas
      pushMatrix();
      r2++;
      rotate(r2);
      strokeWeight(random(3, 8)); //El grosor varía aleatoriamente
      stroke(255, 63, 89); //color de la linea
      line(0, 50, 0, random(min, max)); //Líneas con largo aleatorio
      popMatrix();
    }
  }
  void patron(float x1, float y1) {
    /*Círculo que va cambiando de posición en el sketch de forma aleatoria*/
    for (int v = 0; v < 50; v++) { //50 círculos
      fill(45, 0, 153); //Color relleno
      ellipse(x1, y1, 35, 35);
    }
  }

  void rectangulos(int columnas) {
    /*Patrón de rectángulos en el fondo con movimiento rotatorio*/
    pushMatrix();
    for (int h = 0; h < columnas; h++) { //numero de columnas
      rotate(radians(frameCount)); //rota segun los frames
      noStroke(); //Sin contornos
      fill(249, 170, 10); //color relleno
      rect(x1 + h * 35, 0, 10, height + (height / 3));
      rect(-(x1 + h * 35), 0, 10, height + (height / 3));
    }
    popMatrix();
  }
}
