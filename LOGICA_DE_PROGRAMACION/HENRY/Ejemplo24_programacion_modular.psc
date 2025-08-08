
	//Declaracion de funcion 
Funcion  verificarUsuario<- validarUsuario(arg_usuario,arg_clave)
	Definir verificarUsuario Como Logico
	Definir usuarioRegistrado Como Caracter
	Definir claveRegsitrada Como Caracter
	usuarioRegistrado<- 'MIUSUARIO'
	claveRegsitrada<- 'Miclave'
	verificarUsuario<-Falso
	si Mayusculas(arg_usuario)=usuarioRegistrado y arg_clave= claveRegsitrada Entonces
		verificarUsuario<-Verdadero 
	SiNo
		verificarUsuario<-Falsos
	FinSi
	
	
FinFuncion

	
	
	//Declaracion de cuerpo principal del programa
Algoritmo Ejemplo24_programacion_modular	
	
	Definir Usuario Como Caracter
	definir clave Como Caracter
	Definir intentos Como entero
	intentos<-0
	Repetir
		Escribir 'Ingrese usuario'
		leer usuario
		Escribir ' Ingrese clave:'
		Leer clave
		intentos<-intentos+1
	Hasta Que verificarUsuario(usuario,clave)= Verdadero o intentos > 3
	si verificarUsuario(usuario,clave)=Verdadero Entonces
		Escribir 'Bienvenido al sistema'
	FinSi
	Si intentos >3  Entonces
		Escribir 'Acceso no permitido'
	FinSi
	
	
	
	
	
	
	
FinAlgoritmo
