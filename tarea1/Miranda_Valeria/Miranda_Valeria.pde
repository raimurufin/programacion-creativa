Rombo r;
float largo;
float ancho;
float col;
color back;

void setup() {
  size(595, 842);

  largo = 25;
  ancho = 10;
  col = 15;

  r = new Rombo();
}

void draw() {
  background (#FA4408);

  r.display();

  //Figura central
  translate(width/2, height/2);
  for (int i=0; i<20; i++) {
    for (int j=0; j<10; j++) {
      pushMatrix();
      rotate(radians(frameCount*-1)); //gira hacia la izquierda
      noStroke(); 
      fill(col*i, col*j, col, 80); 
      quad(0, -largo*i, ancho*j, 0, 0, largo*j, -ancho, 0);
      popMatrix();

      rotate(radians(mouseY));
    }
  }

  //Captura pantalla canvas
  if (key=='s') {
    saveFrame("Tarea 1_Miranda_Valeria-##.pdf");
  }
}
