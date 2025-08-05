Algoritmo Ejemplo03_seleccion_multiple
	// Declaración de variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	// Inicializar las variables
	mensaje <- ''
	lenguaje <- ''
	// Entrada de datos (lectura estándar)
	Escribir 'Ejemplo03 Selección Múltiple'
	Escribir 'Por favor indique cuál de los siguientes'
	Escribir 'lenguajes de programación es su preferido:'
	Escribir '1- Python'
	Escribir '2- Javascript'
	Escribir '3- C#'
	Escribir '4- Java'
	Escribir '5- PHP'
	Escribir '6- Otro'
	Leer lenguaje
	// Nueva
	Segun lenguaje Hacer
		'1':
			mensaje <- 'Ud. selecciono Python, le gustan los lenguajes de'
			mensaje <- mensaje+' programación modernos.'
		'2':
			mensaje <- 'Ud. selecciono Javascript, seguro le gustan '
			mensaje <- mensaje+'los retos en el front/end.'
		'3':
			mensaje <- 'Ud. selecciono C#, entonces estamos en '
			mensaje <- mensaje+'presencia de un programador '
			mensaje <- mensaje+' que sabe de arquitectura del '
			mensaje <- mensaje+' computador.'
		'4':
			mensaje <- 'Ud. selecciono Java, hablamos entonces'
			mensaje <- mensaje+' de alguien que maneja muy'
			mensaje <- mensaje+' bien programación orientada a '
			mensaje <- mensaje+' objetos.'
		'5':
			mensaje <- 'Ud. selecciono PHP, entonces le '
			mensaje <- mensaje+'gusta la programación web.'
		'6':
			mensaje <- 'Ud. prefiere otro lenguaje.'
		De Otro Modo:
			mensaje <- 'Ud. selecciono una opción no '
			mensaje <- 'valida.'
	FinSegun
	// Salida
	Escribir mensaje
FinAlgoritmo
