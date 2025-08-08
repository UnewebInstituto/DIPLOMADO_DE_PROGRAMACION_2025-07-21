//Declaracion de Funciones
Funcion producto <- potencia(arg_base, arg_expo)
	si arg_base < 0 o arg_expo < 0 Entonces
		producto <- 'ERROR: El valor de la base y el exponente deben ser >= 0'
		SiNO 	
			definir i Como Entero 
			definir resultado Como Entero
			i <- 0
			resultado <- 1
			Mientras i < arg_expo Hacer
				resultado <- resultado * arg_base
				i <- i + 1
			FinMientras
			producto <- 'Resultado: La Potencia de ' + ConvertirATexto(arg_base) + ' elevado a ' + ConvertirATexto(arg_expo) + ' es igual a ' + ConvertirATexto(resultado)
	FinSi
FinFuncion 

Funcion suma <- suma(arg_n1, arg_n2)
	sumar <- 'Resultado: La suma de  ' + ConvertirATexto(arg_n1) + ' mas ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 + arg_n2)
FinFuncion

Funcion resta <- restar(arg_n1, arg_n2)
	resta <- 'Resultado: La resta de  ' + ConvertirATexto(arg_n1) + ' menos ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 - arg_n2)
FinFuncion

Funcion multiplica <- multiplicar(arg_n1, arg_n2)
	multiplica <- 'Resultado: La multiplicacion de  ' + ConvertirATexto(arg_n1) + ' por ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 * arg_n2)
FinFuncion

Funcion divide <- dividir(arg_n1, arg_n2)
	si arg_n2 = 0 Entonces
		divide <- 'ERROR: Division por cero.'
	SiNo 
		divide <- 'Resultado: La division de  ' + ConvertirATexto(arg_n1) + ' dividido ' + ConvertirATexto(arg_n2) + ' es igual a ' + ConvertirATexto(arg_n1 / arg_n2)
	FinSi
FinFuncion
//Bloque Principal
Algoritmo Ejemplo23_Programacion_Modular
	
	//Declaracion de variables
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	Definir operacion Como Caracter
	//Inicializacion de las variables 
	n1 <- 0
	n2 <- 0
	resultado <- 0
	exponente <- 0
	continuar <- 'S'
	Repetir 
		Limpiar Pantalla
		Escribir 'Ejemplo22 Programacion Modular - Funciones - Caso Calculadora'
		Escribir 'Nota: Ingresar solo valores enteros positivos. '
		Repetir
			Escribir 'Seleccione la Operacion a efectuar: '
			Escribir '+' 
			Escribir '-' 
			Escribir '*' 
			Escribir '/'
			Escribir '^' 
			leer operacion
		Hasta Que operacion = '+' o operacion = '-' o operacion = '*' o operacion = '/' o operacion = '^'
		Escribir 'Nota: Ingresar solo valores solicitados'
		Escribir 'Ingrese el 1er. Valor: '
		leer n1
		Escribir 'Ingrese el 2do. Valor: '
		leer n2
		//Llamado a la Funcion 
		Segun operacion 
			'+' : Escribir suma(n1,n2)
			'-' : Escribir restar(n1,n2)
			'*' : Escribir multiplicar(n1,n2)
			'/' : Escribir dividir(n1,n2)
			'^' : Escribir potencia(n1,n2)
		FinSegun
		Repetir 
			Escribir '¿Usted desea efectuar un nuevo calculo (S/N):?'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'ERROR: Se espera que indique S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S' 
	
FinAlgoritmo