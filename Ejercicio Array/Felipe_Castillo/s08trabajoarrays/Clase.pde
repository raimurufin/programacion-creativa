//Código Clase
class Orb {
  float y = 0;        //Variable Posición Y
  float tamano = 20;  //Variable Tamaño Circulo
  float vel = 0.0001; //Variable Velocidad
  float grosor = 0.5;   //Variable Grosor Circulo
  float posx, posy;
  Orb (int x, int y) {
this.posx = x;
this.posy = y;
  }

  //Método que genera los Circulos

  void metodo() {
    translate(posx, posy);       //Traslado al centro del Canvas
    for (float i = -10; i < 110; i++) {  //For Loop que crea los Circulos
      rotate(millis() * vel);           //Variable de Rotación
      fill(random(255), random(255), random(255));
      ellipse(i, y, tamano, tamano);
      strokeWeight(grosor);
      stroke(255);
      y = y + 0.01;
      tamano = tamano + 0.0001;
    }
  }
}
