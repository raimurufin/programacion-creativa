import processing.pdf.*;

Tarea t;
int x;
int y;
int h, tamY;
int w, tamX;
int r = 29;
int g = 10;
int b = 255;
int velocidad = 1;

boolean a = false;

void setup()
{
size(842,595);
beginRecord(PDF, "jo4.pdf");
background(0);
t = new Tarea(x, y, h, w, r, g, b);
}

void draw()
{
println(tamX,h);


h = h + velocidad;
w = w + velocidad;


if (h > 200){
  h = 0;
  w = 0;
}

if (tamX > 200){
  tamX = 0;
  tamY = 0;
}

t.kk(r, g, b, w, h);
t.kk3(r, g, b, w, h);
t.kk5(r, g, b, w, h);
t.kk7(r, g, b, w, h);
t.kk9(r, g, b, w, h);
t.kk11(r, g, b, w, h);
t.kk13(r, g, b, w, h);
t.kk15(r, g, b, w, h);
t.kk17(r, g, b, w, h);
t.kk19(r, g, b, w, h);
t.kk21(r, g, b, w, h);
t.kk23(r, g, b, w, h);


if (h >= 100){
  a = true;

}

if (a == true){
  t.kk2(tamX, tamY);
  t.kk4(tamX, tamY);
  t.kk6(tamX, tamY);
  t.kk8(tamX, tamY);
  t.kk10(tamX, tamY);
  t.kk12(tamX, tamY);
  t.kk14(tamX, tamY);
  t.kk16(tamX, tamY);
  t.kk18(tamX, tamY);
  t.kk20(tamX, tamY);
  t.kk22(tamX, tamY);
  t.kk24(tamX, tamY);
  tamX = tamY+1;
  tamY = tamY+1;

}

}

void keyPressed(){
  if (keyPressed){
    if (key == 's'){
    velocidad = 2;
    }
  }
if (keyPressed){
  if (key == 'f'){   //cuando apreto F saca la foto
    endRecord();
    exit();
  }
}

}
