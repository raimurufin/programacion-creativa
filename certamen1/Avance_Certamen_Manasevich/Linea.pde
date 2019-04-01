class Linea {//Clase

// Constructor
  Linea() { //Clase
  }

  void figura(int cantidad) {


    for (float r= 0; r < cantidad; r++) {

        pushMatrix();
        rotate(r*frameCount*.005);
        strokeWeight(8);
         stroke(25,250,255);
        line(20,20, 200, 200);
        popMatrix();
      }
    }
  }
