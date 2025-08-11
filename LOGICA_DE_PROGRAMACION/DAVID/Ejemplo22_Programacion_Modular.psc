//Declaracion de funciones
Funcion producto <- potencia(argumento_base, argumento_exponente)
	Definir i Como Entero
	Definir producto Como Entero
	i <- 0
	producto <- 1
	Mientras i < argumento_exponente Hacer
		producto <- producto * argumento_base
		i <- i + 1
	FinMientras
FinFuncion
//Bloque principal
Algoritmo Ejemplo22_Programacion_Modular
	//Declaracion de variables
	Definir base Como Entero
	Definir exponente Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	//Inicializacion de variables
	base <- 0
	exponente <- 0
	resultado <- 0
	continuar <- 'S'
	
	Repetir
		Limpiar pantalla
		Escribir 'Ejemplo 22 Programacion Modular (Funciones - Caso Potencia)'
		Escribir 'Nota: Ingresar solo valores enteros positivos mayores o iguales a 0'
		Repetir
			Escribir 'Ingrese el valor de la base (+)'
			Leer base
		Hasta Que base >= 0
		Repetir
			Escribir 'Ingrese el valor del exponente'
			Leer exponente
		Hasta Que exponente >= 0
		//LLamado a la Funcion 
		resultado <- potencia(base, exponente)
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es igual a = ', resultado
		Repetir
			Escribir '¿Usted desea calcular la potencia de otro numero? (S/N)'
			Leer continuar
			si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S' 
	Escribir 'Fin'
	
	
	
FinAlgoritmo