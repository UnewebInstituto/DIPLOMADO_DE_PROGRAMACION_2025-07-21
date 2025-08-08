// Declaración de funciones
Funcion producto <- potencia(arg_base, arg_expo) 
	definir i Como Entero
	definir producto Como Entero
	i <- 0
	producto <- 1
	Mientras i < arg_expo Hacer
		producto <- producto * arg_base
		i <- i + 1
	FinMientras
FinFuncion

// Bloque principal
Algoritmo Ejemplo22_Programacion_Modular
	// Declaración de variables 
	Definir base Como Entero
	Definir exponente Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	// Inicialización de variables
	base <- 0
	exponente <- 0
	resultado <- 0
	continuar <- 'S'
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo22 Programación Modular - Funciones - Caso Potencia'
		Escribir 'Nota: Ingresar sólo valores enteros positivos.'
		Repetir
			Escribir 'Ingrese el valor de la base:'
			leer base
		Hasta Que base >= 0
		Repetir
			Escribir 'Ingrese el valor del exponente:'
			leer exponente
		Hasta que exponente >= 0
		// Llamado a la función
		resultado <- potencia(base, exponente)
		Escribir 'La potencia de ', base, ' elevado a ', exponente, ' es : ', resultado
		Repetir
			Escribir '¿Usted desea calcular la potencia de otro número (S/N):?'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Se espera que indique S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S'
	Escribir 'Fin...'
FinAlgoritmo
