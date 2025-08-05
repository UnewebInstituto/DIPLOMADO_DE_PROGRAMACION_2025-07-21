Algoritmo Ejemplo04_Condicional_Anidado 
	//Declaracion de variables 
	Definir x1 Como Real
	Definir x2 Como Real
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir sub_radical Como Real
	Definir resultado Como Caracter
	
	//Inicializacion de variables 
	x1 <- 0
	x2 <- 0
	a <- 0
	b <- 0
	c <- 0
	sub_radical <- 0
	resultado <- ''
	
	Escribir 'Ejemplo04 Condicional Anidado  (Resolvente)'
	Escribir 'ingrese valor para la variable a:'
	Leer a
	si a = 0 Entonces
		resultado <- 'ERROR: El valor de a debe ser diferente de 0'
	SiNo
		Escribir 'ingrese valor para la variable b:'
		leer b
		Escribir 'ingrese valor para la variable c:'
		leer c
		sub_radical <- b * b - 4 * a * c 
		si sub_radical < 0  Entonces
			resultado <- 'ERROR: Expresion subradical, no puede ser negativa'
		SiNo
			x1 <- (-b + RC(sub_radical))/(2*a)
			x2 <- (-b - RC(sub_radical))/(2*a)
			resultado <-  'RESULTADO x1:' + ConvertirATexto(X1) + ', Resultado X2: ' + ConvertirATexto(x2)
		FinSi
	FinSi
	Escribir resultado
FinAlgoritmo
