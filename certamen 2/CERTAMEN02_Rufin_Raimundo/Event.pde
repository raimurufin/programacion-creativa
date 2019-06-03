/*
Clase para visualizar las precipitaciones y el evento que ocurre
 El ancho del rectangulo dibujado esta determinado por las precipitaciones de ese día
 El color de relleno esta determinado por el evento del día
 Gris = nada
 Azul = Lluvia
 Amarillo = Tormenta
 Verde = Lluvia y tormenta
 
Ademas si se posiciona el cursor sobre un dia se mostrará la cobertura de nubes de dicho día

Esta clase tambien recoge los datos de velocidad de viento y direccion de este, cuando se selecciona un dia
presionando el cursor sobre este se puede observar la velocidad maxima y media del viento junto con su dirección.
*/

class Event {

  //variables para datos obtenidos de la tabla
  float mes, dia, precip, cloud, eve, vientoMax, vientoMed, dir;
  float x, x2;


  Event(float mes, float dia, float vientoMax, float vientoMed, float precip, float cloud, float eve, float dir) {

    this.mes = mes;
    this.dia = dia;
    this.eve = eve;
    this.cloud = cloud;
    this.precip = precip;
    this.vientoMax = vientoMax;
    this.vientoMed = vientoMed;
    this.dir = dir;
  }


  /*
   Crea una figura cuyos parametros estan definidos por el evento que ocurre en el dia y el nivel de precipitaciones.
   Las figuras se distribuyen segun el dia al que corresponden en una grilla representando el año completo
  */
  void evento() {
    rectMode(CENTER);
    noStroke();



    if (eve == 1) {
      fill(0, 150, 255);
      rect(mes*(width/13), dia*(height/35), (precip+1)*2, 20);
    } else if (eve == 2) {
      fill(255, 200, 0);
      rect(mes*(width/13), dia*(height/35), (precip+1)*2, 20);
    } else if (eve == 3) {
      fill(0, 255, 150);
      rect(mes*(width/13), dia*(height/35), (precip+1)*2, 20);
    } else if (eve == 0 && precip == 0) {
      fill (255, 50);
      rect(mes*(width/13), dia*(height/35), (precip+1), 20);
    } else {
      fill(255);
      rect(mes*(width/13), dia*(height/35), (precip+1)*2, 20);
    }
  }


  /*
   Crea una figura que muestra el valor de la cobertura de nubes de determinado día y se forma solo cuando se pasa con el
   cursor sobre dicho día
  */
  void select() {
    if (mouseX < mes*(width/13)+39 && mouseX > mes*(width/13)-39 && mouseY < dia*(height/35)+10 && mouseY > dia*(height/35)-10) {
      if (cloud == 1) {
        fill(255, 30);
      } else if (cloud == 2) {
        fill(255, 130);
      } else if (cloud == 3) {
        fill(255, 230);
      }
      rectMode(CENTER);
      stroke(200);
      strokeWeight(1);
      rect(mes*(width/13), dia*(height/35), 75, 20);
    }
  }

  /*
   Crea una figura que rota en su eje a la velocidad media del viento segun cada día
  */
  void wind(float w) {
    vientoMed += w;
    pushMatrix();
    translate(mes*(width/13), dia*(height/35));
    rotate(radians(vientoMed*0.3));
    fill(255);
    ellipse(0, 0, 5, 20);
    popMatrix();
  }
  
  /*
  Crea una circunferencia que permite observar la dirección del viento segun los grados de rotacion con el Norte como 0°
  y ademas crea 2 figuras que se desplazan segun la velocidad del viento.
  La primera es la Velocidad Maxima
  La segunda es la Velocidad Media
  */
  
  void diario(float vientomedio) {
    if (mouseX < mes*(width/13)+40 && mouseX > mes*(width/13)-40 && mouseY < dia*(height/35)+10 && mouseY > dia*(height/35)-10) {

      strokeWeight(5);
      line(0, 200, width, 200);
      line(0, 600, width, 600);
      noStroke();
      fill(255);
      rectMode(CENTER);
      rect(x, 300, 20, 200);
      rect(x2, 500, 20, 200);
      
      
      x += vientoMax*0.3;
      x2 += vientomedio*0.3;
     
      
      if(x >= width){
        x = 0;
      }
      if(x2 >= width){
        x2 = 0;
      }




      pushMatrix();

      translate(width*6/7, height*1/6);
      rotate(radians(dir));
      noFill();
      stroke(255);
      strokeWeight(10);
      point(0, 0);
      strokeWeight(5);
      line(0, 0, 0, -25);
      ellipse(0, 0, 100, 100);

      popMatrix();
    }
  }
}