// Declaración de la función
Funcion validarUsuario <- verificarUsuario(arg_usuario, arg_clave)
	Definir usuarioRegistrado Como Caracter
	Definir claveRegistrada Como Caracter
	Definir validarUsuario Como Logico
	usuarioRegistrado <- 'MIUSUARIO'
	claveRegistrada <- 'MiClave'
	validarUsuario <- Falso
	Si Mayusculas(arg_usuario) = usuarioRegistrado y arg_clave = claveRegistrada Entonces
		validarUsuario <- Verdadero
	SiNo
		validarUsuario <- Falso
	FinSi
FinFuncion

// Declaración del cuerpo principal del programa
Algoritmo Ejemplo24_Programacion_Modular
	Definir usuario Como Caracter
	Definir clave Como Caracter
	Definir intentos Como Entero
	Definir continuar Como Caracter
	continuar <- 'S'
	intentos <- 0
	Repetir
		Escribir 'Ingrese sus credenciales para acceder al sistema:'
		Escribir 'Ingrese Usuario:'
		leer usuario
		Escribir 'Ingrese Clave:'
		leer clave
		Limpiar Pantalla
		si verificarUsuario(usuario,clave) = Verdadero Entonces
			Escribir '*** Bienvenido al Sistema ***'
			continuar <- 'N'
		SiNo
			intentos <- intentos + 1
			Escribir '*** Acceso no permitido ***'
			Escribir '*** Intento Número ',intentos,' ***'
			Si intentos > 2 Entonces
				continuar <- 'N'
				Escribir '*** Se excedio número de intentos ***'
			FinSi
		FinSi
	Hasta Que Mayusculas(continuar) <> 'S'
FinAlgoritmo
