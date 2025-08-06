Algoritmo Ejemplo010_Repetir
	
	Definir i Como Entero //variable de control
	Definir n Como Entero // variable de fin de ciclo
	Definir continuar Como Caracter
	//Inicializacion de variables 
	continuar <- 'S'
	
	Repetir 
		
		Escribir 'Ejemplo09 Ciclo Repetir'
		Escribir '¿Cuantas iteraciones desea realizar?'
		Leer n
		i <- 0
		Repetir
			Escribir  i
			i <- i + 1
		Hasta Que i >= n
		Repetir
			Escribir '¿desea repetir el proceso S/N:?'
			Leer continuar 
			Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
				Escribir 'ERROR, debe ingresar S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	Hasta Que no (Mayusculas(continuar) = 'S')
	Escribir 'Fin...'
FinAlgoritmo
