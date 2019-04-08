Figura f;// la clase
int z;
void setup(){
  size(842,595);//tamaño A4 en pixeles
  //los rectangulos rotaran desde su eje central
  f = new Figura(0,0,0,55,80,200,200,20,0,0,width,height,6,100);//x,y,r,rojo,verde,azul,posx,posy
}

void draw(){
  background(255);//Fondo blanco
  f.rectangulos();//Patron de rectangulos fondo
  f.patron();
  pushMatrix();
    translate(width/2,height/2);//la posición inicial es en el centro
    f.circulo1();//arcos
    f.circulo2(600,600);//circulo que divide
    f.circulos4();
    f.circulos();//circulos centrales
    f.circulos3();//circulos de color azul
    f.circulos5();
    f.line1();
    f.circulos6();
  popMatrix();
if(z==1){
  saveFrame("CristobalSchaerer4.pdf");
}
}
void keyPressed(){
  if(key == ' '){z=1;}

}
