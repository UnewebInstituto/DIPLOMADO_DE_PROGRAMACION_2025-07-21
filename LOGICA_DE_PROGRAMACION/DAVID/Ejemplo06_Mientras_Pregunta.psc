Algoritmo Ejemplo06_Mientras_Pregunta
	// Declaraci�n de variables
	Definir i Como Entero
	Definir n Como Entero
	Definir continuar Como Caracter
	// Inicializaci�n de variables
	n <- 0
	i <- 0
	continuar <- 'S'
	
	// Proceso 
	Mientras  Mayusculas(continuar) = 'S' Hacer
		Limpiar Pantalla
		Escribir 'Ingrese el numero de interaccones deseadas'
		Leer n
		Mientras i < n Hacer
			Escribir i
			i <- i + 1
		FinMientras
		Escribir 'Fin...'
		Escribir '�Desea realizar otro calculo? (S/N)'
		Leer continuar
	FinMientras
FinAlgoritmo
