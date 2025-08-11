Algoritmo Ejemplo19_Encuesta
	//Declaracion de variables
	Definir n Como Entero
	Definir i Como Entero
	Definir  suma Como Entero
	Definir promedio Como Real
	suma <- 0
	Escribir  ' ¿Cuantas personas conforman la muestra?'
	leer n
	Dimensionar nombres[n]
	Dimensionar edades[n]
	para i <- 1 Hasta  n Hacer
		Escribir  'Ingrese el nombre de la persona: ' , i
		Leer nombres[i]
		Escribir  ' Ingrese la edad de la persona:' , i
		Leer edades[i]
		suma <- suma + edades[i]
	FinPara
	Escribir  'Reporte de los datos ingresados'
	Escribir ' Nombre Edad'
	para i <- 1 Hasta n Hacer
		Escribir  nombres[i], ',', edades[i]
	FinPara
	promedio <- suma / n
	Escribir 'El promedio de edades es:' , promedio
	Escribir 'Fin...'
FinAlgoritmo
