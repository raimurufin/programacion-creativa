//Certamen 1 - Cristobal Schaerer - 2019

Figura f;// la clase
int z;
void setup(){

  size(842,595);//tamaño A4 en pixeles
  //los rectangulos rotaran desde su eje central
  f = new Figura(0,0,0,55,80,200,20,0,0,width,height,6,100);//x,y,r,rojo,verde,azul,posx,posy
}

void draw(){
  background(255);//Fondo blanco
  f.rectangulos();//Patron de rectangulos fondo
  f.patron();
  pushMatrix();
    translate(width/2,height/2);//la posicion inicial es en el centro
    f.circulo1(50, 1);//arcos; (radio,velocidad)
    f.circulo2(600,600);//circulo que divide;(t1,t2)
    f.circulos4(380);//circulo que divide azul;(radio)
    f.circulos(20, 15);//circulos centrales en espiral(brazos, radio)
    f.circulos3(5,200);//circulos de color azul;(radio,posX)
    f.line1();//lineas variantes(grosor y tamaño)
    f.circulos5(2,2,300);// circulos rodeando zona grande; (radio, radio2, posX)

  popMatrix();
if(z==1){
  saveFrame("CristobalSchaerer4.pdf");
}
}
void keyPressed(){
  if(key == ' '){z=1;}

}
