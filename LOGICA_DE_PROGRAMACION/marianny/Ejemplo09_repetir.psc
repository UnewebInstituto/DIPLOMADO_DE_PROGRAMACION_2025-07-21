Algoritmo Ejemplo09_Repetir
	//Declaracion de variables
	Definir i Como Entero // variable control
	Definir n Como Entero // variable control
	Definir continuar Como Caracter
	// Inicializacion de variable
	continuar <- 'S'
	Mientras Mayusculas(continuar) = 'S' Hacer
		Limpiar Pantalla
		Escribir 'Ejemplo09 ciclo Repetir'
		Escribir ' ?Cuantas iteraciones desea realizar?'
		Leer n
		i<- 0
		Repetir
			Escribir i
			i <- i + 1
			
		Hasta Que i >=n
		Escribir '¿Usted desea repetir el proceso (S/N):?'		
		Leer continuar
	FinMientras
	Escribir 'Fin...'	
FinAlgoritmo
