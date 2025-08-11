Algoritmo Ejemplo01_Declaracion_de_Variables
	// declaración de variables
	Definir nombre Como Caracter
	Definir edad como numero
	Definir Es_Estudiante Como Logico
	Definir Sexo Como Caracter
	Definir Estatura Como Real
	Definir Actividad Como Entero
	// Formas de identificar variables
	// 1-Notación camelcase: todo escrito en minúscula
	// excepto las letras iniciales de cada palabra
	// que conforma el nombre de variable. Por 
	// ejemplo: primerNombre, segundoNombre
	// 2-Notacion snakecase: todo escrito en minúscula
	// y las palabras que conforman el nombre 
	// separadas por guión bajo. Por ejemplo:
	// primer_nombre, segundo_nombre
	
	//Inicialización de las variables
	nombre <- ''
	edad <- 0
	actividad <- 1
	es_estudiante <- Falso
	sexo <- 'F'
	estatura <- 0
	
	//Entradas de datos (lectura estándar)
	Escribir 'Ejemplo01 Declaración de Variables'
	Escribir 'Por favor ingrese los siguientes datos'
	Escribir 'Nombre: '
	Leer nombre
	Escribir 'Edad: '
	Leer edad
	Escribir 'Estatura (decimales separados por .)'
	Leer estatura
	Escribir 'Actividad (1:No Estudia 2: Estudia) '
	Leer actividad
	Escribir 'Sexo (F: Femenino M: Masculino)'
	Leer sexo
	
	//Proceso principal
	si actividad = 2 Entonces
		es_estudiante <- Verdadero
	FinSi
	
	//Salida de resultados
	Escribir 'Datos ingresados a través del teclado'
	Escribir nombre
	Escribir edad
	Escribir estatura
	//Escribir actividad
	si es_estudiante = Verdadero Entonces
		Escribir 'Estudia'
	SiNo
		Escribir 'No Estudia'
	FinSi
	//Escribir sexo
	si sexo = F Entonces
		Escribir 'Sexo Femenino'
	FinSi
	si sexo = M Entonces
		Escribir 'Sexo Masculino'
	FinSi
	si no(sexo = 'F' o sexo = 'M') Entonces
		Escribir 'Error: Debe ingresar F para Femenino o M para Masculino'
	FinSi
	
FinAlgoritmo
