Algoritmo Ejemplo03_Seleccion_Multiple
	//Declaraci�n de Variables
	Definir mensaje Como Caracter
	Definir lenguaje Como Caracter
	//Inicializar Variables
	mensaje <- ''
	lenguaje <- ''
	//Entrada de Datos (lectura estandar)
	Escribir 'Ejemplo02 Condicional Multiple'
	Escribir 'Por favor indique cual de los siguientes'
	Escribir 'lenguajes de programaci�n es su preferido:'
	Escribir '1- Python'
	Escribir '2- JavaScript'
	Escribir '3- C#'
	Escribir '4- Java'
	Escribir '5- PHP'
	Escribir '6- Otro'
	Leer lenguaje
	
	//Forma nueva
	Segun lenguaje Hacer
		'1': 
			mensaje <- 'Usted seleccion� Python, le gustan los lenguajes de'
			mensaje <- mensaje + ' programacion modernos'
		'2':
			mensaje <- 'Usted seleccion� JavaScript, seguro le gustan '
			mensaje <- mensaje + 'los retos en el front/end'
		'3':
			mensaje <- 'Usted seleccion� C#, estamos en presencia de'
			mensaje <- mensaje + ' un programador que sabe de la'
			mensaje <- mensaje + ' arquitectura de un computador'
		'4':
			mensaje <- 'Usted seleccion� Java, le gusta Minecraft,'
			mensaje <- mensaje + ' entonces manejas muy bien la programaci�n'
			mensaje <- mensaje + ' orientada a los objetos'
		'5':
			mensaje <- 'Usted seleccion� PHP, entonces prefiere trabajar'
			mensaje <- mensaje + ' con BBDD y la programaci�n web'
		'6':
			mensaje <- 'Veo que le gusta la variedad, o no sabe decidirse'
		 De Otro Modo:
			 mensaje <- 'Opci�n no v�lida. '
			 mensaje <- mensaje + 'Elija un lenguaje entre las opciones dadas'
	FinSegun
	//Salida del Proceso 
	Escribir mensaje
FinAlgoritmo
