Algoritmo Ejemplo21_Ordenamiento_Burbuja
	//Declaracion de Variables
	Definir n Como Entero
	n <- 8
	Dimensionar A[n]
	Definir i Como Entero
	Definir j Como Entero 
	Definir aux Como Entero
	A[1] <- 6
	A[2] <- 5
	A[3] <- 3
	A[4] <- 1
	A[5] <- 8
	A[6] <- 7
	A[7] <- 2
	A[8] <- 4
	Escribir 'Contenido del arreglo antes de ordenar'
	Para i <- 1 Hasta n Hacer
		Escribir A[i]
	FinPara
	//Proceso de ordenamiento
	Para i <- 1 Hasta n - 1 Hacer
		Para j <- 1 Hasta n - i Hacer
			si A[j] > A[j+1] Entonces
				aux <- A[j]
				A[j] <- A[j+1]
				A[j+1] <- aux
			FinSi
		FinPara
	FinPara
	Escribir 'Contenido del arreglo despues de ordenar'
	Para i <- 1 Hasta n Hacer
		Escribir A[i]
	FinPara
FinAlgoritmo
