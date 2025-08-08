
//Declaracion de funciones
Funcion producto<-potencia(arg_base,arg_expo) 
	si arg_base<0 o arg_expo<0 entonces 
		producto<- 'Error: el valor de la base y exponente debe ser entero positivo'
	SiNo
		Definir i Como Entero
		definir resultado Como Entero
		i<-0
		resultado<-1
		mientras i< arg_expo Hacer
			resultado<-resultado*arg_base
			i<-i+1
		FinMientras
		producto<- 'Resultado:   la potencia de  ' + ConvertirATexto(arg_base)+ '  elevado a la   '+ ConvertirATexto(arg_expo)+ '  es igual a   ' +ConvertirATexto(resultado)
    FinSi
FinFuncion
Funcion suma<- sumar(arg_n1,arg_n2)
	suma<-'  resultado: la suma de  ' +ConvertirATexto(arg_n1)+'  mas   '+ConvertirATexto(arg_n2)+ '   es igual a   '+ ConvertirATexto(arg_n1+arg_n2)
FinFuncion
Funcion resta<-restar(arg_n1,arg_n2)
	resta<-'  resultado: la resta de  ' +ConvertirATexto(arg_n1)+'  menos   '+ConvertirATexto(arg_n2)+ '   es igual a   '+ ConvertirATexto(arg_n1-arg_n2)
FinFuncion
Funcion multiplica<- multiplicar(arg_n1,arg_n2)
	multiplica<-'  resultado: la multiplicacion de  ' +ConvertirATexto(arg_n1)+'  por   '+ConvertirATexto(arg_n2)+ '   es igual a   '+ ConvertirATexto(arg_n1*arg_n2)
FinFuncion
Funcion divide<- dividir(arg_n1,arg_n2)
	si arg_n2= 0 Entonces
		divide<- 'error division por cero'
	SiNo
		divide<-'  resultado: la division de  ' +ConvertirATexto(arg_n1)+'  divido entre   '+ConvertirATexto(arg_n2)+ '   es igual a   '+ ConvertirATexto(arg_n1/arg_n2)
	FinSi
FinFuncion
Algoritmo Ejemplo23s_programacion_modula
	//Declaracion de variables
	Definir n1 Como Entero
	Definir n2 Como Entero
	Definir continuar como caracter
	Definir resultado Como Entero
	Definir operacion Como Caracter
	//Inicializacion de variables
	n1<-0
	n2<-0
	resultado<-0
	continuar<- 'S'
	Repetir 
		Limpiar Pantalla
		Escribir 'Ejemplo 23 Programacion Modular-Funciones-Caso Calculadora'
		Repetir
		    Escribir 'Seleccione la operacion que quiere hacer'
			Escribir '+'
			Escribir '-'
			Escribir '*'
			Escribir '/'
			Escribir '^'
		    Leer operacion
		Hasta Que 	operacion = '+' o operacion = '-'o operacion= '*' o operacion ='/' o operacion = '^'
		Escribir 'Ingrese los valores que quiera'
		Escribir 'Ingrese el primer valor:'
		Leer n1
		Escribir 'Ingrese el segundo valor'
		Leer n2
		//Llamado de la Funcion 
		Segun operacion
			'+':Escribir sumar(n1,n2)
			'-':Escribir restar(n1,n2)	
			'*':Escribir multiplicar(n1,n2)
			'/':Escribir dividir(n1,n2)		
			'^':Escribir potencia(n1,n2)
		FinSegun
		Repetir
		Escribir 'Usted desea calcular otra cosa(S/N)?'
			Leer continuar
			si Mayusculas(continuar)<> 'S' y Mayusculas(continuar)<> 'N' Entonces
				Escribir 'Error indique un caracter correcto'
			FinSi
		Hasta Que 	Mayusculas(continuar)='S' o Mayusculas(continuar)='N'
	Hasta Que Mayusculas(continuar)<> 'S'
	Escribir 'Fin....'
FinAlgoritmo

	