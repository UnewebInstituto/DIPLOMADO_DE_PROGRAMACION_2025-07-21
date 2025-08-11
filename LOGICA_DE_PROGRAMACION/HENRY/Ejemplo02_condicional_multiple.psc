Algoritmo Ejemplo02_conidcional_multiple
	//declaracion de variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	//inicializar variables
	mensaje <- ''
	lenguaje <- ''
	// entrada de datos (Lectura estandar) 
	Escribir 'Ejemplo02 condicional multiple' 
	Escribir ' Porfavor indique cual de los siguientes lenguajes de programacion es su preferido'
	Escribir '1-Python'
	Escribir '2-Java script'
	Escribir '3-C#'
	Escribir '4-PHP'
	Escribir '5-Java'
	Escribir '6-Otro'
	Leer lenguaje
	si lenguaje = '1' Entonces
		mensaje <- 'Ud seleccciono python'
	SiNo
		si lenguaje = '2' Entonces
			mensaje <- 'Usted selecciono Javascript'
		SiNo
			si lenguaje = '3' Entonces
				mensaje <- 'Usted selecciono C#'
			SiNo
				si lenguaje = '4' Entonces
					mensaje <- 'Usted selecciono PHP' 
				SiNo
					si lenguaje = '5' Entonces
						mensaje <- 'Usted selecciono Java'
					SiNo
						si lenguaje = '6' Entonces
							mensaje <- ' usted prefiere otro lenguaje'
						SiNo
							mensaje <-' Usted selecciono una opcion no valida'
						FinSi
					FinSi
				FinSi	
			FinSi
		FinSi
	FinSi
	// Salida de procesos 
	Escribir mensaje
	

	
FinAlgoritmo
