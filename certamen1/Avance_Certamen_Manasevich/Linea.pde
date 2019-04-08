class Linea {//Clase


// Constructor
  Linea() { //Clase
  }



  void figura(int cantidad) {
    for (float r= 0; r < cantidad; r++) {

        pushMatrix();
        rotate(r);
        strokeWeight(8);
        stroke(200,0,0);
        rect(random(40,50),random(40,50), 300, 1);
        popMatrix();
        r+=1;

      }
    }
  }
