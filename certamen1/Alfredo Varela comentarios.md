Alumno: Alfredo Varela

Del siguiente código del certamen1:

```java
void Press() {
    keyPressed(); {
      if (key == 'l') // Al presionar l, camba la secuencia con la que se crean los cuadrados
        for (int i = num - 1; i > 0; i--) { //Este array hace que cambie la composicion de la aparicion de los cuadrados
          xPos[i] = xPos[i - 1];
          yPos[i] = yPos[i - 1];
        }
      if (key == 'k') {
        angulo = angulo + 0.000004; //Modifica la velocidad con la que gira si, aumentamos el valos girara de manera descontrolada
      }
    }
  }
```

Explicar:

```java
for (int i = num - 1; i > 0; i--) { //Este array hace que cambie la composicion de la aparicion de los cuadrados
          xPos[i] = xPos[i - 1];
          yPos[i] = yPos[i - 1];
        }		
```



Comentarios de la entrega:

No existe nombre de autor, ni nombre de obra, ni contexto de la producción.

Existe una descripción incompleta de los elementos necesarios para reconstruir la obra por medio de código.

El uso de buenas prácticas en el control de versión no existen, se remiten solo a commits que cambian el estado anterior.

**Aún cuando el certamen tiene falencias de investigación y análisis, el resultado gráfico se parece a lo que presentó como referente. Es importante que el alumno incorpore la creación propia de código, es lo único que lo hará presentar trabajos en donde se tiene el control completo del resultado visual.**

