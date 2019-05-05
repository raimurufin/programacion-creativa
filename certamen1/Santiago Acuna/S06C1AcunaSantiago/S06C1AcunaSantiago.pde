/*
 No existe una descripción general del código escrito, qué se verá, ni cómo se utiliza.
*/
Celular celula;

int nbCelula = 0;

void setup() {
  size(900, 900);

  celula = new Celular(new PVector(width * 0.5, height * 0.5), 200);
}

void draw() {
  background(230);

  celula.run();

  float mov = 1;

  if (keyPressed && key == 's') {
    celula.seMueve(new PVector(0, noise(frameCount * 0.2) * mov));
  }

  if (keyPressed && key == 'w') {
    celula.seMueve(new PVector(0, noise(frameCount * 0.2) * -mov));
  }
}
