Algoritmo Ejemplo17_Tabla_de_multiplicar_para
	//Declaracion de variables
	Definir multiplicador Como Entero
	Definir multiplicando Como Entero
	Definir resultado Como Entero
	Para multiplicando<- 0 hasta 9 Hacer
		Escribir 'Tabla del:', multiplicando
		Para multiplicador <- 0 Hasta  9 Hacer
			resultado<-multiplicando*multiplicador 
			Escribir multiplicando, 'X', multiplicador,'=', resultado
		FinPara
	FinPara
FinAlgoritmo
