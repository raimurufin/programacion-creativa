/*Universidad del Desarrollo - Facultad de Diseño - Examen - Josefina Hidalgo T
El examen consiste en tres niveles de visualización diferentes, la navegación
entre ellas se realiza mediante las teclas  ‘1’, ‘2’ , ‘3’ correspondiendo a una
visualización anual, mensual y diaria respectivamente.
Al acceder a la visualización anual mediante la tecla ‘1’ se muestra el año
completo dividido en los 12 meses formando un sol de doce puntas al centro del
canvas. Cada mes muestra su promedio de temperatura alcanzada, siendo la máxima,
representada por un triángulo color rosa anaranjado y la mínima por un triángulo
celeste.
Si se presiona la tecla ‘2’ pasamos a la segunda visualización. En esta se
muestra un mes del año dividido en su respectiva cantidad de días. Las elipses
representan el Cloudcover y varían en tamaño según el aumento o disminución de
esta variable y las barras sobre las elipses corresponden al nivel de humedad de
cada día del mes. La primera barra de color azul oscuro es la humedad máxima y
la segunda barra, color celeste es la humedad mínima, que aumentan o disminuyen
su altura dependiendo de la variación del dato. Para ir cambiado entre los meses
del año se presionan las teclas de flecha “izquierda” y “derecha”.
Por ultimo, a la tercera visualización se accede presionando la tecla ‘3’ donde
se mostrará en detalle la variación de tres tipos de dato diferentes por cada día
del año. El primer dato corresponde a la variable de la cantidad de precipitación
diaria representado por un rectángulo de color celeste del ancho del canvas,
simulando agua que va aumentando su altura a medida que aumenta la cantidad de
precipitación y viceversa. El segundo dato, un triángulo negro posicionado con
su base en el comienzo del “eje x” y mitad del “eje y”,  muestra la máxima
velocidad del viento alcanzada diariamente. Este dato provoca la variación del
tercer vértice del triangulo, es decir, su punta aumenta en el sentido del “eje x”
al aumentar la variable de velocidad y disminuye en “eje x” cuando esta disminuye.
La tercera variable a mostrar es el tipo de evento ocurrido cada día. Hay 4 tipos
de eventos diferentes y cada uno esta representado por una elipse de tamaños
iguales que varían en color según cada evento, siendo rosado si es lluvia, café
si es niebla, verde si es nieve y naranjo si es tormenta. Cada elipse tiene una
posición diferente en el “eje x” y la misma en el “eje y”. Cada elipse aparece
solo si se presentó el tipo de evento al que corresponde el día que se esta
visualizando. El cambio de día se ejecuta presionando las flechas de “arriba” y
“abajo”.
*/

Clase[] objetos;
Table tabla;
int index; //variable de todos los datos
int anual = 1;
int mes = 0;
int dia = 0;
int mSt = 0; //inicio del mes
int mEnd = 30; //término del mes
int mesAct = 1; //mes actual
int k;

void setup() {
	size(1280, 700);
	//Cargar la base de datos
	tabla = loadTable("Seefeld_Austria_E.csv", "header");
	int total = tabla.getRowCount();
	objetos = new Clase[total];

	for (int i = 0; i < tabla.getRowCount(); i++) {
		TableRow row = tabla.getRow(i);

		//Se cargan headers
		int mes = row.getInt("M");
		int dia = row.getInt("D");
		float tmaxima = row.getFloat("Max TemperatureC");
		float tminima = row.getFloat("Min TemperatureC");
		float maxHum = row.getFloat("Max Humidity");
		float minHum = row.getFloat(" Min Humidity");
		float maxWind = row.getFloat(" Max Wind SpeedKm/h");
		float precip = row.getFloat("Precipitationmm");
		float clCover = row.getFloat(" CloudCover");
		float events = row.getFloat(" Events");
		float prtMax = row.getFloat("PromedioTMax");
		float prtMin = row.getFloat("PromedioTMin");

		//Se relaciona el objeto con la lista
		objetos[i] = new Clase(mes, dia, tmaxima, tminima, maxHum,
			minHum, maxWind, precip, clCover, events, prtMax, prtMin, i);
	}
}

void draw() {
	background(255);
	//Llama al año
	if (anual == 1) {
		int y = 0;
		for (int i = 0; i < objetos.length; i += 30) {

			objetos[y].anual(y);
			y += 30;
			if (y > 359) y = 0;
		}
	}
	//Llama al mes
	if (mes == 1) {
		k = mSt; //inicio de cada mes
		for (int i = (width / (mEnd - mSt)) - 10; i < width - 10; i += width / (mEnd - mSt)) {
			objetos[k].mes(i);
			k++;
			if (k > mEnd) k = mSt;
		}
	}
	//Llama al dia
	if (dia == 1) {
		objetos[index].dia();
	}

	//Rango de días es cada mes
	if (mesAct == 1) {
		mSt = 0;
		mEnd = 30;
	}
	if (mesAct == 2) {
		mSt = 31;
		mEnd = 59;
	}
	if (mesAct == 3) {
		mSt = 60;
		mEnd = 89;
	}
	if (mesAct == 4) {
		mSt = 90;
		mEnd = 119;
	}
	if (mesAct == 5) {
		mSt = 120;
		mEnd = 150;
	}
	if (mesAct == 6) {
		mSt = 151;
		mEnd = 180;
	}
	if (mesAct == 7) {
		mSt = 181;
		mEnd = 211;
	}
	if (mesAct == 8) {
		mSt = 212;
		mEnd = 242;
	}
	if (mesAct == 9) {
		mSt = 243;
		mEnd = 272;
	}
	if (mesAct == 10) {
		mSt = 273;
		mEnd = 303;
	}
	if (mesAct == 11) {
		mSt = 304;
		mEnd = 333;
	}
	if (mesAct == 12) {
		mSt = 334;
		mEnd = 364;
	}
	//}
}

//Cambio de Sketch
void keyPressed() {
	if (key == '1') { //llama al void anual
		anual = 1;
		mes = 0;
		dia = 0;
	}

	if (key == '2') { //llama void mes
		anual = 0;
		mes = 1;
		dia = 0;
	}

	if (key == '3') { //llama void día
		anual = 0;
		mes = 0;
		dia = 1;
	}

	//Cambio de mes en mes
	if (key == CODED) {

		if (keyCode == LEFT) {
			if (mesAct > 1) mesAct -= 1;
		}

		if (keyCode == RIGHT) {
			if (mesAct < 12) mesAct += 1;
		}

		//Cambio día por día
		if (keyCode == UP) {
			if (index <= 0) {
				index = 364;
			} else {
				index--;
			}
		}

		if (keyCode == DOWN) {
			if (index >= 364) {
				index = 0;
			} else {
				index++;
			}
		}
	}
}
