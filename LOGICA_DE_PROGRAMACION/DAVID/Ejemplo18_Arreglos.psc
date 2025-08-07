Algoritmo Ejemplo18_Arreglos
	// Declaracion de variables
	Dimensionar Alumnos[4] 
	Definir i Como Entero
	Definir n Como Entero
	// Inicializacion del arreglo
	Alumnos[1] <- 'Marianny'
	Alumnos[2] <- 'Reinaldo'
	Alumnos[3] <- 'David'
	Alumnos[4] <- 'Henry'
	// Recorrido del contenido del arreglo
	Repetir
		Limpiar Pantalla
		Escribir 'Ejemplo 18 Arreglos'
		Escribir 'Lista de Estudiantes del curso de Lógica de Programación'
		Escribir 'Ingrese el numero del estudiante'
		Leer n
		Para i <- 1 Hasta 1 Hacer
			Escribir Alumnos[n]
		FinPara
		Repetir
			Escribir '¿Usted desea repetir el proceso? (S/N)'
			Leer continuar
			Si Mayusculas(continuar) <> 'S' o Mayusculas(continuar) <> 'N'
				Escribir 'Error: Debe escribir S o N'
			FinSi
		Hasta Que Mayusculas(continuar) = 'S' o Mayusculas(continuar)= 'N'
	Hasta Que no Mayusculas(continuar) = 'S'
FinAlgoritmo
