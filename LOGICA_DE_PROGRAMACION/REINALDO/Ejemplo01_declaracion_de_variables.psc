Algoritmo Ejemplo01_declaracion_de_variables
	Definir nombre Como Caracter
	Definir edad Como Entero
	Definir es_estudiante Como Logico
	Definir sexo Como Caracter
	Definir estatura Como Real
	Definir actividad Como Entero
	// Formas de identificar variables
	// 1-Notación camelcase: todo escrito en minuscula 
	// excepto las letras iniciales de cada palabra 
	// que conforma el nombre de la variable
	// Por ejemplo: primerNombre., segundoNombre
	// 2-Notacion snakecase: todo escrito en minuscula
	// y las palabras que conforman el nombre separadas por guión bajo, Por ejemplo:
	// primer_nombre, segundo_nombre
	//Inicialización de las variables
	
	nombre <- ''
	edad <- 0
	es_estudiante <- Falso
	actividad <- 1
	sexo <- 'Fals'
	estatura <- 0
	
	//Entradas de edatos (lectura est[andar) 
	Escribir 'Ejemplo1 Declaracion de variables'
	Escribir 'Porfavor ingrese los siguientes datos'
	Escribir "NOMBRE:'
	Leer nombre
	Escribir  'EDAD:'
	Leer edad
	Escribir 'Estatura (decimales separadospor .)'
	Leer estatura
	Escribir 'ACTIVIDAD (1:No Estudia 2:Si estudia)'
	Leer actividad
	Escribir 'SEXO (F: Femenino M:Masculino)'
	Leer sexo
	//Proceso principal
	si actividad = 2 Entonces 
		es_estudiante <- Verdadero
	FinSi
	
	// Salida de resultados
	Escribir 'Datos ingresados a traves del teclado'
	Escribir nombre
	Escribir edad
	Escribir estatura
	//Escribir actividad
	Si es_estudiante = Verdadero Entonces
		Escribir 'Si estudia'
	SiNo 
		Escribir 'No estudia'
	FinSi
	//Escribir sexo
	Si sexo = 'F' Entonces
		Escribir 'SEXO FEMENINO'
	FinSi
	Si sexo = 'M' Entonces
		Escribir 'SEXO MASCULINO'
	FinSi
	si no(sexo = 'F'  o sexo = 'M') Entonces
		Escribir 'ERROR: Debe ingresar F: para femenino o+ M: para masculino'
	FinSi
	
FinAlgoritmo
