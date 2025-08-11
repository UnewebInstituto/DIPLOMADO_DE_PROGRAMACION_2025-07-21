//Declaracion de funciones
Funcion producto <- potencia(argumento_base, argumento_exponente) 
	si argumento_base < 0 o argumnto_exponente < 0 Entonces
		producto <- 'Error: El valor de la base y el exponente deben ser >=0'
	Sino
		Definir i Como Entero
		Definir resultado Como Entero
		i <- 0
		resultado <- 1
		Mientras i < argumento_exponente Hacer
			resultado <- resultado * argumento_base
			i <- i + 1
		FinMientras
		producto <- 'Resultado: la potencia de ' + ConvertirATexto(argumento_base) + ' elevado a ' + ConvertirATexto(argumento_exponente) + ' es igual a = ' + ConvertirATexto(resultado)
	FinSi
FinFuncion

Funcion suma <- sumar(arg_n1, arg_n2)
	suma <- 'Resultado: la suma de ' + ConvertirATexto(arg_n1) + ' más ' + ConvertirATexto(arg_n2) + ' es igual a = ' + ConvertirATexto(arg_n1 + arg_n2)
FinFuncion

Funcion resta <- restar(arg_n1, arg_n2)
	resta <- 'Resultado: la resta de ' + ConvertirATexto(arg_n1) +  ' menos ' + ConvertirATexto(arg_n2) + ' es igual a = ' + ConvertirATexto(arg_n1 - arg_n2)
FinFuncion

Funcion multiplicacion <- multiplicar(arg_n1, arg_n2)
	multiplicacion <- 'Resultado: la multiplicacion de ' + ConvertirATexto(arg_n1) +  ' por ' + ConvertirATexto(arg_n2) + ' es igual a = ' + ConvertirATexto(arg_n1 * arg_n2)
FinFuncion

Funcion division <- dividir(arg_n1, arg_n2)
	Si arg_n2 = 0 Entonces
		division <- 'Error'
	SiNo
		division <- 'Resultado: la division de ' + ConvertirATexto(arg_n1) +  ' entre ' + ConvertirATexto(arg_n2) + ' es igual a = ' + ConvertirATexto(arg_n1 / arg_n2)
	FinSi
FinFuncion

//Bloque principal
Algoritmo Ejemplo23_Programacion_Modular
	//Declaracion de variables
	Definir numero1 Como Entero
	Definir numero2 Como Entero
	Definir continuar Como Caracter
	Definir resultado Como Entero
	Definir operacion Como Caracter
	//Inicializacion de variables
	numero1 <- 0
	numero2 <- 0
	resultado <- 0
	continuar <- 'S'
	
	Repetir
		Limpiar pantalla
		Escribir 'Ejemplo 22 Programacion Modular (Funciones - Calculadora)'
		Repetir
			Escribir 'Seleccione la operacion a efectuar'
			Escribir 'Suma (+)'
			Escribir 'Resta (-)'
			Escribir 'Multiplicacion (x)'
			Escribir 'Division (/)'
			Escribir 'Potencia (^)'
			Leer operacion
		Hasta Que operacion = '+' o operacion = '-' o operacion = 'x' o operacion = '/' o operacion = '^'
		Escribir 'Nota: Ingresar los valores solicitados'
		Escribir 'Ingrese el 1er. Valor:'
		leer n1
		Escribir 'Ingrese el 2do. Valor:'
		leer n2
		//LLamado a la Funcion 
		Segun operacion
			'+': Escribir sumar(n1,n2)
			'-': Escribir restar(n1,n2)
			'x': Escribir multiplicar(n1,n2)
			'/': Escribir dividir(n1,n2)
			'^': Escribir potencia(n1,n2)
		FinSegun
		Repetir
			Escribir '¿Usted desea realizar otra operacion? (S/N)'
			Leer continuar
			si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que Mayusculas(continuar) <> 'S' 
	Escribir 'Fin'
	
	
	
FinAlgoritmo