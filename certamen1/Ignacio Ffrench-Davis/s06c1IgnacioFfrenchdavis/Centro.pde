class Centro {
  float x = 50;
  float y = 20;
  float m = 10;//tamaño circulo
  float n ;// radio
  float velocidad = 0.008; //velocidad de rotacion

  Centro () {
  }


  void circulo() {

    pushMatrix();

    fill(mouseX, mouseY, 100);  // cambia el relleno al mover el mouse
    translate(width/2, height/2); //trasladar al medio
    rotate (millis() * velocidad); //rotacion
    translate(n-20, n-20);

    //primera ellipse
    ellipse (-x, y, m+30, m+30);
    ellipse (-x, y, m+20, m+20);
    ellipse (-x, y, m+10, m+10);
    ellipse (-x, y, m, m);
    ellipse (-x, y, m-10, m-10);
    ellipse (-x, y, m-20, m-20);
    fill(mouseX, mouseY, 150);
    ellipse (-x, y, m-30, m-30);

    //segunda ellipse
    fill(mouseX, mouseY, 100);
    ellipse (x, -y, m+30, m+30);
    ellipse (x, -y, m+20, m+20);
    ellipse (x, -y, m+10, m+10);
    ellipse (x, -y, m, m);
    ellipse (x, -y, m-10, m-10);
    ellipse (x, -y, m-20, m-20);
    fill(mouseX, mouseY, 150);
    ellipse (x, -y, m-30, m-30);

    x = x + .1;
    y = y + .1;  
    m = m + 0.1; // tamaño de ellipse- escala
    n = n + 0.5; // radio de giro
    strokeWeight (1); // grosor linea
    popMatrix();
  }
}
