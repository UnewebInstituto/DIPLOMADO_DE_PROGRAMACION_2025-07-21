Algoritmo Ejemplo03_Seleccion_Multiple
	// Declaracion de Variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	Definir continuar Como Caracter
	// Inicializar las variables
	lenguaje <- ''
	mensaje <- ''
	continuar <- 'S'
	// Entrda de datos (Lectura estandar)
	Escribir 'Ejemplo02 Condicional Multiple'
	Escribir 'Por favor indique cual de los siguientes'
	Escribir 'lenguajes de programacion es su preferido:'
	Escribir '1- Phyton'
	Escribir '2- JavaScript'
	Escribir '3- C#'
	Escribir '4- Java'
	Escribir '5- PHP'
	Escribir '6- Otros'
	Leer lenguaje
	// Nueva
	Mientras continuar = 's' o continuar ='S' Hacer
	Según lenguaje Hacer
		'1':
			mensaje <- 'Usted selecciono Phyton, le  gusta los lenguajes'
			mensaje <- mensaje+' de programacion modernos.'
		'2':
			mensaje <- 'Usted selecciono JavaScript, seguro le gustan'
			mensaje <- mensaje+' los retos en el front/end.'
		'3':
			mensaje <- 'Usted selecciono C#, entonces estamos en'
			mensaje <- mensaje+' presencia de un programador'
			mensaje <- mensaje+' que sabe de arquitectura del computador.'
		'4':
			mensaje <- 'Usted selecciono Java, hablamos entonces'
			mensaje <- mensaje+' de alguien que maneja muy'
			mensaje <- mensaje+' programacion orientada a objetos.'
		'5':
			mensaje <- 'Usted selecciono PHP, entonces le'
			mensaje <- mensaje+' gusta la programacion web.'
		'6':
			mensaje <- 'Usted prefiere Otros.'
		De Otro Modo:
			mensaje <- 'Usted selecciono una opcion'
			mensaje <- mensaje+' no valida.'
	FinSegún
Escribir mensaje
Escribir '¿Desea efectuar otro calculo (S/N)'
Leer continuar
FinMientras
FinAlgoritmo
