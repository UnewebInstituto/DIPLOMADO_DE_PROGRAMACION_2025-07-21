Algoritmo Ejemplo07_condicional_anidado_pregunta
	// Declaraci�n de variables
	Definir x1 Como Real
	Definir x2 Como Real
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir sub_radical Como Real
	Definir resultado Como Caracter
	Definir continuar Como Caracter
	// Inicializaci�n de variables
	x1 <- 0
	x2 <- 0
	a <- 0
	b <- 0
	c <- 0
	sub_radical <- 0
	resultado <- ''
	continuar <- 'S'
	// 
	Mientras continuar = 'S' o continuar = 's' Hacer
		Escribir 'Ejemplo07 Condicional anidado (Resolvente) PREGUNTA'
		Escribir 'Ingrese valor para la variable a:'
		Leer a
		si a = 0 Entonces
			resultado <- 'ERROR: El valor de a, debe ser diferente de 0.'
		SiNo
			Escribir 'Ingrese valor para la variable b:'
			Leer b
			Escribir 'Ingrese valor para la variable c:'
			Leer c
			sub_radical <- b * b - 4 * a * c
			si sub_radical < 0 Entonces
				resultado <- 'ERROR: Expresi�n subradical, no puede ser negativa.'
			SiNo
				x1 <- (-b + RC(sub_radical))/(2*a)
				x2 <- (-b - RC(sub_radical))/(2*a)
				resultado <- 'RESULTADO x1:' + ConvertirATexto(x1) + ', RESULTADO x2:' + ConvertirATexto(x2)
				//resultado <- Concatenar('RESULTADO x1:',ConvertirATexto(x1),'RESULTADO x2:',ConvertirATexto(x2))
			FinSi
		FinSi
		Escribir resultado
		Escribir '�Desea efectuar otro c�lculo (S/N)?'
		Leer continuar
	FinMientras

FinAlgoritmo
