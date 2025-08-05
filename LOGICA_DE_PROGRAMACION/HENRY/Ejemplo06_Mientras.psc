Algoritmo Ejemplo06_Mientras_pregunta
	//Declaracion de variables 
	Definir i como entero 
	definir n como entero
	definir error Como Caracter
	n<- 0
	i<- 0
	Escribir 'Escribir el numero de inerraciones n:' 
	si n<0 Entonces
		error <- ' No se pueden numeros menores que 0'
	
	SiNo
		leer n
	FinSi
	Mientras i<n Hacer
		Escribir i
		i <- i+1
	FinMientras
	si n>=0 Entonces
		Escribir 'Fin....'
	FinSi
	si n<0 Entonces
		Escribir 'No se pueden numeros menores que 0' 
	FinSi
	
	
FinAlgoritmo
