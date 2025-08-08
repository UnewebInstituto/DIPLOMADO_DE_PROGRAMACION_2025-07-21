
//Declaracion de funciones
Funcion producto<-potencia(arg_base,arg_expo) 
	Definir i Como Entero
	definir producto Como Entero
	i<-0
	producto<-1
	mientras i< arg_expo Hacer
		producto<-producto*arg_base
		i<-i+1
	FinMientras
FinFuncion
Algoritmo Ejemplo22_programacion_modula
	//Declaracion de variables
	Definir base Como Entero
	Definir Exponente Como Entero
	Definir continuar como caracter
	Definir resultado Como Entero
	//Inicializacion de variables
	base<-0
	Exponente<-0
	resultado<-0
	continuar<- 'S'
	Repetir 
		Limpiar Pantalla
		Escribir 'Ejemplo 22 Programacion Modular-Funciones-Caso Potencia'
		Escribir 'Ingrese solo valores enteros positivos'
		Repetir
			Escribir 'Ingrese el valor de la base:'
			Leer base
	    Hasta Que base>= 0
		Repetir
			Escribir 'Ingrese el valor de exponente'
			Leer Exponente
		Hasta Que Exponente>=0
		//Llamado de la Funcion 
		resultado<- potencia(base,Exponente)
		Escribir 'La potencia de  ',base,'  Elevado  ',Exponente,'  es  ',resultado
		Repetir
		Escribir 'Usted desea calcular la potencia de otro numero (S/N)?'
			Leer continuar
			si Mayusculas(continuar)<> 'S' y Mayusculas(continuar)<> 'N' Entonces
				Escribir 'Error indique un caracter correcto'
			FinSi
		Hasta Que 	Mayusculas(continuar)='S' o Mayusculas(continuar)='N'
	Hasta Que Mayusculas(continuar)<> 'S'
	Escribir 'Fin....'
FinAlgoritmo

	