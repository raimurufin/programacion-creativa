class Clase {

  // Variables para la clase
  int index;
  float maxTemp, minTemp, minTempSem, maxTempSem, velVie, hum, maxRo, minRo, maxRoSem, minRoSem, dirVie;

  float y;
  float angle, r;

  // Genero mi constructor
  Clase(int index, int maxTemp, int minTemp, int maxRo, int minRo, int velVie, int dirVie, int hum) {

    this.index = index;
    this.maxTemp = map(maxTemp, -15, 23, 0, 350);
    this.minTemp = map(minTemp, -15, 23, 0, 350);
    this.maxTempSem = map(maxTemp, -15, 23, 0, 28);
    this.minTempSem = map(minTemp, -15, 23, 0, 28);
    this.hum = map(hum, 42, 92, 5, 40);
    this.maxRo = map(maxRo, -20, 14, 0, 300);
    this.minRo = map(minRo, -20, 14, 0, 300);
    this.maxRoSem = map(maxRo, -20, 14, 0, 40);
    this.minRoSem = map(minRo, -20, 14, 0, 40);
    this.velVie = map(velVie, 3, 48, 1, 45);
    this.dirVie = map(dirVie, 0, 359, 0, 360);
  }

  // void con toda la información que se mostrara anualmente
  void anoInfo() {
    anoTemp(ta);
    anilloAno(fa);
    varRocio(roca);
  }

  // void con la información a mostrar semestralmente
  void semestresInfo() {
    primSem(valor);
    segSem(valor);
  }

  //////////////////////////////////////////////////////
  //                 Datos mensuales                  //
  //////////////////////////////////////////////////////


  // void para dibujar todos los componentes según el mes
  void mesesPrimSem(float v) {

    // v = 1 -> Rocios máximos y minimos
    // v = 2 -> Velocidades del viento
    // v = 3 -> Temperaturas Máximas y mínimas

    noStroke();
    rectMode(CENTER);

    // Enero
    if (index > 0 && index < 32) {

      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 + 10, 200, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 + 10, 200, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 + 10, 200, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 - 20, 200, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 - 20, 200, 35, minTempSem);
      }
    }

    // Febrero
    if (index > 31 && index < 60) {

      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -1230, 250, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -1230, 250, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -1230, 250, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -1260, 250, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -1260, 250, 35, minTempSem);
      }
    }

    // Marzo
    if (index > 59 && index < 91) {

      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -2350, 300, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -2350, 300, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -2350, 300, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -2380, 300, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -2380, 300, 35, minTempSem);
      }
    }

    // Abril

    if (index > 90 && index < 121) {
      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -3590, 350, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -3590, 350, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -3590, 350, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -3620, 350, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -3620, 350, 35, minTempSem);
      }
    }

    // Mayo

    if (index > 120 && index < 152) {
      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -4790, 400, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -4790, 400, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -4790, 400, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -4820, 400, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -4820, 400, 35, minTempSem);
      }
    }

    // Junio
    if (index > 151 && index < 182) {
      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -6030, 450, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -6030, 450, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -6030, 450, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -6060, 450, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -6060, 450, 35, minTempSem);
      }
    }
  }

  // void para dibujar todos los componentes según el mes del segundo semestre
  void mesesSecSem(float v) {

    noStroke();
    rectMode(CENTER);

    // Julio
    if (index > 181 && index < 213) {
      if (v == 1) {
        fill(col[1]);
        ellipse(index * 40 -7230, 200, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -7230, 200, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -7230, 200, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -7260, 200, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -7260, 200, 35, minTempSem);
      }
    }

    // Agosto
    if (index > 212 && index < 244) {
      if ( v == 1) {
        fill(col[1]);
        ellipse(index * 40 -8470, 250, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -8470, 250, minRoSem, minRoSem);
      }
      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -8470, 250, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -8500, 250, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -8500, 250, 35, minTempSem);
      }
    }

    // Septiembre
    if (index > 243 && index < 274) {
      if ( v == 1) {
        fill(col[1]);
        ellipse(index * 40 -9710, 300, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -9710, 300, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -9710, 300, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -9740, 300, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -9740, 300, 35, minTempSem);
      }
    }

    // Octubre
    if (index > 273 && index < 305) {
      if ( v == 1 ) {
        fill(col[1]);
        ellipse(index * 40 -10910, 350, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -10910, 350, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -10910, 350, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -10940, 350, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -10940, 350, 35, minTempSem);
      }
    }

    // Noviembre
    if (index > 304 && index < 335) {
      if ( v == 1) {
        fill(col[1]);
        ellipse(index * 40 -12150, 400, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -12150, 400, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -12150, 400, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -12180, 400, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -12180, 400, 35, minTempSem);
      }
    }

    // Diciembre
    if (index > 333) {
      if ( v == 1) {
        fill(col[1]);
        ellipse(index * 40 -13310, 450, maxRoSem, maxRoSem);
        fill(col[2]);
        ellipse(index * 40 -13310, 450, minRoSem, minRoSem);
      }

      if (v == 2) {
        fill(col[2]);
        rect(index * 40 -13310, 450, velVie, 35);
      }

      if (v == 3) {
        rectMode(CORNER);
        fill(col[2]);
        rect(index * 40 -13340, 450, 35, -maxTempSem);
        fill(col[1]);
        rect(index * 40 -13340, 450, 35, minTempSem);
      }
    }
  }



  //////////////////////////////////////////////////////
  //                     Mensual                      //
  //////////////////////////////////////////////////////

  void mensualInfo( float i) {

    float tempMed = (maxTemp + minTemp)/2;
    float angulo = radians(dirVie);
    r = 20;

    // Humedad
    noStroke();
    fill(col[0]);
    ellipse(i, height/2, hum, hum);

    // Temperatura

    stroke(col[2]);
    line(i, maxTemp, i, 150);
    stroke(col[1]);
    line(i, minTemp, i, 150);
    noStroke();
    fill(col[0]);
    ellipse(i, maxTemp, 10, 10);
    ellipse(i, minTemp, 10, 10);

    // Velocidad del viento
    pushMatrix();
    y = r * sin(angle); //sin siempre para y
    //rotate(frameCount *velVie*.01);
    ellipse(i, y + 650, 15, 15);
    angle = frameCount * velVie * 0.01;
    popMatrix();

    // Dirección del viento
    noFill();
    strokeWeight(2);
    stroke(col[2]);
    ellipse(i, 500, 30, 30);
    pushMatrix();
    translate(i, 500);
    rotate(radians(225));
    rotate(angulo);
    line(0, 0, 10, 10);
    popMatrix();
  }


  //////////////////////////////////////////////////////
  //                   Semestral                      //
  //////////////////////////////////////////////////////

  void primSem(boolean valor) {

    // conecto todos los dibujos del primer semestre en el void según las boolean
    pushMatrix();
    translate(0, -150);
    if (valor = roSem) {
      mesesPrimSem(1);
    }
    if (valor = velVieSem) {
      mesesPrimSem(2);
    }

    if (valor = tempSem) {
      mesesPrimSem(3);
    }

    popMatrix();
  }


  void segSem(boolean valor) {
    // conecto todos los dibujos del segundo semestre en el void según las boolean
    pushMatrix();
    translate(0, 200);
    if (valor = roSem) {
      mesesSecSem(1);
    }
    if (valor = velVieSem) {
      mesesPrimSem(2);
    }

    if (valor = tempSem) {
      mesesSecSem(3);
    }
    popMatrix();
  }

  //////////////////////////////////////////////////////
  //                     Anual                        //
  //////////////////////////////////////////////////////


  void varRocio(boolean roca) {

    // map para dibujar el punto 0 de las variables
    float gradoC = map(0, -15, 23, 0, 350);

    if (roca) {

      pushMatrix();

      translate(width/3, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias
      noStroke();
      fill(col[1]);
      ellipse(minRo, 0, 2, 2);
      fill(col[2]);
      ellipse(maxRo, 0, 2, 2);

      // Anillo que muestra grado 0
      stroke(5, 10, 75);
      strokeWeight(0.5);
      noFill();
      ellipse(gradoC, 0, 3, 3);

      popMatrix();
    }
  }

  void anoTemp(boolean ta) {

    float gradoC = map(0, -15, 23, 0, 350);

    if (ta) {
      pushMatrix();

      translate(width/3, height/2);
      rotate(radians(270));
      rotate(radians(index * 360/365)); // 360 grados / 365 dias
      strokeWeight(1);

      // Anillo que muestra grado 0
      stroke(5, 10, 75);
      strokeWeight(0.5);
      noFill();
      ellipse(gradoC, 0, 3, 3);

      stroke(col[1]);
      line(maxTemp, 0, minTemp, 0); // linea que recorre el min y el max
      noStroke();
      fill(col[0]);
      ellipse(maxTemp, 0, 3, 3); // Elipses que muestran el máximo
      fill(col[2]);
      ellipse(minTemp, 0, 3, 3); // Ellipse que muestra minimas

      popMatrix();
    }
  }

  void anilloAno(boolean f) {

    if (f) {
      pushMatrix();
      translate(width/3, height/2);
      rotate(radians(270));
      rotate(radians(index * 360 / 365)); // 360 grados / 365 dias
      strokeWeight(0.5);

      stroke(0, 0, 100);
      line(330, 0, 340, 0);

      // if para pintar los primeros días de cada mes
      if (index == 1 || index == 32 || index == 60 || index == 91|| index == 121 ||
        index == 152 || index == 182 || index == 213 || index == 244 || index == 274 ||
        index == 305 || index == 335 ) {

        stroke(0, 0, 200);
        line(320, 0, 340, 0);
      }
      popMatrix();
    }
  }
}
