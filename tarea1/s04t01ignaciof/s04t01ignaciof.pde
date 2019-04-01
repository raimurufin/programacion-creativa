//autor: Ignacio Ffrench-davis
//fecha:25/03/2019
//Trabajo: Tarea_1

//'r' para usar saveFrame
//'z' fondo negro
//'x' {o.Rectangulo();}    
//'c' {o.Rectas();}    
//'v' {o.Linea();
//'b' fondo gris
//'n' {o.Cuadrado()

Optical o;


void setup(){
size (842,595);// Tamaño del canvas
o = new Optical (300,300);
background(0);

}
void draw(){

//o.Cuadrado();
//o.Circulo();
//o.Rectas();
//o.Linea();
//o.Rectangulo();
}
void keyPressed(){
  
if (key == 'r') { saveFrame("Ffrenchdavis-####.jpg");}
  else if (key =='z'){background(0);} 
 
  else if (key =='x'){o.Rectangulo();}   
   
  else if (key== 'c'){o.Rectas();}
    
  else if (key== 'v'){o.Linea();}
  
  else if (key =='b'){background(200);}

  else if (key== 'n'){o.Cuadrado();}
  
  
} 
  

    
