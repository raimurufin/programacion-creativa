class Spiral {

  float rot; //rotación

  void tri(int n) {
    rot += 0.1;

    for (int i = 0; i<n; i++) {
      pushMatrix();
      translate(width/2, height/2);
      rotate(radians(rot*i+10));
      fill(2*i);
      stroke(255);
      triangle(-30, 30+5*i, 0, -30+5*i, 30, 30+5*i);
      //triangle(-30*i, 30, 0*i, -30, 30*i, 30);
      popMatrix();
    }
  }
}
