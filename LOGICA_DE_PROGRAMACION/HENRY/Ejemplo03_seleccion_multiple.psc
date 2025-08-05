Algoritmo Ejemplo03_seleccion_multiple
	//declaracion de variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	//inicializar variables
	mensaje <- ''
	lenguaje <- ''
	// entrada de datos (Lectura estandar) 
	Escribir 'Ejemplo03 seleccion multiple' 
	Escribir ' Porfavor indique cual de los siguientes lenguajes de programacion es su preferido'
	Escribir '1-Python'
	Escribir '2-Java script'
	Escribir '3-C#'
	Escribir '4-PHP'
	Escribir '5-Java'
	Escribir '6-Otro'
	Leer lenguaje
	// Nueva
	Segun lenguaje Hacer
		'1':
			mensaje <- 'Ud seleccciono python'
		'2':
			mensaje <- 'Ud seleccciono Javascript'
		'3':
			mensaje <- 'Ud selecciono C#'
		'4':
			mensaje <- 'Ud seleccciono Java'
		'5':
			mensaje <- 'Ud seleccciono PHP'
		'6':
			mensaje <- 'Ud prefiere otro lenguaje' 
		De Otro Modo:
			mensaje <- ' Usted selecciono una opcion no valida' 
	FinSegun
	Escribir mensaje
FinAlgoritmo
