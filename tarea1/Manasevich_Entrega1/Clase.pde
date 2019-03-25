class Clase {//Clase

  Clase() { //Clase
  }

  // Constructor
  void elipse() { //elipse que rebota eje x e y
    x+= xspeed;
    if (x>width||x<0) {
      xspeed*=-1;
    }
    y+= yspeed;
    if (y>height||y<0) {
      yspeed*=-1;
    }
    fill(relleno);
    noStroke();
    ellipse(x, y, 32, 32);
  }

  void cuadrado() { //cuadrado que rebota eje x e y
    x+= xspeed;
    if (x>width||x<0) {
      xspeed*=-1;
    }
    y+= yspeed;
    if (y>height||y<0) {
      yspeed*=-1;
    }
    rectMode(CENTER);
    stroke(x, y);
    fill(relleno);
    rect(x, y, 32, 32);
  }

  void estrellas() {
    
    r+= rspeed;
    if (r>width||r<0) {
      rspeed*=-.1;
    }
    ellipse(x, random(0,842), 2, 2);
  }

  void linea1() { //Linea roja
    strokeWeight (3);
    stroke (250, 0, 0, 25);
    line (0, 0, x, y);
  }
  void linea2() { //Linea Verde
    strokeWeight (3);
    stroke (0, 250, 0, 25);
    line (0, 842, x, y);
  }
  void linea3() { //Linea azul
    strokeWeight (3);
    stroke (0, 0, 250, 25);
    line (595, 0, x, y);
  }

  void linea4() {//Linea Amarilla
    strokeWeight (3);
    stroke (255, 255, 0, 25);
    line (595, 842, x, y);
  }
  void punto1(){
    strokeWeight(.1);
    line(0,0,1,1);
}
 void punto2(){
    strokeWeight(1);
    point(0,842);
}
 void punto3(){
    strokeWeight(.1);
    point(0,592);
}
}
void keyPressed() {
  if (key=='a'||key=='A') {//fondo
    background(f);
  }
  if (key=='t'||key=='T') { //resetear valores
    xspeed=5;
    yspeed=5;
  }
  if (key=='q'||key=='Q') {// + velocidad x
    xspeed++;
  }
  if (key=='w'||key=='W') {// - velocidad x
    xspeed--;
  }
  if (key=='e'||key=='E') {// + velocidad y
    yspeed++;
  }
  if (key=='r'||key=='R') {// - velocidad y
    yspeed--;
  }
  if (key=='c'||key=='C') {//resetear canvas
    background(f);
  }
  if (key=='d'||key=='D') {//Linea Roja
    linea1=!linea1;
  }
  if (key=='f'||key=='F') {//Linea Verde
    linea2=!linea2;
  }
  if (key=='g'||key=='G') {//Linea Azul
    linea3=!linea3;
  }
  if (key=='h'||key=='H') {//Linea Amarilla
    linea4=!linea4;
  }
  if (key=='V'||key=='v') {//rectangulo de fondo
    estrellas=!estrellas;
  }


  if (key=='s'||key=='S') {//Pantallazo
    saveFrame("captura-######.pdf");
  }
}
