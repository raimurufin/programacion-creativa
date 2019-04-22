Alumno: Sebastián Camacho

Comentarios de la entrega:

No existe nombre de autor, ni nombre de obra, ni contexto de la producción.

Existe un uso del control de versión básico, se puede mejorar en el nombre y descripción de cada commit, de esta forma se puede leer la evolución del programa.

**Es un programa que cumple con todos los requerimientos, pero aún es necesario ahondar más en cuanto a la la forma de describir y analizar la obra, la modularidad de métodos, separar posición, de elemento gráfico.**



Del siguiente código del certamen1:

```java
for (int i=0; i<num; i++) { //For asignado para definir la cantidad de cuadrados queremos que hayan
      float sz = i*35;// tamaño de los cuadrados multiplicados para aumentar de tamaño secuencialmente
      float sw = map(sin(theta+TWO_PI/num*i), -1, 1, 1, 5); // aumento y disminucion del GROSOR DE LA LINEA/ANGULO DE ROTACION a partir de rangos establecidos
      pushMatrix();
      rotate(sw/20); // Resultado final del angulo que genera elefecto rebote
      rect(0, 0, sz, sz); // Cuadrado con valores distintos segun sz (Escala de los cuadrados)
      if (i%2==1) { //Condicion que cambia los colores de las lineas dependiendo de los valores en i
        stroke(0);

      } else {
        stroke(255);
      }
      rectMode(CENTER);//Permite trabajar desde el centro de la figura
      strokeWeight(sw);// grosor de la linea
      popMatrix();
    }
    theta += TWO_PI/frames;
  }
```

Explicar:

```java
 map(sin(theta+TWO_PI/num*i), -1, 1, 1, 5); 	
 y
 theta += TWO_PI/frames;
```



```

```

