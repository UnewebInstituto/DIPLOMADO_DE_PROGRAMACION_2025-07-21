//Declaracion de la Funcion 
Funcion validarUsuario <- verificarUsuario(arg_usuario, arg_clave)
	Definir validarUsuario Como Logico
	Definir usuarioRegistrado Como Caracter
	Definir claveRegistrada Como Caracter
	usuarioRegistrado <- 'MIUSUARIO'
	claveRegistrada <- 'MiClave'
	validarUsuario <- Falso
	Si Mayusculas(arg_usuario) = usuarioRegistrado y arg_clave = claveRegistrada Entonces
		validarUsuario <- Verdadero
	SiNo
		validarUsuario <- Falso
	FinSi
FinFuncion

//Cuerpo principal
Algoritmo Ejemplo24_Programacion_Modular_LogIn
	Definir usuario Como Caracter
	Definir clave Como Caracter
	Definir intentos Como Entero
	Definir continuar Como Caracter
	continuar <- 'S'
	intentos <- 0
	Repetir
		Escribir 'Ingrese sus datos para acceder'
		Escribir '***Intento Numero: ', intentos, ' ***'
		Escribir 'Ingrese su Usuario:'
		Leer usuario
		Escribir 'Ingrese su contraseña:'
		Leer clave
		Limpiar Pantalla
		Si verificarUsuario(usuario,clave) = Verdadero Entonces
			Escribir '***Bienvenido al sistema***'
			continuar <- 'N'
		SiNo
			intentos <- intentos + 1
			Escribir '***Acceso denegado***'
			Si intentos > 2 Entonces
				continuar <- 'N'
				Escribir '***Se ha excedido el nimero de intentos***'
			FinSi
		FinSi
	Hasta Que Mayusculas(continuar) <> 'S'
FinAlgoritmo
