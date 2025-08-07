Algoritmo Ejemplo21_arreglos_ordenamiento_burbuja
	//Declaracion de variables 
	Dimension a[n]
	n<-8
	Definir n Como Entero
	Definir i Como Entero
	Definir j Como Entero
	Definir aux Como Entero
	//Inicializacion de mis variables
	a[1]<-6
	a[2]<-5
	a[3]<-3
	a[4]<-1
	a[5]<-8
	a[6]<-7
	a[7]<-2
	a[8]<-1
	Escribir 'Contenido del arreglo antes de ordenar'
	Para i<-1 hasta n Hacer
		Escribir a[i]
	FinPara
	//Proceso de ordenamiento 
	Para i<-2 Hasta n-1 Hacer
		para j<-1 Hasta n-i Hacer
			si a[j]>a[j+1] Entonces
				aux<-a[j]
				a[j]<-a[j+1]
				a[j+1]<-aux
			FinSi
		FinPara
	FinPara
	Escribir 'Contenido del arreglo despues de ordenar'
	Para i<-1 hasta n Hacer
		Escribir a[i]
	FinPara
FinAlgoritmo
