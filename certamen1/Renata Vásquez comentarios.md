Alumno: Renata Vásquez 

Comentarios de la entrega:

No existe contexto de la producción de la obra

Existe un uso del control de versión básico, se puede mejorar en el nombre y descripción de cada commit, de esta forma se puede leer la evolución del programa.

**Es un programa que cumple con todos los requerimientos, pero aún es necesario ahondar más en cuanto a la la forma de describir y analizar la obra, la modularidad de métodos, separar posición, de elemento gráfico.**

Pasar variables directas sin pasar por los parámetros es importante que no ocurra, por ejemplo 

```java
void caracteristicas (int c, int g) { 
    noFill();
    strokeWeight(g);
    stroke (c, mouseY, mouseX, 255); //Al mover el mouse a lo largo del canvas, el color de la figura camiba.
  }
```

Las variables mouseX, y mouseY, deben entrar como parámetros junto con c, g