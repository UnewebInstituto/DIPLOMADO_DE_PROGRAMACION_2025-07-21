Algoritmo Ejemplo_Anidado_Mientras
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	Definir Resultado Como Entero
	
	
	multiplicando <- 0

	
		Repetir
			multiplicador <- 0
			escribir 'Tabla de multiplicar del' + ConvertirATexto(multiplicando)
			Repetir
				
			
		Resultado <- multiplicando * multiplicador
		Escribir ConvertirATexto(multiplicando) + ' x ' ConvertirATexto(multiplicador) + ' = ' + ConvertirATexto(Resultado)
		multiplicador <- multiplicando + 1
		Hasta Que multiplicador < 10 
		Hasta que multiplicando < 10
FinAlgoritmo
