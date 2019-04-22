float tamano;
float x;
float y;
int c;
float r = (-asin(30/30));
float ang;
float time;
int v ;

class figura {

  figura (int t) { 
    tamano = t ;
  }

  //void fig1 (int c) {
   // for (int i=0; i<c; i++) {
      
  //  }
  //}

  void matrix (float r) {

    pushMatrix();
    fill(255, 70, 80, 90);
   //rotate (r);
    noStroke();
    rect(50, 50, 50, 50);
    popMatrix();
  }

  void rotacion () { 
    time += 0.005;
    translate(width/2, width/2);
    for (int i = 0; i < 20; i++) {
    rotate(time);
    }
  }
} 