flow f;
void setup() {
  size(800,800);
  background(#313131);
  flow f;
}

void draw() {
  background(#313131);
  translate(width/2, height/2);

   for (int a=0; a<360; a+=1) {
    float x = random(50, 150);
    float xx = random(mouseX, 340);
    pushMatrix();
    rotate(radians(a));
    strokeCap(CORNER);
    strokeWeight(2);
    stroke(random(155), random(25), random(55));
    line(x, 0, xx, 0);
    popMatrix();
  }
}
  void keyPressed() {
  redraw();
  }
