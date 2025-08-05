Algoritmo Ejemplo02_condicional_multiple
	// Declaración de variables
	Definir mensaje Como Cadena
	Definir lenguaje Como Cadena
	// Inicializar las variables
	mensaje <- ''
	lenguaje <- ''
	// Entrada de datos (lectura estándar)
	Escribir 'Ejemplo02 Condicional Múltiple'
	Escribir 'Por favor indique cuál de los siguientes'
	Escribir 'lenguajes de programación es su preferido:'
	Escribir '1- Python'
	Escribir '2- Javascript'
	Escribir '3- C#'
	Escribir '4- Java'
	Escribir '5- PHP'
	Escribir '6- Otro'
	Leer lenguaje
	Si lenguaje='1' Entonces
		mensaje <- 'Ud. selecciono Python, le gustan los lenguajes de'
		mensaje <- mensaje+' programación modernos.'
	SiNo
		Si lenguaje='2' Entonces
			mensaje <- 'Ud. selecciono Javascript, seguro le gustan '
			mensaje <- mensaje+'los retos en el front/end.'
		SiNo
			Si lenguaje='3' Entonces
				mensaje <- 'Ud. selecciono C#, entonces estamos en '
				mensaje <- mensaje+'presencia de un programador '
				mensaje <- mensaje+' que sabe de arquitectura del '
				mensaje <- mensaje+' computador.'
			SiNo
				Si lenguaje='4' Entonces
					mensaje <- 'Ud. selecciono Java, hablamos entonces'
					mensaje <- mensaje+' de alguien que maneja muy'
					mensaje <- mensaje+' bien programación orientada a '
					mensaje <- mensaje+' objetos.'
				SiNo
					Si lenguaje='5' Entonces
						mensaje <- 'Ud. selecciono PHP, entonces le '
						mensaje <- mensaje+'gusta la programación web.'
					SiNo
						Si lenguaje='6' Entonces
							mensaje <- 'Ud. prefiere otro lenguaje.'
						SiNo
							mensaje <- 'Ud. selecciono una opción no '
							mensaje <- 'valida.'
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	// Salida
	Escribir mensaje
FinAlgoritmo
