//x=5t
//y=3t+3
float t;
color c = 1;

void setup() {
  background (20);
  size(500, 500);
}

void draw() {
  stroke(c);
  strokeWeight(2);

  translate(width/2, height/2);
  line(x1(t), y1(t), x2(t), y2(t));
  t++;
  c++;

  if (c>250) {
    c--;
  }
}

float x1(float t) {
  return sin(t/10)*100 + sin(t/5)*20;
}

float y1(float t) {
  return cos(t/10)*100;
}

float x2(float t) {
  return sin(t/10)*200 + sin(t)*2;
}

float y2(float t) {
  return cos(t/20)*200 + sin(t/12)*20;
}
