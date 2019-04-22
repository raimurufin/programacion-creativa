OndaClase o;
int x;
int y;
int h;
int w;
float p = 0;        //variable para posicion y
float s = 0;        // variable para posicion x

void setup(){
  size (800, 600);
  background (0);

 o = new OndaClase(x, y, w, h);
}

void draw (){
 fill(255);
 background(0);
// ellipse(s,height/2 + sin(p)*100, 10, 10);    // la posicion de y es = a la altura partido 2 mas el seno de la variable p * 100
 //p = p + 0.05;
 //s = s + 3;
o.coseno(p + 1.5, 480, 295);
o.coseno(p + 0.5, 440, 280);
o.coseno(p, 400, 300);
o.coseno(p + 1, 460, 320); 
o.seno(p + 0.5, 390, 320);
o.seno(p, 430, 320);
p = p + 0.055;

}
