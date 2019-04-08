float t, col;

class l;

void setup() {
  colorMode(HSB);
  size(800, 600);
  background(00);
  stroke(1000);
  strokeWeight(7);
}

void draw() {
  translate(width/2, height/2);
  stroke(col, 255, 255, 100);
  line(x(t), y(t), x1(t), y1(t));
  t += 0.7;
  col += 0.4;
  if (col > 255)col = 0;
  if (t > 600) {
    background(00);
    t=0;
  }
}

