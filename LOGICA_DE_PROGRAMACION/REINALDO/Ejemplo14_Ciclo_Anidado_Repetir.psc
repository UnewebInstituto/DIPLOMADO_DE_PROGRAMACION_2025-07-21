Algoritmo Ejemplo14_anidado_repetir
	// Declaración de variables
	Definir multiplicando Como Entero
	Definir multiplicador Como Entero
	Definir resultado Como Entero
	Definir continuar Como Caracter
	// Inicialización, proceso y salida
	multiplicando <- 0
	continuar <- 'S'
	Mientras Mayusculas(continuar) = 'S' o continuar = 's' Hacer
	Escribir 'Elige la tabla de multiplicar que deseas ver'
	Leer multiplicando 
	//Repetir 
		multiplicador <- 0
		escribir 'Tabla de multiplicar del ' + ConvertirATexto(multiplicando)
		Repetir
		//Mientras multiplicador < 10 Hacer
			resultado <- multiplicando *  multiplicador
			//escribir ConvertirATexto(multiplicando) + ' x ' ConvertirATexto(multiplicador) + ' = ' + ConvertirATexto(resultado)
			escribir multiplicando , ' x ' , multiplicador , ' x ' , ' = ' , resultado
			multiplicador <- multiplicador + 1
		Hasta Que no(multiplicador < 11)
		//FinMientras
		multiplicando <- multiplicando + 1
		//FinMientras
		//Hasta Que no (multiplicando < 10)
		Repetir 
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'ERROR, debe ingresar S o N'
			FinSi
			Escribir 'Desea Repetir el Proceso con otros valores? (S/N)'
			Leer continuar 
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	FinMientras
FinAlgoritmo
