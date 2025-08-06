Algoritmo Ejemplo12_serie_fibonacci_mientras
	// Declaración de variables
	definir i Como Entero // variable de control
	definir n Como Entero // variable tope
	definir suma Como Entero
	definir n1 Como Entero
	definir n2 Como Entero
	definir continuar Como Caracter
	definir control Como Logico
	// Inicialización de variables
	n <- 0
	continuar <- 'S'
	Mientras Mayusculas(continuar) = 'S' Hacer
	//Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo12 Serie Fibonacci Mientras'
		Escribir 'Ingrese el número de elementos en la serie:'
		leer n
		suma <- 0
		i <- 2
		n1 <- 1
		Escribir n1
		n2 <- 1
		Escribir n2
		//Repetir
		Mientras i < n
			suma <- n1 + n2 
			escribir suma
			n1 <- n2
			n2 <- suma
			i <- i + 1
			//Hasta Que i >= n
		FinMientras
		//Repetir
		control <- Verdadero
		Mientras control Hacer
			Escribir '¿Usted desea repetir el proceso (S/N):?'		
			Leer continuar
			si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Debe escribir S o N'
				control <- Verdadero
			SiNo
				control <- falso
			FinSi
		//Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
		FinMientras
	//Hasta Que no(Mayusculas(continuar) = 'S')
	FinMientras
FinAlgoritmo
