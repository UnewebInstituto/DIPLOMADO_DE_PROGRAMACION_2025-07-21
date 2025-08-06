Algoritmo Ejemplo09_Repetir
	// Declaración de variables
	Definir i Como Entero // variable Control
	Definir n Como Entero // variable de fin de ciclo
	Definir continuar Como Caracter
	// Inicialización de variables
	continuar <- 'S'
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo09 ciclo Repetir'
		Escribir '¿Cuántas iteraciones desea realizar?'
		Leer n
		i <- 0
		Repetir
			Escribir i
			i <- i + 1
		Hasta Que i >= n
		Repetir
		    Escribir '¿Usted desea repetir el proceso? (S/N)'
		    Leer continuar
			si Mayusculas(continuar) <> 'S' o Mayusculas(continuar) <> 'N'
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar)= 'N'
	Hasta Que no (Mayusculas(continuar) = 'S')
	Escribir 'Fin...'
FinAlgoritmo
