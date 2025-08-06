Algoritmo Ejemplo06_Mientras_Pregunta
	//Declaracion de variables
	Definir i Como Entero
	Definir n  Como Entero
	Definir continuar Como Caracter
	//Inicializacion de variables
	n <- 0
	i <- 0
	continuar <- 'S'
	//Proceso 
	Mientras continuar = 'S' o continuar = 's' Hacer
		escribir 'ingrese el numero de iteraciones a ejecutar:'
		leer n
		Mientras i < n Hacer
			Escribir i
			i <- i + 1
		FinMientras
	Escribir '¿Desea efectuar otro calculo (S/N)'
	Leer continuar
FinMientras

FinAlgoritmo

