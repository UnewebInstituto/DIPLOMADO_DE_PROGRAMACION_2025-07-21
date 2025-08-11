Algoritmo Ejemplo11_serie_fibonacci_repetir
	// Declaración de variables
	definir i Como Entero // variable de control
	definir n Como Entero // variable tope
	definir suma Como Entero
	definir n1 Como Entero
	definir n2 Como Entero
	definir continuar Como Caracter
	// Inicialización de variables
	n <- 0
	continuar <- 'S'
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo11 Serie Fibonacci Repetir'
		Escribir 'Ingrese el número de elementos en la serie:'
		leer n
		suma <- 0
		i <- 2
		n1 <- 1
		Escribir n1
		n2 <- 1
		Escribir n2
		Repetir
			suma <- n1 + n2 
			escribir suma
			n1 <- n2
			n2 <- suma
			i <- i + 1
		Hasta Que i >= n
		Repetir
			Escribir '¿Usted desea repetir el proceso (S/N):?'		
			Leer continuar
			si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que no(Mayusculas(continuar) = 'S')
FinAlgoritmo
