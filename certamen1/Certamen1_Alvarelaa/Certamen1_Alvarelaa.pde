Cdo w;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  stroke(255);

  w = new Cdo();
}  

void draw() {

  background(250);
  
  w.CreaCdo();
  w.CreaCCdo();
  w.Press();
  
}
