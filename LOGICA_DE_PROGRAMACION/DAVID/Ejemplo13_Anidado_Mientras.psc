Algoritmo Ejemplo13_Anidado_Mientras
	// Declaración de variables
	Definir Multiplicando Como Entero
	Definir Multiplicador Como Entero
	Definir resultado Como Entero
	// Inicialización, proceso y salida
	Multiplicando <- 0
	Mientras Multiplicando < 11 Hacer
		Multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(Multiplicando)
		Mientras Multiplicador < 11 Hacer
			resultado <- Multiplicando *  Multiplicador
			//escribir ConvertirATexto(Multiplicando) + ' x ' ConvertirATexto(Multiplicador) + ' = ' + ConvertirATexto(resultado)
			escribir Multiplicando , ' x ' Multiplicador , ' = ' , resultado
			Multiplicador <- Multiplicador + 1
		FinMientras
		Multiplicando <- Multiplicando + 1
	FinMientras
FinAlgoritmo

//La linea 13 y 14 son dos formas de hacer que los resultados de la tabla se escriban, terminaran siendo lo mismo uses uno o otro
