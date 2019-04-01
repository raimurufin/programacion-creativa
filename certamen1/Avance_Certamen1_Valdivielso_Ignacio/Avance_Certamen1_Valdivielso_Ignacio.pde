Spiral s;
int n;
void setup() {
  size(500, 500);
  s = new Spiral();
  n = 10;
}
void draw() {
  background(255);

  if (frameCount%60==0) {
    n = (int)random(10, 50);
  }
  s.tri(n);
}
