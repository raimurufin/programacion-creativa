//mover mouse de forma diagonal de parte inferior izquierda a superior derecha

objeto[] o;
int index;
void setup() {
  size(800, 800);
  o = new objeto[10];

  for (int i =0; i< o.length; i ++) {
    o[i]= new objeto ();
  }
}
void draw() {
  
  index= (int)map(mouseX,0, width,0,o.length);
    for (int i=0; i < index; i ++) {
      o[i].circulo(); 
      o[1].bordes();
    }
  
}
