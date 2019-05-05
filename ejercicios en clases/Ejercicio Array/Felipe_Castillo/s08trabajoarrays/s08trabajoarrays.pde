Orb[] alpha;

void setup(){
  size (1920, 1080);
  alpha = new Orb[10];

  for(int i = 0; i < alpha.length; i++) {
    alpha[i] = new Orb (width/2,height/2);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < alpha.length; i++) {
    alpha[i].metodo();
  }

}
