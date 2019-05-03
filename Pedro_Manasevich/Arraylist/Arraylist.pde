
Clase[] o; //Array eje X


void setup(){//setup

size(600,600);//tamaño canvas
background(255);
o[] = new Clase(6);
for (float i=0; i < o.length; i++) { //For loop
o[i]=new Clase(i){
o.objeto();
}
}
}

void draw() {


}
