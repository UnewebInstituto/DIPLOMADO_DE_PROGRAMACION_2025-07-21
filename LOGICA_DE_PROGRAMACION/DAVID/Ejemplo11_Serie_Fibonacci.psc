Algoritmo Ejemplo11_Serie_Fibonacci_Repetir
	//Declaracion  de variables
	Definir i Como Entero //Control
	Definir n Como Entero //Fin de ciclo
	Definir suma Como Entero //Suma
	Definir n1 Como Entero
	Definir n2 Como Entero
	//Inicializacion de las variables
	n <- 0
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
FinAlgoritmo
