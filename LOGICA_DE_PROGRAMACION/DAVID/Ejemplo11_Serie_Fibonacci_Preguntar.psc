Algoritmo Ejemplo12_Serie_Fibonacci_Repetir_Preguntar
	//Declaracion  de variables
	Definir i Como Entero //Control
	Definir n Como Entero //Fin de ciclo
	Definir suma Como Entero //Suma
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir continuar Como Caracter
	//Inicializacion de las variables
	n <- 0
	continuar <- 'S'
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo13 Serie Fibonacci (Preguntar)'
		Escribir 'Ingrese el numero de elementos en la serie'
		Leer n
		i <- 2
		suma <- 0
		n1 <- 1
		Escribir n1
		n2 <- 1
		Escribir n2
		Repetir
			suma <- n1 + n2
			Escribir suma
			n1 <- n2
			n2 <- suma
			i <- i + 1
		Hasta Que i >= n 
		Repetir
		    Escribir '¿Usted desea repetir el proceso? (S/N)'
		    Leer continuar
			si Mayusculas(continuar) <> 'S' o Mayusculas(continuar) <> 'N'
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar)= 'N'
	Hasta Que no Mayusculas(continuar) = 'S'
FinAlgoritmo
