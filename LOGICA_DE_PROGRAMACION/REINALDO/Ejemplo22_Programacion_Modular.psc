//Declaracion de Funciones
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
//Bloque Principal
Algoritmo Ejemplo22_Programacion_Modular
	
	//Declaracion de variables
	Definir base Como Entero
	Definir exponente Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	//Inicializacion de las variables 
	base <- 0
	resultado <- 0
	exponente <- 0
	continuar <- 'S'
	Repetir 
		Limpiar Pantalla
		Escribir 'Ejemplo22 Programacion Modular - Funciones - Caso Potencia'
		Escribir 'Nota: Ingresar solo valores enteros positivos. '
		Repetir
		Escribir 'Ingrese el valor de la base: '
		leer base
	Hasta Que  base >= 0
	Repetir 
		Escribir 'Ingrese el valor del exponente: '
		leer exponente
	Hasta Que exponente >= 0
	//Llamado a la Funcion 
	resultado <- potencia(base, exponente)
	Escribir 'La potencia de ' , base ,' elevado a ' , exponente , ' es : ', resultado 
	
		Repetir 
			Escribir '¿Usted desea calcular la potencia de otro numero (S/N):?'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'ERROR: Se espera que indique S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S' 
	
FinAlgoritmo