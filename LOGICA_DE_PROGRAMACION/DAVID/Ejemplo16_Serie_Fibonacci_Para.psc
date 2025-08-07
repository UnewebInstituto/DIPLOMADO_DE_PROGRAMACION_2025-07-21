Algoritmo Ejemplo16_Serie_Fibonacci_Para
	//Declaracion de variables
	Definir i Como Entero 
	Definir n Como Entero 
	Definir suma Como Entero //Suma
	Definir n1 Como Entero
	Definir n2 Como Entero
	//Inicializacion de las variables
	n <- 9
	suma <- 0
	Escribir 'Ingrese la cantidad de elementos de la serie'
	Leer n
	n1 <- 1
	n2 <- 1
	//Proceso 
	Escribir '1:',n1
	Escribir '2:',n2
	Para i <- 3 Hasta n Hacer
		suma <- n1 + n2
		Escribir i,':',suma
		n1 <- n2
		n2 <- suma
	FinPara
	Escribir 'Fin de la serie'
FinAlgoritmo
