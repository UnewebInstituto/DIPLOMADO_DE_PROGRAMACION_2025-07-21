Algoritmo Ejemplo13_Ciclo_anidado
	Definir multiplicando como entero 
	Definir Multiplicador como entero 
	Definir Resultado Como Entero
	multiplicando<-0
	mientras multiplicando<10 Hacer
		multiplicador<-0
		Escribir 'Tabla de Multiplicar de ' +  ConvertirATexto(multiplicando)
		Mientras multiplicador<10 Hacer
			Resultado <- multiplicando*multiplicador
			Escribir ConvertirATexto(multiplicando)+ 'x' ConvertirATexto(multiplicador) + '=' ConvertirATexto(Resultado)
			multiplicador<-multiplicador+1
		FinMientras
		multiplicando<- multiplicando+1
	FinMientras
FinAlgoritmo
