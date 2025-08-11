Algoritmo Ejemplo04_Condicional_Anidado
	//Declaración de variables
	Definir x1 Como Real
	Definir x2 Como Real
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir subradical Como Real
	Definir resultado Como Caracter
	//Inicializacion de variables
	x1 <- 0
	x2 <- 0
	a <- 0
	b <- 0
	c <- 0
	subradical <- 0
	resultado <- ''
	// Proceso 
	Escribir 'Ejemplo 04 Condicional Anidado (Resolvente)' 
	Escribir 'Ingrese valor para la variable a:'
	Leer a
	si a = 0 Entonces
		resultado <- 'Error: El valor de a, debe ser diferente de 0'
	SiNo
		Escribir 'Ingrese el valor para la variable b'
		Leer b
		Escribir 'Ingrese el valor para la variable c'
		Leer c
		subradical <- b * b - 4 * a * c
		si subradical < 0 Entonces
			resultado <- 'Error: Expresión subradical no puede ser negativa'
		SiNo
			x1 <- (-b + RC(subradical))/(2*a)
			x2 <- (-b - RC(subradical))/(2*a)
			resultado <- 'Resultado x1:'  + ConvertirATexto(x1) + ', Resultado x2:' + ConvertirATexto(x2)
			//resultado <- Concatenar('Resultado x1:',ConvertirATexto(x1),'Resultado x2:',ConvertirATexto(x2))
		FinSi
	FinSi
	Escribir resultado
	
FinAlgoritmo
