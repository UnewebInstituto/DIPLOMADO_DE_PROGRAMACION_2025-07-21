Algoritmo Ejemplo21_arreglos_ordenamiento_burbuja
	// Declaración de variables
	Definir n Como Entero
	n <- 8
	Dimensionar a[n]
	Definir i Como Entero
	Definir j Como Entero
	Definir aux Como Entero
	// Inicialización de variables
	a[1] <- 6
	a[2] <- 5
	a[3] <- 3
	a[4] <- 1
	a[5] <- 8
	a[6] <- 7
	a[7] <- 2
	a[8] <- 4
	Escribir 'Contenido del arreglo antes de ordenar'
	Para i <- 1 Hasta n Hacer
		Escribir a[i]
	FinPara
	// Proceso de ordenamiento
	Para i <- 1 Hasta  n - 1 Hacer
		Para j <- 1 Hasta n - i Hacer
			si a[j] > a[j+1] Entonces
				aux <- a[j]
				a[j] <- a[j+1]
				a[j+1] <- aux
			FinSi
		FinPara
	FinPara
	Escribir 'Contenido del arreglo después de ordenar'
	Para i <- 1 Hasta n Hacer
		Escribir a[i]
	FinPara
FinAlgoritmo