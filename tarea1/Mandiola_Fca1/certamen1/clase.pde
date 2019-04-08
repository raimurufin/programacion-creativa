class Figura {
  float r = 0, s=1;
  

  void pelota() {
    translate(width/2, height/2);
    rotate(r);
    fill (255);
    noStroke(); 
    ellipse(0, 0, r, 50);
    r++;
    s+=2;
  }
}

