/*
 Josefa Méndez Gómez
 Examen programación Creativa
 05 / 07 / 2018

 Teclado:

 1 Visualización Anual   ||   2 Visualización Semestral   ||   3 Visualización mensual

 t = Temperaturas || r = Rocíos máx y mín || v = Velocidad del viento || f  = Fechas anuales
 iniciando por enero a las 12 en sentido a las manecillas del reloj.

 Se presenta una visualización interactiva de la ciudad de Tromson en Noruega durante el año
 2015. Al iniciar el programa se presenta una visualización anual de las temperaturas mínimas
 y máximas que se puede activar y desactivar con la tecla "t".  Los datos exteriores del anillo
 pertenecen a las temperaturas máximas de cada día mientras que los datos interiores son las
 temperaturas mínimas. El anillo azul corresponde a los 0 grados.

 Sí uno desactiva las temperaturas y presiona la letra r puede ver los valores máximos y mínimos
 de rocíos. Al igual que en la visualización de las temperaturas los puntos exteriores 
 corresponden a los rocíos máximos, mientras que las internas a los rocíos mínimos.

 Al ingresar a la visualización semestral se presentan 2 segmentos, uno superior que corresponde
 al primer semestre del año 2015 y el segundo segmento o inferior que contiene los datos del
 segundo semestre del mismo año.

 Para la temperatura se muestra una barra clara que muestra las temperaturas máximas y las
 barras oscuras las temperaturas mínimas.

 Para los rocíos se muestra una ellipses oscura que simboliza los puntos máximos de rocío
 y las ellipses claras pertenecen a los puntos mínimos de rocío.

 Se demuestra las variaciones de las velocidades del viento con los anchos de los rectángulos,
 mientras más anchos más velocidad del viento había y viceversa.

 En la visualización Mensual solo hay interacción con las flechas derecha e izquierda para
 poder pasar de mes en mes.

 Se muestra las temperaturas dibujando líneas según si son máximas o mínimas.

 Estas ellipses muestran las variaciones de humedad según el mes.

 Las velocidades del viento se representan con pelotitas que se mueven en distintas
 velocidades según su valor de velocidad del viento.

 Finalmente se muestran ellipses con una línea que apunta a las direcciones del viento
 correspondientes.
 */

// Declaraciones de variables
Table tabla;
Clase [] objetos;

int ver; // Variable para cambiar las pantallas

// variables para pasar de mes en mes
int prinMes = 0;
int finMes = 30;
int actMes = 1;

// boolean para pasar de mes en mes
boolean mensual;

// Creación de variables booleanas de información anual
boolean fa; // Fechas anuales
boolean ta = true; // Temperatura anual
boolean roca; // Rocio anual
boolean cero; // boolean para activar el anillo cero

// Creación de variables booleaneas de información semestral
boolean roSem; // rocío Semestral
boolean velVieSem; // velocidad del viento semestral
boolean tempSem = true; // temperatura semestral que partira viendose

boolean valor; // boolean para cambiar las variables semestralas


color [] col; //Creo mi Array de colores llamado col



void setup() {
  size(1280, 700); // Tamaño del canvas
  ver = 0;

  BDD(); // Agrego la funcion de cargar los datos al setup

  // Creo mi paleta de colores
  col = new color [3];
  col [0] = color (147, 39, 143); // Morado
  col [1] = color (12, 66, 110); // Celeste medio
  col [2] = color (22, 152, 150); // Celeste claro
}

void draw() {

  background(0, 0, 25);

  // Creo mi for para recorrer los datos de mi base de datos
  for (int index = 0; index < objetos.length; index++) {

    // datos anuales
    if (ver == 0) {
      objetos[index].anoInfo();
    }
    // datos semestrales
    if (ver == 1) {
      objetos[index].semestresInfo();
    }
    // datos mensuales
    if (ver == 2) {
      mensual = true;
    } else {
      mensual = false;
    }
  }

  // condición para cambiar de mes en mes
  if (mensual) {
    int k = prinMes;
    for (int i = (width/finMes-prinMes); i < width-10; i+=width/(finMes-prinMes)) {

      objetos[k].mensualInfo(i);

      k++;
      if (k > finMes) k = prinMes;
    }
  }

  // condiciones para definir el tamaño de los meses
  if (actMes == 1) {
    prinMes = 1;
    finMes = 31;
  }

  if (actMes == 2) {
    prinMes = 32;
    finMes = 59;
  }

  if (actMes == 3) {
    prinMes = 62;
    finMes = 93;
  }

  if (actMes == 4) {
    prinMes = 94;
    finMes = 124;
  }

  if (actMes == 5) {
    prinMes = 125;
    finMes = 156;
  }

  if (actMes == 6) {
    prinMes = 157;
    finMes = 187;
  }

  if (actMes == 7) {
    prinMes = 188;
    finMes = 219;
  }

  if (actMes == 8) {
    prinMes = 220;
    finMes = 251;
  }

  if (actMes == 9) {
    prinMes = 252;
    finMes = 282;
  }

  if (actMes == 10) {
    prinMes = 283;
    finMes = 314;
  }

  if (actMes == 11) {
    prinMes = 315;
    finMes = 345;
  }

  if (actMes == 12) {
    prinMes = 346;
    finMes = 364;
  }

  // Texto

  rectMode(CENTER);
  textSize(11);
  fill (200);
  text("1 Datos Anuales  ||  2 Datos Semestrales  ||  3 Datos Mensuales", 10, 20);

  // Anual
  if (ver == 0) {
    fill(200);
    text(" r = Rocíos máximos y mínimos || t = Temperaturas máximas y mínimas || f = fechas iniciando por enero a las 12", 650, 20);

    if (ta) {

      translate(20, 0);
      fill(3, 1, 40);
      noStroke();
      rect (980, height/2, 420, 550);
      fill(col[2]);

      textSize(40);
      text ("Tromso, Noruega", 780, 120);

      translate(0, 50);
      textSize(20);
      text ("Se muestra una visualización de las", 780, 140);
      text (" variaciones de temperatura en Tromso.", 775, 170);
      text (" Los datos exteriores del anillo pertenecen", 775, 200);
      text (" a las temperaturas máximas de cada día ", 775, 230);
      text (" mientras que los datos interiores son las ", 775, 260);
      text (" temperaturas mínimas. ", 775, 290);
      text (" El anillo azul corresponde a los 0 grados. ", 775, 320);

      text (" Temperatura máxima ", 820, 405);
      text (" Rango de temperaturas ", 820, 455);
      text (" Temperatura mínima ", 820, 505);
      text (" Grados cero ", 820, 555);

      // Leyenda
      fill(col[0]);
      ellipse (800, 400, 20, 20);
      stroke(col[1]);
      strokeWeight(5);
      line(800, 440, 800, 460);
      noStroke();
      fill(col[2]);
      ellipse (800, 500, 20, 20);
      noFill();
      stroke(5, 10, 75);
      ellipse(800, 550, 20, 20);
    }

    if (roca && !ta) {

      translate(20, 0);
      fill(3, 1, 40);
      noStroke();
      rect (980, height/2, 420, 550);
      fill(col[2]);

      textSize(40);
      text ("Tromso, Noruega", 780, 120);

      translate(0, 50);
      textSize(20);
      text ("Se muestra una visualización de las", 780, 140);
      text (" variaciones de rocío en Tromso.", 775, 170);
      text (" Los datos exteriores pertenecen a ", 775, 200);
      text (" los rocíos máximos de cada día ", 775, 230);
      text (" mientras que los datos interiores son ", 775, 260);
      text (" los rocíos mínimos ", 775, 290);
      text (" El anillo azul corresponde al valor 0. ", 775, 320);

      text (" Rocío máximo ", 820, 405);
      text (" Rocío mínimo ", 820, 455);
      text (" Grados cero ", 820, 505);

      // Leyenda
      fill(col[1]);
      ellipse (800, 400, 20, 20);
      fill(col[2]);
      ellipse (800, 450, 20, 20);
      noFill();
      strokeWeight(5);
      stroke(5, 10, 75);
      ellipse(800, 500, 20, 20);
    }
  }

  // Semestres
  if (ver == 1) {
    fill(200);
    text(" r = Rocíos máximos y mínimos || t = Temperaturas máximas y mínimas  || v = Velocidad del viento", 730, 20);

    if (tempSem) {
      textSize(15);
      text("Se muestra las temperaturas máximas y mínimas del primer semestre (segmento superior), y el segundo semestre (segmento inferior).", 200, 340);
      text("Las barras superiores corresponden a las temperaturas máximas y las inferiores a las mínimas.", 200, 360);
    }

    if (roSem) {
      textSize(15);
      text("Se muestra los mayores y mínimos puntos de rocío del primer semestre (segmento superior), y el segundo semestre (segmento inferior).", 200, 340);
      text("Las ellipses oscuras representan los puntos máximos, mientras que la ellipses claras los puntos mínimos.", 200, 360);
    }

    if (velVieSem) {
      textSize(15);
      text("Se muestra las diferentes velocidades del viento durante el primer semestre (segmento superior), y el segundo semestre (segmento inferior).", 200, 340);
      text("El ancho de cada rectángulo representa la variable de velocidad que va entre 3 y 48.", 200, 360);
    }
  }
}

void BDD() {

  tabla = loadTable("BDD Examen Def.csv", "header"); // Cargo la tabla a processing
  objetos = new Clase [tabla.getRowCount()]; // Cargo las filas de la tabla

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    // Declarotodas las variables de mi tabla de les entrego un nombte
    int index = i;

    int mes = row.getInt(" M");
    int dia = row.getInt("D");
    int maxTemp = row.getInt("maxTemp");
    int minTemp = row.getInt("minTemp");
    int maxRo = row.getInt("maxRocio");
    int minRo = row.getInt("minRocio");
    int hum = row.getInt("Humedad");
    int velVie = row.getInt("velViento");
    int dirVie = row.getInt("dirViento");

    // Constructor que incula con labase de datos
    objetos[index] = new Clase(index, maxTemp, minTemp, maxRo, minRo, velVie, dirVie, hum);
  }
}

void keyPressed() {

  // T para temperatura
  if (key == 't') {
    ta = !ta;
    tempSem = !tempSem;
  }

  // Tecla para ver los rocios
  if (key == 'r') {
    roca = !roca;
    roSem = !roSem;
  }

  // Tecla de fechas
  if (key == 'f') {
    fa = !fa;
  }

  // tecla v para velocidad del viento
  if (key == 'v') {
    velVieSem = !velVieSem;
  }

  // anual
  if (key == '1') {
    ver = 0;
  }

  // Semestral
  if (key == '2') {
    ver = 1;
  }

  // Mensual
  if (key == '3') {
    ver = 2;
  }

  // condiciones para pasar de mes en mes
  if (keyCode == LEFT) {
    if (actMes <= 1) {
      actMes = 12;
    } else {
      actMes--;
    }
  }

  if (keyCode == RIGHT) {
    if (actMes >= 12) {
      actMes = 1;
    } else {
      actMes++;
    }
  }
}
