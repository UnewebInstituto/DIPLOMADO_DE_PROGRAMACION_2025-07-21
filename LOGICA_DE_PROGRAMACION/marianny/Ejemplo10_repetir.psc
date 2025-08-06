Algoritmo Ejemplo10_Repetir
	//Declaracion de variables
	Definir i Como Entero // variable control
	Definir n Como Entero // variable control
	Definir continuar Como Caracter
	// Inicializacion de variable
	continuar <- 'S'
	Repetir 
		Limpiar Pantalla
		Escribir 'Ejemplo09 ciclo Repetir'
		Escribir '�Cuantas iteraciones desea realizar?'
		Leer n
		i<- 0
		Repetir
			Escribir i
			i <- i + 1
		Hasta Que i >= n
			Repetir
			Escribir '�Usted desea repetir el proceso (S/N):?'		
			Leer continuar
		        si Mayusculas(continuar) <> 'S'y Mayusculas(continuar) <> 'N' Entonces
					Escribir 'Error: Debe escribir S o N'
				FinSi
			Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
		Hasta Que no(Mayusculas(continuar) = 'S')
	Escribir 'Fin...'	
FinAlgoritmo
