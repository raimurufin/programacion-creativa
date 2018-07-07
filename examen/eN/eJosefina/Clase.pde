class Clase {
	color[] colores;
	int i, mes, dia;
	String nameText;
	float tmaxima, tminima, maxHum, minHum, maxWind, precip, clCover, events,
	prtMax, prtMin;

	PFont font;

	Clase(int mes, int dia, float tmaxima, float tminima, float maxHum, float minHum,
		float maxWind, float precip, float clCover, float events, float prtMax,
		float prtMin, int i) {
		//Paleta de colores
		colores = new color[14]; //lista de colores
		colores[0] = color(242, 169, 146); //tempMax
		colores[1] = color(151, 198, 203); //tempMin
		colores[2] = color(48, 91, 128); //maxHum
		colores[3] = color(134, 179, 177); //minHum
		colores[4] = color(122, 46, 84, 70); //clCover
		colores[5] = color(118, 170, 219, 90); //precipitation
		colores[6] = color(209, 126, 160); //rain
		colores[7] = color(79, 32, 26); //fog
		colores[8] = color(146, 119, 45); //snow
		colores[9] = color(202, 95, 68); //thundestorm
		colores[10] = color(0); //texto
		colores[11] = color(255); //bco
		colores[12] = color(204, 204, 204); //Leyenda
		colores[13] = color(112, 127, 156); //texto2

		this.i = i;
		this.dia = dia;
		this.mes = mes;
		this.tmaxima = map(tmaxima, -9, 37, 0, 255);
		this.tminima = map(tminima, -9, 37, 0, 255);
		this.maxHum = map(maxHum, 9, 100, 0, 255);
		this.minHum = map(minHum, 9, 100, 0, 255);
		this.maxWind = map(maxWind, 6, 58, 10, 1270);
		this.precip = map(precip, 0, 35, 30, 1200);
		this.clCover = map(clCover, 0, 8, 2, 10);
		this.events = events;
		this.prtMax = map(prtMax, 7, 50, 35, 250);
		this.prtMin = map(prtMin, -49, 24, -150, 100);

		//Tipo y tamaño letra
		font = createFont("Calibri-Bold", 50);
		//Nombrar los meses en el sketch
		if (mes == 1) nameText = "Enero";
		if (mes == 2) nameText = "Febrero";
		if (mes == 3) nameText = "Marzo";
		if (mes == 4) nameText = "Abril";
		if (mes == 5) nameText = "Mayo";
		if (mes == 6) nameText = "Junio";
		if (mes == 7) nameText = "Julio";
		if (mes == 8) nameText = "Agosto";
		if (mes == 9) nameText = "Septiembre";
		if (mes == 10) nameText = "Octubre";
		if (mes == 11) nameText = "Noviembre";
		if (mes == 12) nameText = "Diciembre";
	}
	//Visualización del año
	void anual(int j) {
		textSize(35);
		fill(colores[10]);
		text("Seefeld-Austria", 20, height / 12);
		text("2015", 20, (height / 12) + 40);
		pushMatrix();
		translate(width / 2, height / 2); //coordenada 0,0 en el centro del canvas
		rotate(radians(j)); //los 12 meses del año se dividan en 360 grados
		//MaxTemperature
		fill(colores[0]);
		noStroke();
		triangle(160, -30, prtMax + 200, 0, 160, 30);
		//MinTemperature
		fill(colores[1]);
		noStroke();
		triangle(160, -30, prtMin + 180, 0, 160, 30);
		popMatrix();
		//Leyenda
		fill(colores[12]);
		rect(0, 680, 1280, 55);
		textSize(10);
		fill(colores[10]);
		text("Enero", 1100, height / 2);
		text("1 - Año | 2 - Mes | 3 - Día", 20, 693);
		text("= Temperatura Máxima", (width / 2) + 180, 693);
		text("= Temperatura Mínima", (width / 2) + 330, 693);
		text("= 1 mes", (width / 2) + 520, 693);
		fill(colores[0]);
		triangle((width / 2) + 170, 695, (width / 2) + 180, 695, width / 2 + 175, 683);
		fill(colores[1]);
		triangle((width / 2) + 320, 695, (width / 2) + 330, 695, width / 2 + 325, 683);
		fill(colores[0]);
		triangle((width / 2) + 500, 695, (width / 2) + 510, 695, width / 2 + 505, 683);
		fill(colores[1]);
		triangle((width / 2) + 500, 695, (width / 2) + 510, 695, width / 2 + 505, 688);
	}
	//Visualización del mes
	void mes(int m) {
		//Nombre del mes en cada cambio
		textSize(30);
		fill(colores[10]);
		text(nameText, (width / 2) - 45, 500);
		//CloudCover
		fill(colores[4]);
		noStroke();
		ellipse(m, (height / 2) + 10, clCover * 8, clCover * 8); //m posición en eje x
		//MaxHumidity
		fill(colores[2]);
		noStroke();
		rect(m, (height / 2) - 30, -7, -maxHum);
		//MinHumidity
		fill(colores[3]);
		noStroke();
		rect(m, (height / 2) - 30, 7, -minHum);
		//Leyenda mes
		fill(colores[12]);
		rect(0, 680, 1280, 55);
		textSize(10);
		fill(colores[10]);
		text("1 - Año | 2 - Mes | 3 - Día", 20, 693);
		text("< > Cambio de mes", 200, 693);
		text("= Cloud Cover", (width / 2) + 230, 693);
		text("= Humedad Máxima", (width / 2) + 330, 693);
		text("= Humedad Mínima", (width / 2) + 460, 693);
		fill(colores[4]);
		ellipse((width / 2) + 220, 690, 15, 15);
		fill(colores[2]);
		rect((width / 2) + 325, 685, 4, 10);
		fill(colores[3]);
		rect((width / 2) + 455, 685, 4, 10);
	}
	//Visualización del día
	void dia() {
		textSize(30);
		fill(colores[10]);
		text(nameText, (width / 2) - 630, (height / 12) - 20);
		text(dia, (width / 2) - 460, (height / 12) - 20);
		//Precipitationmm
		fill(colores[5]);
		noStroke();
		rect(0, 700, width, -precip);
		//WindSpeed
		fill(colores[10]);
		triangle(0, height / 2 + 40, 0, height / 2 - 40, maxWind, height / 2);
		//Events
		if (events == 1) {
			fill(colores[6]);
			ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
		}
		if (events == 2) {
			fill(colores[7]);
			ellipse(160 * 4 - 80, height / 12, 100, 100); //fog
		}
		if (events == 3) {
			fill(colores[8]);
			ellipse(160 * 5 - 80, height / 12, 100, 100); //snow
		}
		if (events == 4) {
			fill(colores[9]);
			ellipse(160 * 6 - 80, height / 12, 100, 100); //thunderstorm
		}
		if (events == 5) {
			fill(colores[6]);
			ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
			fill(colores[7]);
			ellipse(160 * 4 - 80, height / 12, 100, 100); //fog
		}
		if (events == 6) {
			fill(colores[6]);
			ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
			fill(colores[8]);
			ellipse(160 * 5 - 80, height / 12, 100, 100); //snow
		}
		if (events == 7) {
			fill(colores[6]);
			ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
			fill(colores[9]);
			ellipse(160 * 6 - 80, height / 12, 100, 100); //thunderstorm
		}
		if (events == 8) {
			fill(colores[7]);
			ellipse(160 * 4 - 80, height / 12, 100, 100); //fog
			fill(colores[8]);
			ellipse(160 * 5 - 80, height / 12, 100, 100); //snow
		}
		if (events == 9) {
			fill(colores[7]);
			ellipse(160 * 4 - 80, height / 12, 100, 100); //fog
			fill(colores[6]);
			ellipse(160 * 3 - 80, height / 12, 100, 100); //rain
			fill(colores[8]);
			ellipse(160 * 5 - 80, height / 12, 100, 100); //snow
		}
		//Leyenda día
		fill(colores[12]);
		rect(1050, 610, 230, 90);
		textSize(10);
		fill(colores[10]);
		text("1 - Año | 2 - Mes | 3 - Día", 20, 693);
		text("'ARRIBA'  'ABAJO' = Cambio de día", 200, 693);
		text("= Lluvia", (width / 2) + 440, 629);
		text("= Niebla", (width / 2) + 440, 649);
		text("= Nieve", (width / 2) + 440, 669);
		text("= Tormenta", (width / 2) + 440, 689);
		text("Vel.viento", 1186, 650);
		text("Cant.precipitación", 1170, 685);
		fill(colores[6]);
		ellipse((width / 2) + 430, 625, 15, 15);
		fill(colores[7]);
		ellipse((width / 2) + 430, 645, 15, 15);
		fill(colores[8]);
		ellipse((width / 2) + 430, 665, 15, 15);
		fill(colores[9]);
		ellipse((width / 2) + 430, 685, 15, 15);
		fill(colores[5]);
		noStroke();
		rect(1193, 663, 40, 10);
		fill(colores[10]);
		triangle(1193, 630, 1193, 620, 1230, 625);
	}
}
