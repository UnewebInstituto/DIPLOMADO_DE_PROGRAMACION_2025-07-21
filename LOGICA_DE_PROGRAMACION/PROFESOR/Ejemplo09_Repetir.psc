Algoritmo Ejemplo09_Repetir
	// Declaraci�n de variables
	Definir i Como Entero // variable Control
	Definir n Como Entero // variable de fin de ciclo
	Definir continuar Como Caracter
	// Inicializaci�n de variables
	continuar <- 'S'
	Mientras Mayusculas(continuar) = 'S' Hacer
		Limpiar Pantalla
		Escribir 'Ejemplo09 ciclo Repetir'
		Escribir '�Cu�ntas iteraciones desea realizar?'
		Leer n
		i <- 0
		Repetir
			Escribir i
			i <- i + 1
		Hasta Que i >= n
		Escribir '�Usted desea repetir el proceso? (S/N)'
		Leer continuar
	FinMientras
	Escribir 'Fin...'
FinAlgoritmo
