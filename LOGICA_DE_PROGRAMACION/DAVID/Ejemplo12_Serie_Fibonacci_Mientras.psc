Algoritmo Ejemplo12_Serie_Fibonacci_Repetir_Preguntar
	//Declaracion  de variables
	Definir i Como Entero //Control
	Definir n Como Entero //Fin de ciclo
	Definir suma Como Entero //Suma
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir continuar Como Caracter
	Definir control Como Logico
	//Inicializacion de las variables
	n <- 0
	continuar <- 'S'
	Mientras Mayusculas(continuar) = 'S' Hacer
		Limpiar Pantalla
		Escribir 'Ejemplo13 Serie Fibonacci (Mientras)'
		Escribir 'Ingrese el numero de elementos en la serie'
		Leer n
		i <- 2
		suma <- 0
		n1 <- 1
		Escribir n1
		n2 <- 1
		Escribir n2
	    Mientras i < n
			suma <- n1 + n2
			Escribir suma
			n1 <- n2
			n2 <- suma
			i <- i + 1
		FinMientras
		control <- Verdadero
		Mientras control Hacer
			Escribir '¿Usted desea repetir el proceso? (S/N)'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Debe escribir S o N'
				control <- Verdadero
			SiNo
				control <- Falso
			FinSi
		FinMientras
	FinMientras
FinAlgoritmo
