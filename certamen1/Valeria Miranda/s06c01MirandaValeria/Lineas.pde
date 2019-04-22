class Lineas {
  float x;
  float y;
  float c;
  float ar;
  float o;

  Lineas() {
    x = width / 2;
    y = height / 2;
    c = 50; //redondeo en figura rect
    ar = 1; //ancho figura
    o = 10; //opacidad
  }

  void display() {

    //Generación de figuras giratorias
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 10; j++) {

        //Primera ronda
        //Rectángulos
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount)); //Rotación hacia la DERECHA
        noStroke();
        fill(255, 24 * i, 50, o); //anaranjado-con control de opacidad
        rect(0, 0, 100, ar / 2, c, c, c, c); //lineas rosadas-naranjas
        popMatrix();

        //Segunda ronda
        //Rectángulos
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount * -1)); //Rotación hacia la IZQUIERDA
        noStroke();
        fill(255, 24 * i, 50, o); //anaranjado-crema con control de opacidad
        rect(50, 0, 100, ar, c, c, c, c); //lineas naranjas-crema
        popMatrix();

        //Tercera ronda
        //Rectángulos
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount)); //Rotación hacia la DERECHA
        noStroke();
        fill(10, 50, 255, o / o); //celeste-azul - con control de opacidad
        rect(125, 0, 100, ar * 2, c, c, c, c); //lineas celestes-azul
        popMatrix();

        //Cuarta ronda
        //Triángulos
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount * -1)); //Rotación hacia la IZQUIERDA
        noStroke();
        fill(100, 50, 0, o / 20); //rojo - con control de opacidad
        triangle(200, 0, 240, 10, 200, 20);
        popMatrix();

        //Quinta ronda
        //Elipses
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount)); //Rotación hacia la DERECHA
        noStroke();
        fill(255, 24 * i, 50, o / o); //rosado pastel- con control de opacidad
        ellipse(300, 0, 100, 2);
        popMatrix();

        //Sexta ronda
        //Elipses
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount * -1)); //Rotación hacia la IZQUIERDA
        noStroke();
        fill(100, 50, 0, o / 15); //rojo- con control de opacidad
        ellipse(350, 0, 100, 5);
        popMatrix();

        //Séptima ronda
        //Elipses
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount * 1)); //Rotación hacia la DERECHA
        noStroke();
        fill(10, 50, 255, o / o); //celeste-azul - con control de opacidad
        ellipse(420, 0, 80, j);
        popMatrix();

        //Octava ronda
        //Triángulos
        pushMatrix();
        translate(x, y); //traslación de su eje
        rotate(radians(frameCount * -1)); //Rotación hacia la IZQUIERDA
        noStroke();
        fill(255, 24 * i, 50, o / 2); //rosado-anaranjado - con control de opacidad
        triangle(400, j, 500, 20, 450, 40);
        popMatrix();
      }
    }
  }
}
