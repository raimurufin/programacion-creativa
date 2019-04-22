/* Certamen 1 Programacion Creativa
   Profesor: Nicolás Troncoso - Ayudante: Macarena Ferrer
   Alumno: Paula Cepeda
   Referente: Laurent Malys - Harmonograph series
*/

/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/

Clase clase1;


void setup() {
  size(600, 600); //Malys siempre trabaja en canvas cuadrado
  clase1 = new Clase();
}

void draw() {

  //fondo de lineas
  background(0);
  for (int i = 0; i < height; i += 5) {
    strokeWeight(0.1);
    stroke(100);
    line(0, i, width, i);

    clase1.run();

  }
}


//Comando para sacar una captura de la obra
void keyPressed() {
  if (keyPressed) {
    if (key == 'p') {
      saveFrame("export.pdf");
    }

  }
}
