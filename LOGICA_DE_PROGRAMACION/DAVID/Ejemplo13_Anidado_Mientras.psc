Algoritmo Ejemplo13_Anidado_Mientras
	// Declaración de variables
	Definir Multiplicando Como Entero
	Definir Multiplicador Como Entero
	Definir resultado Como Entero
	// Inicialización, proceso y salida
	Multiplicando <- 0
	Mientras Multiplicando < 10 Hacer
		Multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(Multiplicando)
		Mientras Multiplicador < 10 Hacer
			resultado <- Multiplicando *  Multiplicador
			escribir ConvertirATexto(Multiplicando) + ' x ' ConvertirATexto(Multiplicador) + ' = ' + ConvertirATexto(resultado)
			Multiplicador <- Multiplicador + 1
		FinMientras
		Multiplicando <- Multiplicando + 1
	FinMientras
FinAlgoritmo
