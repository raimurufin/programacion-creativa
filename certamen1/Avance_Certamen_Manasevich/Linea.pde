class Linea {//Clase

// Constructor
  Linea() { //Clase
  }

  void figura() {


    for (float r= 0; r < 3; r++) {

        pushMatrix();
        rotate(TWO_PI*frameCount*.005);
        strokeWeight(8);
         stroke(25,250,255);
        line(20,20, 200, 200);
        popMatrix();
      }
    }
  }
