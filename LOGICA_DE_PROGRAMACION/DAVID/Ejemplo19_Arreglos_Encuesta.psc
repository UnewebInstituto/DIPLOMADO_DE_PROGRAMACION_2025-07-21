Algoritmo Ejemplo19_Arreglos_Encuesta
	//Declaracion de Variables
	Definir n Como Entero
	Definir suma Como Entero
	Definir i Como Entero
	Definir promedio Como Real
	suma <- 0
	Escribir '¿Cuantos estudiantes conforman la muestra?'
	Leer n
	Dimensionar nombres[n]
    Dimensionar edades[n]
	
	Para i <- 1 Hasta n Hacer
		Escribir 'Ingrese el nombre de la persona', i
		Leer nombres[i]
		Escribir 'Ingrese la edad de la persona', i
		Leer edades[i]
		suma <- suma + edades[i]
	FinPara
	Escribir 'Reporte de los datos ingresados'
	Escribir 'Nombre - Edad'
	Para i <- 1 Hasta n Hacer
		Escribir nombres[i], ' - ', edades[i]
	FinPara
	promedio <- suma / n
	Escribir 'El Promedio de edades es:', promedio
	Escribir 'Fin de la muestra'
	
FinAlgoritmo
