Objeto[] o;
int a;
void setup(){
  size(800,800);
  o = new Objeto[20];
  for(int i = 0;i<o.length;i++){
    o[i] = new Objeto(i,255,10,45);
  }
}
void draw(){
background(255);

for(int i = 0; i < o.length;i++){
  o[i].rotacion(i*4+1,a);
  o[i].rectangulos();

}


}
void keyPressed(){
  if(keyCode == LEFT){a=1;}
  if(keyCode == RIGHT){a=2;}


}
