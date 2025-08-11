Algoritmo Ejemplo11_Serie_Fibonacci_Repetir
	
	//Declaracion de Variables
	
	Definir i Como Entero //Variable de Control
	Definir n Como Entero  //Variable de Fin de Ciclo 
	Definir suma Como Entero 
	Definir n1 Como Entero //Primer Numero
	Definir n2 Como Entero //Segundo numero 
	Definir continuar Como Caracter
	Definir Control Como Logico
	//Inicializacion de Variables 
	n <- 0
	continuar <- 'S'
	
	Mientras Mayusculas(continuar) = 'S' o continuar = 's' Hacer
		Limpiar Pantalla 
		Escribir 'Ingrese el Numero de Elementos en la Serie'
		leer n
		i <- 2
		suma <- 0
		n1 <- 1
		Escribir n1
		n2 <- 1
		Escribir n2
			//Repetir 
				Mientras i <= n Hacer
				suma <- n1 + n2
				Escribir suma
				n1 <- n2
				n2 <- suma 
				i <- i + 1
				FinMientras 
			//Hasta Que i >= n
				//Repetir 
				control <- verdadero 
				Mientras control Hacer
					Escribir 'Desea Repetir el Proceso con otros valores? (S/N)'
				leer continuar 	
				Si Mayusculas(continuar) <> 'S' y Mayusculas(continuar) <> 'N' Entonces
					Escribir 'ERROR, debe ingresar S o N'
					control <- Verdadero
				SiNo
					 control <- Falso
				FinSi
			
		FinMientras
		FinMientras
		
		//Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar) = 'N'
	
	
	
FinAlgoritmo
