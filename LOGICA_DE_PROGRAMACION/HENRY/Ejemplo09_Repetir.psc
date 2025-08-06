Algoritmo Ejemplo09_Repetir
	//Declaracion de variables 
	Definir i Como Entero // Control 
	Definir n Como Entero // variable fin de ciclo 
	Definir continuar Como Caracter
	//Inicializacion de variables 
	continuar<- 'S'
	
	
	Mientras Mayusculas(continuar)= 'S' Hacer
		Limpiar Pantalla
		Escribir 'Ejemplo09 ciclo repetir'
		Escribir 'Cuantas iterraciones desea realizar' 
		Leer n 
		i<- 0
		Repetir
			Escribir i
			i<- i+1
		Hasta Que i>=n
		Escribir 'Usted desea repetir el proceso (S/N):?'
		Leer continuar
	FinMientras
	Escribir 'Fin....'
FinAlgoritmo
