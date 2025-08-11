Algoritmo Ejemplo20_matrices 
	// Declaracion de matrices
	Definir i Como Entero
	Definir j Como Entero
	Dimensionar  letras[3,3]
	// Inicializacion ded variables
	letras[1,1] <- 'A'
	letras[1,2] <- 'B'
	letras[1,3] <- 'C'
	letras[2,1] <- 'D'
	letras[2,2] <- 'E'
	letras[2,3] <- 'F'
	letras[3,1] <- 'G'
	letras[3,2] <- 'H'
	letras[3,3] <- 'I'
	// Prosaeso recorrido de la matriz
	para i <-1 Hasta 3 Hacer
		Escribir  'Contenido de la matriz'
		Para j<-1 Hasta  3 Hacer
			Escribir  letras[i,j]
		FinPara
	FinPara
FinAlgoritmo
