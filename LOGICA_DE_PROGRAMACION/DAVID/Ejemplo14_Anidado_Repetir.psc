Algoritmo Ejemplo14_Anidado_Mientras
	// Declaraci�n de variables
	Definir Multiplicando Como Entero
	Definir Multiplicador Como Entero
	Definir resultado Como Entero
	// Inicializaci�n, proceso y salida
	Multiplicando <- 0
	Repetir
		Multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(Multiplicando)
		Repetir
			resultado <- Multiplicando *  Multiplicador
			escribir ConvertirATexto(Multiplicando) + ' x ' ConvertirATexto(Multiplicador) + ' = ' + ConvertirATexto(resultado)
			Multiplicador <- Multiplicador + 1
		Hasta Que No (Multiplicador < 11)
		Multiplicando <- Multiplicando + 1
	Hasta Que No (Multiplicando < 11)
FinAlgoritmo

