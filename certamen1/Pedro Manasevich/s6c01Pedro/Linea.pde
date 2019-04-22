class Linea { //Clase


  // Constructor
  Linea() {}

  void lineas() {
    translate(width / 2, height / 2); //trasladar
    for (float i = 0; i < cantidad; i++) {
      rotate(r); //Rotar
      r += .1;
      //linea 1
      strokeWeight(3);
      stroke(255); //Color de la linea.
      line(40, 40, 100, random(50, 400)); //Linea.

      //linea 2
      strokeWeight(6);
      stroke(random(0, 255), 0, random(0, 255)); //Color de la linea.
      line(40, 40, 100, random(50, 400)); //Linea.
    }
  }
}
