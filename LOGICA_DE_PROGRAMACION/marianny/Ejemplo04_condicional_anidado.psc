Algoritmo Ejemplo04_condicional_anidado
	//Declaracion de variable
	Definir x1 Como Real
	Definir x2 Como Real
	Definir a como Real
	Definir b Como Real
	Definir c Como Real
	Definir sub_radical Como Real
	Definir resultado Como Caracter
	//Inicializacion de variables
	x1<-0
	x2<-0
	a<-0
	b<-0
	c<-0
	sub_radical<-0
	resultado<-''
	//
	Escribir'Ejemplo04 condicional anidado(resolvente)'
	Escribir 'Ingrese valor para variable a:'
	leer a
	si a=0 Entonces
		resultado<-'ERROR:valor de a, debe ser diferente de 0.'
	SiNo
		Escribir 'Ingrese valor para la variable b:'
		Leer b
		Escribir 'Ingrese valor para la variable c:'
		Leer c
		sub_radical <- b * b - 4 * a * c
		si sub_radical<0 Entonces
			resultado<- 'ERROR:Expresion subradical, no puede ser negativa'
		sino
			x1<- (-b + RC(sub_radical)) / (2 * a)
			x2<- (-b - RC(sub_radical)) / (2 * a)
			//resultado<- concatenar('RESULTADOx1:',convertiratexto(x1).RESULTADOx2:',convertiratexto(x2)
			resultado <- 'RESULTADO x1:' + ConvertirATexto(x1) + ', RESULTADO x2:' + ConvertirATexto(x2)
		FinSi
		
	FinSi
	Escribir resultado
	
	
FinAlgoritmo
