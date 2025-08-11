//Declaracion de la Funcion 
Funcion validarUsuario <- verificarUsuario(arg_usuario,arg_clave)
	Definir usuarioRegistrado Como Caracter
	Definir claveRegistrada Como Caracter
	Definir validarUsuario Como Logico
	usuarioRegistrado <- 'MIUSUARIO'
	claveRegistrada <- 'MiClave'
	validarUsuario <- Falso 
	si Mayusculas(arg_usuario) = usuarioRegistrado y arg_clave = claveRegistrada Entonces
		validarUsuario <- Verdadero
	SiNo 
		validarUsuario <- Falso 
	FinSi
FinFuncion
//Declaracion del Cuerpo Principal del Programa
Algoritmo Ejemplo24_Programacion_Modular_Usuario 
	Definir usuario Como Caracter
	Definir clave Como Caracter
	Definir intentos Como Entero
	Definir continuar Como Caracter
	continuar <-  'S'
	intentos <- 0
	Repetir 
		
		Escribir 'Ingrese Sus Credenciales para acceder al Sistema: ' 
		Escribir 'Ingrese el Usuario: '
		leer usuario
		Escribir 'Ingrese Clave: '
		leer clave 
		Limpiar Pantalla
		si verificarUsuario(usuario, clave) = Verdadero entonces 
			Escribir '*** Bienvenido al Sistema ***'
			continuar <- 'N'
		SiNo
			intentos <- intentos + 1
			Escribir '*** Acceso no permitido ***'
			Escribir '*** Intento numero ' , intentos , ' ***'
			si intentos > 3 Entonces 
				continuar <- 'N'
				Escribir '*** Se exceio numero de intentos ***'
			FinSi
		FinSi

	Hasta Que Mayusculas(continuar) <> 'S'
	//Hasta Que verificarUsuario(usuario, clave) = Verdadero o intentos > 3

FinAlgoritmo
