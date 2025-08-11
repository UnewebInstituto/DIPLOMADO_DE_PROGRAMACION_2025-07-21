Algoritmo sin_titulo
		// Declaracion de variables
		Definir Nombre Como Caracter
		Definir Estatura Como Real
		Definir Edad Como Entero
		Definir es_estudiante Como Logico
		Definir sexo Como Caracter
		Definir Actividad Como Entero
		// Formas de identificar variables
		// Notacion camelcase: Todo escrito en minuscula epto las letras iniciales de cada palabra que conforma el nombre de la variable
		// ejemplo: primerNombre, segundoNombre 
		// Notacion snakecase: todo en minuscula y las palabras separadas por __ 
		// Ejemplo: primer_nombre , segundo_nombre
		
		// inicializacion de variables 
		Nombre <- ''
		Edad <- 0
		Actividad <- 1
		es_estudiante <- Falso
		sexo <-  'F'
		Estatura <- 0
		
		// Entradas de datos ( Lectura estandar)
		Escribir 'Ejemplo01 declaracion e variables'
		Escribir ' Porfavor ingrese los singuientes datos' 
		Escribir ' Nombre:'
		Leer Nombre
		Escribir ' Edad'
		Leer Edad
		Escribir ' Estatura ( Decimales separados por puntos) ' 
		Leer Estatura
		Escribir ' Actividad (1:Estudia 2:No Estudia)'
		Leer Actividad
		Escribir 'Sexo ( F: Femenino  M: Masculino)'
		Leer sexo
		
		// proceso princpial 
		si Actividad= 2 Entonces
			es_estudiante <- Verdadero
		FinSi
		
		// Salida de Resultados 
		Escribir 'Datos ingresados a traves del teclado' 
		Escribir Nombre
		Escribir Edad
		Escribir Estatura
		si es_estudiante =  Verdadero Entonces
			Escribir estudia
		SiNo
			Escribir 'No estudia'
		FinSi
		//Escribir sexo
		si sexo= 'F' Entonces
			Escribir 'Sexo femenino' 
			
		FinSi
		si sexo= 'M' Entonces
			Escribir 'Sexo Masculino' 
			
		FinSi
		si no (sexo = 'F' o sexo = 'M') Entonces
			Escribir 'Error: Debe ingresar F para femenino o M para masculino'
		FinSi
		
		//Escribir Actividad
		
		
		
		
		
		
FinAlgoritmo
