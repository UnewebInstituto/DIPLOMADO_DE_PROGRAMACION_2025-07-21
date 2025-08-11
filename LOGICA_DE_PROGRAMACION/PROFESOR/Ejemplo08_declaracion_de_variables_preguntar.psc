Algoritmo Ejemplo08_declaracion_de_variables_preguntar
	// Declaración de variables
	Definir nombre Como Cadena
	Definir edad Como Real
	Definir es_estudiante Como Lógico
	Definir sexo Como Cadena
	Definir estatura Como Real
	Definir actividad Como Entero
	Definir continuar Como Cadena
	// Formas de identificar variables
	// 1-Notación camelcase: todo escrito en minúscula
	// excepto las letras iniciales de cada palabra
	// que conforma el nombre de variable. Por
	// ejemplo: primerNombre, segundoNombre
	// 2-Notacion snakecase: todo escrito en minúscula
	// y las palabras que conforman el nombre
	// separadas por guión bajo. Por ejemplo:
	// primer_nombre, segundo_nombre
	// Inicialización de las variables
	nombre <- ''
	edad <- 0
	actividad <- 1
	es_estudiante <- Falso
	sexo <- 'F'
	estatura <- 0
	continuar <- 'S'
	Mientras Mayusculas(continuar)='S' Hacer
		Limpiar Pantalla
		// Entradas de datos (lectura estándar)
		Escribir 'Ejemplo08 Declaración de variables PREGUNTAR'
		Escribir 'Por favor ingrese los siguientes datos:'
		Escribir 'NOMBRE:'
		Leer nombre
		Escribir 'EDAD:'
		Leer edad
		Escribir 'ESTATURA (decimales separados por .)'
		Leer estatura
		Escribir 'ACTIVIDAD (1:No Estudia 2:Si Estudia)'
		Leer actividad
		Escribir 'SEXO (F:Femenino M:Masculino)'
		Leer sexo
		// Proceso principal
		Si actividad=2 Entonces
			es_estudiante <- Verdadero
		FinSi
		// Salida de resultados
		Escribir 'Datos ingresados a través del teclado'
		Escribir nombre
		Escribir edad
		Escribir estatura
		// Escribir actividad
		Si es_estudiante=Verdadero Entonces
			Escribir 'SI ESTUDIA'
		SiNo
			Escribir 'NO ESTUDIA'
		FinSi
		// Escribir sexo
		Si sexo='F' Entonces
			Escribir 'SEXO FEMENINO'
		FinSi
		Si sexo='M' Entonces
			Escribir 'SEXO MASCULINO'
		FinSi
		Si  NO (sexo='F' O sexo='M') Entonces
			Escribir 'ERROR: Debe ingresar F: para femenino o M: para masculino'
		FinSi
		Escribir '¿Usted desea repetir el proceso (S/N):?'
		Leer continuar
	FinMientras
FinAlgoritmo
