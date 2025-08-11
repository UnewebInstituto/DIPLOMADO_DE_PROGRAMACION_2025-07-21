Algoritmo Ejemplo02_Condicional_Multiple
	
	//Declaracion de Variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	
	//Inicializar las variables
	lenguaje <- ''
	mensaje <- ''
	
	//Entrada de datos (Lectura estandar)
	Escribir 'Ejemplo02 Condicional Multiple'
	Escribir 'Por favor indique cual de los siguientes'
	Escribir 'lenguajes de programacion es su preferido:'
	Escribir '1- Python'
	Escribir '2- JavaScript'
	Escribir '3- C#'
	Escribir '4- Java'
	Escribir '5- PHP'
	Escribir '6- Otros'
	leer lenguaje
	
	si lenguaje = '1' Entonces
		mensaje <- 'Usted selecciono Phyton, le  gusta los lenguajes'
		mensaje <- mensaje + ' de programacion modernos.'
	SiNo
		si lenguaje = '2' Entonces
			mensaje <- 'Usted selecciono JavaScript, seguro le gustan'
			mensaje <- mensaje + ' los retos en el front/end.'
		SiNo
			si lenguaje = '3' Entonces
				mensaje <- 'Usted selecciono C#, entonces estamos en'
				mensaje <- mensaje + ' presencia de un programador'
				mensaje <- mensaje + ' que sabe de arquitectura del computador.'
			SiNo
				si lenguaje = '4' Entonces
					mensaje <- 'Usted selecciono Java, hablamos entonces'
					mensaje <- mensaje + ' de alguien que maneja muy'
					mensaje <- mensaje + ' programacion orientada a objetos.'
				SiNo
					si lenguaje = '5' Entonces
						mensaje <- 'Usted selecciono PHP, entonces le'
						mensaje <- mensaje + ' gusta la programacion web.'
						Sino
							si lenguaje = '6' Entonces
								mensaje <- 'Usted prefiere Otros.'
							SiNo
								mensaje <- 'Usted selecciono una opcion'
								mensaje <- mensaje + ' no valida.'
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		//Salida de Proceso 
		Escribir mensaje 
		
FinAlgoritmo
