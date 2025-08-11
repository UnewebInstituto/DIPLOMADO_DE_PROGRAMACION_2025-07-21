Algoritmo Ejemplo20_Matrices
	// Declaración de variables
	Definir i Como Entero
	Definir j Como Entero
	Dimensionar letras[3,3]
	// Inicialización de variables
	letras[1,1] <- 'A'
	letras[1,2] <- 'B'
	letras[1,3] <- 'C'
	letras[2,1] <- 'D'
	letras[2,2] <- 'E'
	letras[2,3] <- 'F'
	letras[3,1] <- 'G'
	letras[3,2] <- 'H'
	letras[3,3] <- 'I'
	// Proceso recorrido de la matriz
	Escribir 'Contenido de la Matriz.'
	Para i<-1 Hasta 3 Hacer
		Para j<-1 Hasta 3 Hacer
			Escribir letras[i,j]
		FinPara
	FinPara
FinAlgoritmo