# Ejecutar en tu computadora

Compilar y ejecutar la imagen docker.  

En linux es:
```
docker build -t conda .
docker run -it -p 8888:8888 conda
```

Abrir en el navegador el link indicado


# Trabajos prácticos de análisis y curación


## Ejercicio 1: Tablas de Crecimiento
 - Descargar dataset en CSV
   + [Tablas de Peso](https://github.com/DiploDatos/AnalisisYCuracion/blob/master/input/wtageinf.csv). Nota: En la columna Sex, 1 representa a niños y 2 a niñas.  
   + Basado en [esto](https://www.cdc.gov/growthcharts/percentile_data_files.htm9)
 - Graficar las curvas correspondientes a cada percentil para niños y niñas. 
   + Las curvas de los percentiles correspondientes a un mismo sexo deben ir en un mismo gráfico.
   + Un gráfico para cada sexo.

## Ejercicio 2: Pasos Fronterizos
 - Descargar dataset en JSON [Pasos Fronterizos](https://github.com/DiploDatos/AnalisisYCuracion/blob/master/input/pasos.json)
 - Graficar un histograma agrupando por valor del atributo “province”.

## Ejercicio 3 Despersonalizar datos y guardarlos en un nuevo archivo
Hay muuuchas técnicas para despersonalizar datos.

Para ilustrar mostramos las ofrecidas por Google https://cloud.google.com/dlp/docs/transformations-reference:

 - Reemplazo: Reemplaza cada valor de entrada con un valor determinado.
 - Ocultamiento: Quita un valor y lo oculta.
 - Enmascaramiento con caracteres: Enmascara una string por completo o parcialmente mediante el reemplazo de un número determinado de caracteres con un carácter fijo especificado..
 - Seudonimización mediante el reemplazo de un valor de entrada con un hash criptográfico: Reemplaza valores de entrada con una string hexadecimal de 32 bytes mediante una clave de encriptación de datos.
 - Cambio de fechas: Cambia las fechas por un número de días al azar, con la opción de ser coherente en el mismo contexto..
 - Seudonimización mediante el reemplazo con token de preservación de formato criptográfico: Reemplaza un valor de entrada con un token, o valor sustituto, de la misma longitud mediante la encriptación de preservación de formato (FPE) con el modo de operación FFX. Esto permite que se use el resultado en sistemas con validación de formato o que necesitan aparecer como reales a pesar de que la información no se revela.
 - Valores de depósito con base en rangos de tamaño fijos: Enmascara los valores de entrada y los reemplaza por depósitos, o rangos dentro de los cuales se encuentra el valor de entrada.
 - Valores de depósito con base en rangos de tamaño personalizados: Valores de entrada de depósito con base en rangos configurables por el usuario y valores de reemplazo.
 - Extracción de datos de tiempo: EExtrae o preserva una porción de los valores Date, Timestamp y TimeOfDay.