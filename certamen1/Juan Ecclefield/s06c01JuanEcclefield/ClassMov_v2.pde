class ClassMov_02 {

  // Variables de rotacion de la clase
  int rot;
  float rot2;
  float rot3;
  float rot4;
  float rot5;

  ClassMov_02(int rot, float rot2, float rot3, float rot4, float rot5) { // Colocar los parametros que recibira el constructor
    // Indicar que estamos trabajando con estas variables y no las del sketch
    this.rot = rot;
    this.rot2 = rot2;
    this.rot3 = rot3;
    this.rot4 = rot4;
    this.rot4 = rot5;
  }


  /////////////////////////////////// SKETCH SIMPLE /////////////////////////////////////////

  // Rectangulos negros que rotan en su eje.
  // RECTANGULOS//
  // los nombres de los métodos pueden ser más descriptivos aún
  void figura1(int rot) {
    pushMatrix();
    rectMode(CENTER);
    noStroke();
    fill(0);
    rotate(radians(rot));
    rect(0, 0, 50, 50);
    popMatrix();
  }

  // Dispocisión de los rectangulos de la figura 1.
  // Se pocisionan a lo largo y ancho del sketch.
  void diagramacion1(int rot) {
    for (int posY = 0; posY < 650; posY = posY + 100) {
      for (int posX2 = 0; posX2 < 900; posX2 = posX2 + 100) {
        pushMatrix();
        translate(posX2, posY);
        // esta línea es POO, muy bien.
        // llamar un método dentro de otro, cada uno con funciones específicas,
        // es uno de los aspectos más importantes, la modularidad.
        figura1(rot);
        popMatrix();
      }
    }
  }

  // Dispocisión de los rectangulos de la figura 1.
  // Se pocisionan a lo largo y ancho del sketch.
  void diagramacion2(int rot) {
    for (int posY = 50; posY < 650; posY = posY + 100) {
      for (int posX2 = 50; posX2 < 900; posX2 = posX2 + 100) {
        pushMatrix();
        translate(posX2, posY);
        figura1(rot);
        popMatrix();

      }
    }
  }

  ///////////////////////////////////////////////////////////////////////////////

  // Rectangulos blancos que rotan en su eje.
  // RECTANGULOS//
  void figura2(int rot) {
    pushMatrix();
    rectMode(CENTER);
    noStroke();
    fill(255);
    rotate(radians(rot));
    rect(0, 0, 50, 50);
    popMatrix();

  }

  // Dispocisión de los rectangulos de la figura 2.
  // Se pocisionan a lo largo y ancho del sketch.
  void diagramacion3(int rot) {
    for (int posY = -50; posY < 650; posY = posY + 100) {
      for (int posX2 = 0; posX2 < 900; posX2 = posX2 + 100) {
        pushMatrix();
        translate(posX2, posY);
        figura2(rot);
        popMatrix();
      }
    }
  }

  // Dispocisión de los rectangulos de la figura 2.
  // Se pocisionan a lo largo y ancho del sketch.
  void diagramacion4(int rot) {
    for (int posY = 0; posY < 650; posY = posY + 100) {
      for (int posX2 = -50; posX2 < 900; posX2 = posX2 + 100) {
        pushMatrix();
        translate(posX2, posY);
        figura2(rot);
        popMatrix();
      }
    }
  }

  ///////////////////////////////////////Segundo sketch///////////////////////////////////////


  // hexagono negro que gira en su eje. Recibe informacion del parametro "rot3", pocisiona
  // los rectangulos simulando la forma de un hexagono
  // HEXAGONO //
  void figura3() {
    for (int i = 0; i < 360; i = i + 60) {
      pushMatrix();
      fill(0);
      rotate(radians(i));
      rect(30, 0, 60, 68);
      popMatrix();
    }
  }

  // triangulos blancos que giran en su propio eje. Reciben informacion del parametro "rot2", lo que los hace girar
  // TRIANGULO
  void figura4(float rot2) {
    stroke(0);
    fill(255);
    pushMatrix();
    triangle(-35, 20, 0, -36, 34, 20);
    popMatrix();
  }

  // triangulos blancos que giran en su propio eje. Reciben informacion del parametro "rot2", lo que los hace girar
  // TRIANGULO
  void figura5(float rot2) {
    stroke(0);
    fill(255);
    pushMatrix();
    rotate(radians(rot2));
    triangle(-35, 20, 0, -36, 34, 20);
    popMatrix();
  }

  // Rectangulos blancos del segundo sketch que giran en su propio eje
  // RECTANGULOS BLANCOS
  void figura6(float rot3) {
    stroke(0);
    fill(255);
    pushMatrix();
    rectMode(CENTER);
    rotate(radians(rot3));
    rect(0, 0, 68, 68);
    popMatrix();
  }

  // Rectangulos negros que giran en su propio eje, aparecen luego que los rectangulos blancos terinan un ciclo de rotación.
  // RECTANGULOS NEGROS
  void figura7(float rot3) {
    stroke(0);
    fill(0);
    pushMatrix();
    rectMode(CENTER);
    rotate(radians(rot3));
    rect(0, 0, 68, 68);
    popMatrix();
  }

  // Metodo para pocisionar y repetir el hexagono en el sketch
  // DIAGRAMACIÓN HEXAGONO //
  void diagramacion5(float rot4) {
    for (int posY = 0; posY < 650; posY = posY + 190) {
      for (int p = 0; p < 960; p = p + 138) {
        pushMatrix();
        rectMode(CENTER);
        translate(p, posY);
        rotate(radians(rot4 + 30));
        figura3();
        popMatrix();
      }
    }
  }

  // Metodo para pocisionar y repetir los triangulos en el sketch
  // DIAGRAMACIÓN triangulos //
  void diagramacion6(float rot2) {
    for (int posY = -85; posY < 650; posY = posY + 187) {
      for (int p = 0; p < 960; p = p + 138) {
        pushMatrix();
        translate(p - 69, posY + 50);
        rotate(radians(rot2 + 60));
        figura4(rot2);
        popMatrix();
      }
    }
  }

  // Metodo para pocisionar y repetir los triangulos en el sketch.
  // DIAGRAMACIÓN triangulos //
  void diagramacion7(float rot2) {
    for (int posY = -10; posY < 650; posY = posY + 190) {
      for (int p = 0; p < 960; p = p + 138) {
        pushMatrix();
        translate(p - 70, posY + 50);
        figura5(rot2);
        popMatrix();
      }
    }
  }

  // Metodo para pocisionar y repetir los rectangulos blancos en el sketch.
  // DIAGRAMACIÓN rectangulos //
  void diagramacion8(float rot3) {
    for (int posY = 95; posY < 650; posY = posY + 190) {
      for (int p = 0; p < 960; p = p + 138) {
        pushMatrix();
        translate(p, posY);
        figura6(rot3);
        popMatrix();
      }
    }
  }

  // Metodo para pocisionar y repetir los rectangulos negros en el sketch.
  // DIAGRAMACIÓN rectangulos //
  void diagramacion9(float rot5) {
    for (int posY = 95; posY < 650; posY = posY + 190) {
      for (int p = -70; p < 960; p = p + 138) {
        pushMatrix();
        translate(p, posY);
        figura7(rot5);
        popMatrix();
      }
    }
  }
}
