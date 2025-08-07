Algoritmo Ejemplo16_serie_fibonacci_para
	//Declaracion de variables
	Definir i Como Entero
	Definir n Como Entero
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir  suma Como Entero
	//Inicializacion de variabñes
	n1 <- 1
	n2 <- 1
	n <- 9
	Escribir  'Ingrese la cantidad de elementos en la serie '
	leer n
	suma <- 0
	// Proceso 
	Escribir  '1 : ', n1
	Escribir   '2 : ', n2
	para i <- 3 Hasta  n  Hacer
		suma  <- n1 + n2
		Escribir i, ' : ' , suma
		n1 <- n2
		n2 <- suma
	FinPara
	escribir ' Fin de serie'
FinAlgoritmo
