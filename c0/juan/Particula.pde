class Particula {
    color[] colores;
    color propioDelObjeto;
    int randomColor;

    //
    float x;
    float y;
    float velx;
    float vely;
    float tamano;

    //
    float tx;
    float ty;
    // centro de la ellipse
    float tpx;
    float tpy;
    //
    int op = 350; // máximo es 255

    Particula(int i) {
        this.randomColor = int(random(3)); // hara un random entre los 3 colores que hay
        colores = new color[3]; //el numero es la cantidad que sale en i<3
        colores[0] = color(0, 88, 94);
        colores[1] = color(0, 148, 148);
        colores[2] = color(69, 68, 69);
        propioDelObjeto = color(127);


        x = 400; // esta variable se sobre escribe en línea 42
        y = 0;
        //x= width/2;
        //y= height/2;

        velx = random(-6, 0); // se define la velocidad con la que nace cada burbuja
        vely = random(-3, 9); // se define la velocidad con la que nace cada burbuja

        x += velx;
        y += vely;
        tamano = random(10, 30);
        x = i * 25 + 100; //posicion de x
    }

	//No hay decripción general de lo que hará
    void show() {
        fill(colores[randomColor]);
        ellipse(x, y, tamano, tamano);
    }


	//No hay decripción general de lo que hará
    void mover() {
        x += velx;
        y += vely;
    }

	//No hay decripción general de lo que hará
    void denuevo() {
        if (x > width + 200 || x < 0 || y > height - 49) {

            x = 850;
            y = 30;
            // x = width/2;
            // y = height/2;
            tamano = random(10, 30);
            propioDelObjeto = colores[int(random(3))];
        }
    }

	//No hay decripción general de lo que hará
    void forma() {
        noStroke();
        fill(255, 87, 41, op);
        ellipse(x, y, tx, ty);
        op -= 7;
        if (op <= -10) {
            op = 351;
        }
    }

	//No hay decripción general de lo que hará
    void crecimiento() {
        tx += 2;
        ty += 2;

        if (tx > 100) {
            tx = 0;
            ty = 0;
        }
    }

	//No hay decripción general de lo que hará
	//Métodos que no se usan novan en la entrega
    void segform() {
        tamano = random(10, 30);
    }
}
