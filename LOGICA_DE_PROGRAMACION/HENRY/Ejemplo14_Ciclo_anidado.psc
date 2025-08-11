Algoritmo Ejemplo13_Ciclo_anidado
	Definir multiplicando como entero 
	Definir Multiplicador como entero 
	Definir Resultado Como Entero
	multiplicando<-0
	//mientras multiplicando<10 Hacer
	Repetir
		multiplicador<- 0
		Escribir 'Tabla de multiplicar de:' + ConvertirATexto(multipicando)
	 
		Repetir
			resultado<- multiplicando*Multiplicador
			Escribir ConvertirATexto(multiplicando), 'x',Multiplicador, '=' resultado
			
		Hasta Que multiplicador>= 10
		multiplicando<- multipicando+1
	Hasta Que multiplicando>=10 
FinAlgoritmo
