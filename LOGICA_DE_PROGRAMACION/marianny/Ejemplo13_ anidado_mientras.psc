Algoritmo Ejemplo13_anidado_mientras
	// Declaración de variables
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	Definir resultado Como Entero
	// Inicialización, proceso y salida
	multiplicando <- 0
	Mientras multiplicando < 10 Hacer
		multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(multiplicando)
		Mientras multiplicador < 10 Hacer
			resultado <- multiplicando *  multiplicador
			escribir ConvertirATexto(multiplicando) + ' x ' ConvertirATexto(multiplicador) + ' = ' + ConvertirATexto(resultado)
			multiplicador <- multiplicador + 1
		FinMientras
		multiplicando <- multiplicando + 1
	FinMientras
FinAlgoritmo
