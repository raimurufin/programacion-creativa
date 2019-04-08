class Linea {//Clase


// Constructor
  Linea() { //Clase
  }



  void figura(int cantidad,float rot,float r,float g, float b) {
    for(int i=0; i<cantidad;i++){
      pushMatrix();
      translate(width/2, height/2);
      noStroke();
      rotate(radians(rot));
    //  fill(r,g,b);
      rect(random(20,25), random(20,25), random(100,300), 10);
      // fill(200);
      // rect(random(20,25), random(20,25), random(10,200), 4);
      // fill(200,0,200);
      // rect(random(20,25), random(20,25), random(10,200), 4);
      popMatrix();
      rot +=.1;

      }
    }
  }
