Algoritmo Ejemplo14_anidado_repetir
	// Declaración de variables
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	Definir resultado Como Entero
	// Inicialización, proceso y salida
	multiplicando <- 0
	//Mientras multiplicando < 10 Hacer
	Repetir
		multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(multiplicando)
		//Mientras multiplicador < 10 Hacer
		Repetir
			resultado <- multiplicando *  multiplicador
			//escribir ConvertirATexto(multiplicando) + ' x ' ConvertirATexto(multiplicador) + ' = 
			escribir multiplicando, ' x' , mulpliplicador , ' = ' , resultado
			multiplicador <- multiplicador + 1
			//FinMientras
		Hasta Que multiplicador >= 10
		multiplicando <- multiplicando + 1
		//FinMientras
	Hasta Que multiplicando >= 10
FinAlgoritmo
