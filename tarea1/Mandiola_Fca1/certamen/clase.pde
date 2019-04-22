class linea {
float x,y;

}

void linea() {

  float x(float t) {
    return sin(t/10)*100;
  }
  float y(float t) {
    return cos(t/60)*200;
  }
  float x1(float t) {
    return sin(t/30)*200;
  }
  float y1(float t) {
    return cos(t/70)*300;
  }
}

