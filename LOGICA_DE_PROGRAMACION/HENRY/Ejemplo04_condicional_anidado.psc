Algoritmo Ejemplo04_Condicional_anidado
	// Declaracion de variables
	Definir x1 Como Real
	Definir x2 como Real
	Definir a Como Real
	Definir b Como Real 
	Definir c Como Real
	Definir sub_radical como Real 
	Definir Resultado Como Caracter
	// Inicializacion de variables 
	x1 <- 0 
	x2 <- 0
	a <- 0 
	b <- 0
	c<- 0 
	sub_radical <- 0
	Resultado <- ''
	// Leer variables 
	Escribir 'Ejemplo04 (Resolvente)'
	Escribir 'Ingrese el valor de a: '
	Leer a
	si a=0 Entonces
		Resultado <- 'Error: el valor de a debe ser diferente de 0' 
	SiNo
		Escribir 'Ingrese el valor de b:'
		Leer b
		Escribir 'Ingrese el valor de c:'
		leer c
		sub_radical <- b*b -4*a*c
		si sub_radical< 0 Entonces
			Resultado <- 'Error: expresion subradical no puede ser negativa' 
		SiNo
			x1 <- (-b+RC(sub_radical))/(2*a)
			x2 <- (-b-RC(sub_radical))/(2*a)
			Resultado<- 'Resultado x1:' +ConvertirATexto(x1)+ ',Resultado x2:' +ConvertirATexto(x2)
		
		FinSi
	FinSi
	Escribir Resultado

FinAlgoritmo
