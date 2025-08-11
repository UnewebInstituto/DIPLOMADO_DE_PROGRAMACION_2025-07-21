Algoritmo Ejemplo01_declaracion_de_variables
	// Declaraci�n de variables
	Definir nombre Como Caracter
	Definir edad Como numero
	Definir es_estudiante Como Logico
	Definir sexo Como Caracter
	Definir estatura Como Real
	Definir actividad Como Entero
	// Formas de identificar variables
	// 1-Notaci�n camelcase: todo escrito en min�scula
	// excepto las letras iniciales de cada palabra
	// que conforma el nombre de variable. Por 
	// ejemplo: primerNombre, segundoNombre
	// 2-Notacion snakecase: todo escrito en min�scula
	// y las palabras que conforman el nombre 
	// separadas por gui�n bajo. Por ejemplo:
	// primer_nombre, segundo_nombre
	
	// Inicializaci�n de las variables
	nombre <- ''
	edad <- 0
	actividad <- 1
	es_estudiante <- Falso
	sexo <- 'F'
	estatura <- 0
	
	// Entradas de datos (lectura est�ndar)
	Escribir 'Ejemplo01 Declaraci�n de variables'
	Escribir 'Por favor ingrese los siguientes datos:'
	Escribir 'NOMBRE:'
	Leer nombre
	Escribir 'EDAD:'
	Leer edad
	Escribir 'ESTATURA (decimales separados por .)'
	Leer estatura
	Escribir 'ACTIVIDAD (1:No Estudia 2:Si Estudia)'
	leer actividad
	Escribir 'SEXO (F:Femenino M:Masculino)'
	Leer sexo
	
	// Proceso principal
	si actividad = 2 Entonces
		es_estudiante <- Verdadero
	FinSi
	
	// Salida de resultados
	Escribir 'Datos ingresados a trav�s del teclado'
	Escribir nombre
	Escribir edad
	Escribir estatura
	//Escribir actividad
	Si es_estudiante = Verdadero Entonces
		Escribir 'SI ESTUDIA'
	SiNo
		Escribir 'NO ESTUDIA'
	FinSi
	//Escribir sexo
	si sexo = 'F' Entonces
		Escribir 'SEXO FEMENINO'
	FinSi
	si sexo = 'M' Entonces
		Escribir 'SEXO MASCULINO'
	FinSi
	Si no(sexo = 'F' o sexo = 'M') Entonces
		Escribir 'ERROR: Debe ingresar F: para femenino o M: para masculino'
	Finsi
FinAlgoritmo
