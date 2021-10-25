# Compilador
Elaborado por Alejandro Hernández y Juan Pablo Vargas.

## Primer avance

En este avance se trabajo en generar la estructura básica del proyecto en la que se generaron los archivos necesarios para generar el lexer y parser. Así mismo se realizaron las configuraciones necesarias en XCode para ejecutar correctamente las herramientas utilizadas en este proyecto. 

Además diseñamos la estructura general de nuestro lenguaje. Posterior a esto hicimos un código de ejemplo de como nos gustaría que se vea y se usen ciertos elementos del lenguaje. Una vez que coincidimos en el diseño, realizamos los diagramas correspondientes.

Por último se pasó del diagrama al código para generar el lexer y parser que cumple con el análisis correcto de nuestro lenguaje * aún sin nombre *.

## Segundo avance

Durante esta semana trabajamos en dos cosas muy importantes. La primera fue una estructura muy simple para determinar el tipo de retorno de una operación válida. Y más importante aún, una estructura que permite guardar información de cada variable o función incluyendo su scope.

La tabla semantica de operadores se hizo con una estructura de tipo Diccionario donde la llave es una estructura con el tipo de los dos operandos y el operador. Como valor tenemos el tipo de dato resultante y de ser una operación inválida la estructura regresa Nil.

La segunda estructura, es una tabla de simbolos implementada con una lista encadenada con un comportamiento FIFO donde cada nodo representa un scope y es de tipo diccionario para almacenar la información sobre las funciones y variables que se encuentran en el. Esta estructura funciona con N scopes, es decir no está limitada por solamente un scope global y uno local.

## Tercer avance

Para el tercer avance, preparamos la generación de cuadruplos para expresiones y lógicas asi como para la asignacion de variables y para estructuras condicionales como el if/if else. Aunque esto suena a poco. Se trabajo muy duro en generar una estructura basica con la cual poder interactuar con el estado de la semantica de nuestro compilador. De tal manera que las tareas necesarias a realizar se encuentran centralizadas en una misma estructura lo que permite tener un código más organizado y legible. 

Con esto mismo, el código ya está preparandose para las siguientes entregas pues el manejador de semantica del programa ya contiene todas las estructuras necesarias para la administración de memoria que será implementada durante las siguientes entregas.

## Avance 4

Se realizó un avance muy importante pues se comenzó con la documentación del proyecto y con la generación de código de las últimas estructuras minimas indispensables para nuestro lenguaje. En esta entrega se agrega la generación de cuadruplos para funciones y ciclos (for y while). 

También se trabajo en ir preparando maneras de analizar el comportamiento del compilador mediante la generación de un archivo de texto de salida cada vez que se ejecuta. Este archivo incluye los cuadruplos, direcciones de memoria y algunos otros datos sobre los nodos de contexto que el compilador genera.
