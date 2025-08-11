// Declaración de funciones
Funcion producto <- potencia(arg_base, arg_expo) 
	si arg_base < 0 o arg_expo < 0 Entonces
		producto <- 'Error: El valor de la base y el exponente deben ser >=0'
	Sino
		definir i Como Entero
		definir resultado Como Entero
		i <- 0
		resultado <- 1
		Mientras i < arg_expo Hacer
			resultado <- resultado * arg_base
			i <- i + 1
		FinMientras
		producto <- 'Resultado: La potencia de ' + ConvertirATexto(arg_base) + ' elevado a ' + ConvertirATexto(arg_expo) + ' es igual a ' + ConvertirATexto(resultado)
	FinSi
FinFuncion

Funcion suma <- sumar(arg_n1, arg_n2)
	suma <- 'Resultado: La suma de ' + ConvertirATexto(arg_n1) + ' más ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 + arg_n2)
FinFuncion

Funcion resta <- restar(arg_n1, arg_n2)
	resta <- 'Resultado: La resta de ' + ConvertirATexto(arg_n1) + ' menos ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 - arg_n2)
FinFuncion

Funcion multiplica <- multiplicar(arg_n1, arg_n2)
	multiplica <- 'Resultado: La multiplicación de ' + ConvertirATexto(arg_n1) + ' por ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 * arg_n2)
FinFuncion

Funcion divide <- dividir(arg_n1, arg_n2)
	si arg_n2 = 0 Entonces
		divide <- 'Error: División por cero.'
	SiNo
		divide <- 'Resultado: La división de ' + ConvertirATexto(arg_n1) + ' entre ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 / arg_n2)
	FinSi
FinFuncion

// Bloque principal
Algoritmo Ejemplo23_Programacion_Modular
	// Declaración de variables 
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	Definir operacion Como Caracter
	// Inicialización de variables
	n1 <- 0
	n2 <- 0
	resultado <- 0
	continuar <- 'S'
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo23 Programación Modular - Funciones - Calculadora'
		Repetir
			Escribir 'Seleccione la operación a efectuar:' 
			Escribir '+'
			Escribir '-'
			Escribir '*'
			Escribir '/'
			Escribir '^'
			Leer operacion
		Hasta Que operacion = '+' o operacion = '-' o operacion = '*' o operacion = '/' o operacion = '^'
		Escribir 'Nota: Ingresar los valores solicitados.'
		Escribir 'Ingrese el 1er. Valor:'
		leer n1
		Escribir 'Ingrese el 2do. Valor:'
		leer n2
		// Llamado a la función
		Segun operacion
			'+': Escribir sumar(n1,n2)
			'-': Escribir restar(n1,n2)
			'*': Escribir multiplicar(n1,n2)
			'/': Escribir dividir(n1,n2)
			'^': Escribir potencia(n1,n2)
		FinSegun
		Repetir
			Escribir '¿Usted desea efectuar un nuevo cálculo (S/N):?'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Se espera que indique S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S'
	Escribir 'Fin...'
FinAlgoritmo
