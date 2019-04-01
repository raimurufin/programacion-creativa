
class Centro{
  float x = 50;
  float y = 20;
  float m = 50;
  float n = 20;



Centro (int radio,int escala){
  
}

void Circulo(){

pushMatrix();
translate(width/2,height/2);
rotate (millis() * 0.0001 * 100);
translate (n-20,n-20);
ellipse (x,y,m,m);
ellipse (x,y,m-20,m-20);
ellipse (x,y,m-40,m-40);
ellipse (x,y,m-60,m-60);
x = x + .1;
y = y + .1;
m = m + 0.2;
n = n + 0.9;
fill (255);
popMatrix();
}

}
