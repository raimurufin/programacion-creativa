Figura c;
//Plantilla
void setup() {
  size(595, 842);
  c=new Figura();
  smooth();
}
//Fondo, llamado a figura y orden
void draw() {
  background(220);
  c.escala();
  c.forma();
  c.correr();
  
}
