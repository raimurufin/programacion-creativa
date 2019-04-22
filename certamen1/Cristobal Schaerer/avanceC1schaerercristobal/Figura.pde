class Figura{//Nombre de la Clase
float x,y,x1,y1;//variables de posición
float r,r2;//variables de rotación
int red,green,blue;//Variables colores
float posX,posY;//Variables de posición
int alto, ancho,largo;



  Figura(float x, float y,float r,int red,int green,int blue,float posY,float x1,float y1, int ancho, int alto, int largo, float r2){//constructor
    this.x = x;
    this.y = y;
    this.r = r;
    this.red=red;
    this.green = green;
    this.blue = blue;
    this.posY = posY;
    this.x1 = x1;
    this.y1 = y1;
    this.alto = alto;
    this.ancho = ancho;
    this.largo = largo;
    this.r2 = r2;
  }


  void circulo1(int radio, float velocidad){
    /*Genera varios arcos que rotan alrededor*/
    for(int i = 0 ; i< radio; i++){// 50 arcos
      strokeWeight(5);//ancho del borde
      stroke(20);//color del contorno
      pushMatrix();
      noFill();//sin relleno
      r = r + 0.001;
      rotate(radians(5*(i*velocidad))*r);//rota al rededor del eje central y varia segun valor de r y de i
      arc(x, y, 45*i, 45*i, HALF_PI, PI);// arcos que varian segun i

      popMatrix();
    }
  }

  void circulo2(int t1, int t2){
    /*circulo fondo blanco que marca una zona en el centro*/

    fill(255);// relleno blanco
    ellipse(x,y,t1,t2);
  }


void circulos(int brazos, int radio){
  /*varios circulos en el centro del sketch los cuales estan rotando casi como un espiral*/
  for(int l =0; l<brazos;l++){//aumenta la cantidad de"lineas"en 8 cantidades
    for(int o = 0; o < radio; o++){//se forman "lineas" de circulos,15 circulos
      strokeWeight(1);//grosor del contorno
      stroke(10);// color del contorno
      pushMatrix();
        r+=0.8;// rotacion ira aumentando en 0.8
        fill(red,green,blue);// colores de relleno
        rotate(radians(PI)*r*100);//la rotacion variará con el valor de r
        ellipse(x+o*3,y+o*2,5,5);
      popMatrix();
    }
  }
}
void circulos3(int radio, int posX){
  /*Circulos repetidos de color azul rodeando una zona alrededor del centro*/
    pushMatrix();

      for (int p = 0; p < 60; p++) {// cantidad de lineas de circulos repetidos
        for (int u=0; u < radio; u++) {// numero de circulos por linea
          noStroke();//sin contorno
          fill(red,green,blue);// color de los circulos
          ellipse(posX + u * 20, 0, 10, 10);//una elipse alineada con otra.
        }
        rotate(radians(360/60));
      }
      popMatrix();
  }

  void circulos4(int radio){
    /*: es un circulo azul con media opacidad que marca una zona en el centro*/
    noStroke();
    fill(0,120,0,50);
    ellipse(x,y,radio,radio);
  }
  void circulos5(int radio,int radio2,int posX){
    /*Circulos morados que rodean el area mas grande en el centro*/
    pushMatrix();
    for(int m = 0; m<20;m++){
    for(int n = 1; n<radio; n++){
noStroke();
        fill(red*2,0,blue/3);
        ellipse(x1+n*50,y1,10,10);

    }
      rotate(radians(360/20));
    }
      popMatrix();
      //////////////////////////////////////////
    pushMatrix();
    for(int s = 0; s<60;s++){
    for(int d = 1; d<radio2; d++){

        fill(red,0,blue/2);//morado
        ellipse(posX+d,y1,20,20);

    }
      rotate(radians(360/60));
    }
      popMatrix();
  }

  void line1(){
    /*lineas rojas que varian su grosor y largo posicionadas alrededor del centro */
    for(int k= 0; k<50; k++){
      pushMatrix();
        r2++;
        stroke(0);// color del contorno
        rotate(r2);
        strokeWeight(random(3,8));// el grosor varia aleatoriamente
        stroke(255,0,0);// color rojo
        line(0,50,0,random(100,180));// lineas con largo aleatorio
      popMatrix();
    }
  }
  void patron(){
    for(int b = 1; b<12;b++){
      for(int v = 0; v<50 ; v++){
        fill(220,55,0,50);
        ellipse(x1+v*45,y1+b*92,35,35);
      }
    }
  }



  void rectangulos(){
    for(int g = 0; g<6; g++){
      for(int h= 0; h<50;h++){
        noStroke();
        fill(0,0,blue,50);
        rect(x1+h*35,y1+g*100,20,40);
      }
    }
  }
}
