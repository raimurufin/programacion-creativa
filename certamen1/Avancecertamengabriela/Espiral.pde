//Inicialización clase

class Espiral {
  float i, vel;                                                 // Se declaran las variables vel
  color ne, bl, tu;                                             // Se declaran las variables de color



  //Constructor
  Espiral() {
    tu = color(63, 201, 188);                                  // Turquesa
    ne = color(0);                                             // Negro
    bl = color(255);                                           // Blanco
    i = 0;                                                     // Valor de i es 0
    vel = 10;                                                  // Valor de vel es 10
  }      
  
  //Inicio ámbito espiral
  void espiral() {
    for (int i = 10; i < 600; i++);
    pushMatrix();
    stroke(tu);
    strokeWeight(4);
    translate(width/2, height/2);
    rotate(360); 
    line(i, 0, i + 10, 0);
    popMatrix();
  }

  //void movimiento() {
}
