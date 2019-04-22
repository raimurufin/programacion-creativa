class Clase{
float x;
float y;
float mx;

Clase(){
x=100;
y=100;

}

void real(int a){
noFill();
mx= constrain(a,0,height/2);
stroke(0);
ellipse(mouseX,mx,x,y);
/*if(mouseY>height/2){
c = color(0,0,0,255);
}*/
if(key=='a'){
  x=x+1;
  y=y+1;
} if(key=='s'){
  x=x+0;
y=y+0;
} if(key=='d'){
  x=x-1;
  y=y-1;
}
}

void espejo(Clase c){
noFill();
stroke(0);
ellipse(c.x,-c.y,x,y);
}
}
