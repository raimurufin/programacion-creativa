//Declarar

Objeto ob1;

void setup(){
  size(595,842);
  //Inicializar
  ob1 = new Objeto (1);
  
}

void draw(){
  ob1.run(); // llamamos función que incluye a las otras
   
   //exportar imagenes A4
    if (keyPressed) {
     if (key == 'p') {
      saveFrame("export.pdf");
      }
    }  
}
