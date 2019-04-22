Clase c1,c2;

void setup() {
size(1800,900);
background(255);
c1=new Clase();
c2=new Clase();
}

void draw(){
c1.real(mouseY);
c2.espejo(c1);
}

void keyPressed(){
  if(key==' '){
    background(255);
  }
}
