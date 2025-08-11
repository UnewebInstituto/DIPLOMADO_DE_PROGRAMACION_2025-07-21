Algoritmo Ejemplo16_Serie_Fibonacci_Para
	//Declaracion de Variables
	Definir i Como Entero
	Definir n Como entero 
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir suma Como Entero
	//Inicializacion de Variables
	n1 <- 1 
	n2 <- 1 
	Escribir 'Ingrese la cantidad de elementos en la serie'
	Leer n
	suma <- 0
	//Proceso 
	Escribir '1: ' ,n1
	Escribir '2: ' ,n2
	Para i<-3 Hasta n Hacer 
		suma <- n1 + n2
		Escribir i , ':' ,suma 
		n1 <- n2
		n2 <- suma 
	FinPara
	Escribir 'Fin de la Serie'
	
FinAlgoritmo
