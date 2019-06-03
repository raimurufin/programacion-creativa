/* 
 CERTAMEN 02 - PROGRAMACION CREATIVA
 Raimundo Rufin
 
 Visualizacion de base de datos anual
 Datos utilizados: Velocidad de viento, precipitaciones, cobertura de nubes, eventos(lluvia/tormenta), direccion del viento
 
 En una primera visualizacion se puede observar el nivel de precipitaciones de cada dia del año determinado por el ancho
 de las figuras observadas. Su relleno determina si ese día hubo lluvia, tormenta, ambos o nada.
 Gris = nada
 Azul = Lluvia
 Amarillo = Tormenta
 Verde = Lluvia y tormenta
 
 Al presionar una tecla se puede observar la velocidad media del viento de cada día.
 Además si se pasa el cursor sobre alguno de los días, se mostrará la cobertura de nubes de dicho día,
 al presionar con el cursor sobre un de estos se podrá observar la velocidad maxima y media del viento en ese día
 y también la direccion de este.
 
 
 */

Table datos;

Event[] e;

void setup() {
  size(1024, 768);
  datos = loadTable("baseDatosAnual.csv", "header");

  //Se almacenan todos los datos de la tabla para luego ser usados en distintos metodos
  e = new Event[365];
  for (int i = 0; i < datos.getRowCount(); i++) {
    e[i] = new Event(datos.getFloat(i, 1), datos.getFloat(i, 2), datos.getFloat(i, 3), datos.getFloat(i, 4), datos.getFloat(i, 5), datos.getFloat(i, 6), datos.getFloat(i, 7), datos.getFloat(i, 8));
  }
}

void draw() {
  background(0);

  for (int i = 0; i < datos.getRowCount(); i++) {
    if (keyPressed) {
      e[i].wind(datos.getFloat(i, 4));
      e[i].select();
    } else if (mousePressed) {
      e[i].diario(datos.getFloat(i, 4));
    } else {
      e[i].evento();
      e[i].select();
    }
  }
}