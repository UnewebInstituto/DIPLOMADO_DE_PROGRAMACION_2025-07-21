Algoritmo Ejemplo11_Ejemplo_fibonacci
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
	Repetir
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
			si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N'
				Escribir 'Error escriba S o N'
			FinSi
		Hasta Que Mayusculas(continuar)= 'S' o Mayusculas(continuar)= 'N'
    Hasta Que no (Mayusculas(continuar)= 'S')
	Escribir 'Fin....'
FinAlgoritmo
