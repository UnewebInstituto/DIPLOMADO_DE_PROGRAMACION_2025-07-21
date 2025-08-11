Algoritmo Ejemplo12_Ejemplo_fibonacci
	//Declaracion de variables
	Definir i Como Entero   //Variable de control 
	Definir n Como Entero   // Variable tope 
	Definir suma Como Entero 
	Definir ni Como Entero
	Definir n2 Como Entero
	Definir  continuar Como Caracter
	// Inicializacion de variables 
	continuar<- 'S'
	i<-2
	n<-0
 	
	Mientras Mayusculas(continuar)= 'S' Hacer
		Escribir 'Ingrese el numero de elementos en la serie'
		leer n
		suma<-0
		n1<-1
		Escribir n1
		n2<-1
		Escribir n2
		Repetir
			suma<- n1+n2
			Escribir suma
			n1<-n2
			n2<- suma
			i<- i+1
		Hasta Que i>=n
		Repetir
			Escribir 'Usted desea repetir el proceso (S/N):?'
			Leer continuar
			si Mayusculas(continuar)<> 'S' y Mayusculas(continuar)<> 'N'
				Escribir 'Error escriba una caracter valido'
			FinSi
		Hasta Que Mayusculas(continuar)= 'S'
	FinMientras

	Escribir 'Fin....'
FinAlgoritmo
