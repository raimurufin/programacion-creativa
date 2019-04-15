class Nieve {
  float x = random(width);
  float y = random(-400, -50); //desde donde caen los copos 
  float yfall = random(1, 4);//rapidez con la que caen los copos 
  float t = random(5, 12);//tamaño que pueden adoptar los copos
  void gravedad() {
    y = y + yfall;
    yfall = yfall + 0.04; //aceleracion

    if (y > height) {
      y = random(-425, -50);
      yfall = random(3, 9);
    }
  }

  //Diseño de los copos de nieve
  void copo() {
    noStroke();
    fill(230,0,0);
    ellipse(x, y, t, t);
  }
}
