class objeto {
  float x;
  float y;
  float p = 50;
  float q = 20;
  float m = 10;//tamaño circulo
  float n ;// radio
  float velocidad = 0.008; //velocidad de rotacion

  objeto () {
    this.x= width / 2;
    this.y= height/2;
  }


  void circulo() {

    pushMatrix();
    rectMode(CENTER);
    fill(mouseX, mouseY, 100);  // cambia el relleno al mover el mouse
    translate(width/2, height/2); //trasladar al medio
    rotate (millis() * velocidad); //rotacion
    translate(n, n);

    //primera ellipse
    fill(mouseX, mouseY, 150);
    ellipse (-p, q, m+30, m+30);

    //segunda ellipse
    fill(mouseX, mouseY, 100);
    ellipse (p, -q, m+30, m+30);


    p = p + .1;
    q = q + .1;  
    m = m + 0.01; // tamaño de ellipse- escala
    n = n +0.5; // radio de giro
    strokeWeight (1); // grosor linea
    popMatrix();
  }
  void bordes(){
    if(p < 0 || p > width || q < 0 || q> height){
      this.p= width/2;
      this.q= height/2;
    }
}}
