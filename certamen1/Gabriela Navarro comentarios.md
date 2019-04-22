Alumno: Gabriela Navarro

Del siguiente código del certamen1:

```java
  //Inicio ámbito espiral
  void espiral() {
    for (float cantidad = 0.0; cantidad <= 360; cantidad = cantidad + (random(0) + 1)/2) {
      pushMatrix();
      x = width/2 + r * sin(cantidad);
      y = height/2 - r * cos(cantidad);
      noStroke();
      ellipse(x, y, 3.5, 3.5);
      r = (r + 5) % (width/2);
      if (millis() % 2 == 0) {
        fill(tu);
      } else if (millis() % 3 == 0) {
        fill(na);
      } else {
        fill(am);
      }
      popMatrix();
    }
  }
```

Explicar:

```java
for (float cantidad = 0.0; cantidad <= 360; cantidad = cantidad + (random(0) + 1)/2) {	
```



Comentarios de la entrega:

No existe nombre de autor, ni nombre de obra, ni contexto de la producción.

No existe una descripción de los elementos necesarios para reconstruir la obra por medio de código.

El uso de buenas prácticas en el control de versión no existen, existe un solo commit

**La entrega en general carece de un detalle mayor que refleje una profundidad en el análisis de un artista, obra, y sobre todo del manejo de las estructuras de código vistas a la fecha.**

**Es importante que el alumno entienda que el nivel mínimo de entrega es superior a lo que se ha entregado a lo largo de los semestres pasados.**