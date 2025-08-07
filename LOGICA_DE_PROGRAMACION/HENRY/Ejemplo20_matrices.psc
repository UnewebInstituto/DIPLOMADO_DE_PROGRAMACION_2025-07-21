Algoritmo Ejemplo20_matrices
	//Declaracion de variables
	Dimension letras[3,3]
	Definir i como entero
	Definir j como entero 
	//Inicializacion de variables 
	letras[1,1]<- 'A'
	letras[1,2]<- 'B'
	letras[1,3]<- 'C'
	letras[2,1]<- 'D'
	letras[2,2]<- 'E'
	letras[2,3]<- 'F'
	letras[3,1]<- 'G'
	letras[3,2]<- 'H'
	letras[3,3]<- 'I'
	//Proceso recorrido de la matriz 
	Escribir 'Contenido de la matriz'
	Para i<-j hasta 3 Hacer
		para j<-1 hasta 3 Hacer
			Escribir letras[i,j]
		FinPara
	FinPara
FinAlgoritmo
