Algoritmo tarea_lavieja
    // Definiciones con variables renombradas (sin usar 'y')
    Definir u Como Caracter    // Jugador 2 (O)
    Definir x Como Caracter    // Jugador 1 (X)
    Definir f Como Entero 
	definir c como entero // Coordenadas (fila y columna)
    Dimension tab[3,3]         // Tablero
    
    // Inicialización
    x <- 'X'
    u <- 'O'
    
	// Llenar tablero con espacios vacíos
    Para f <- 1 Hasta 3 Hacer
        Para c <- 1 Hasta 3 Hacer
            tab[f,c] <- ' '
        FinPara
    FinPara
    
    // Bucle principal con turnos alternados
    Definir turno Como Entero
    turno <- 1  // 1 para X, 2 para O
    
    Mientras Verdadero Hacer
        // Mostrar tablero (opcional)
        Escribir "  0 1 2"
        Para f <- 0 Hasta 2 Hacer
            Escribir f, " ", tab[f,0], "|", tab[f,1], "|", tab[f,2]
            Si f < 2 Entonces
                Escribir "  -----"
            FinSi
        FinPara
        
        // Turno del jugador correspondiente
        Segun turno Hacer
            1:  // Turno de X
                Escribir "Turno de X (fila y columna 0-2):"
                Leer f, c
                Si f >= 0 Y f <= 2 Y c >= 0 Y c <= 2 Y tab[f,c] = ' ' Entonces
                    tab[f,c] <- x
                    turno <- 2  // Pasa a O
                Sino
                    Escribir "Movimiento inválido, intente nuevamente"
                FinSi
                
            2:  // Turno de O
                Escribir "Turno de O (fila y columna 0-2):"
                Leer f, c
                Si f >= 0 Y f <= 2 Y c >= 0 Y c <= 2 Y tab[f,c] = ' ' Entonces
                    tab[f,c] <- u
                    turno <- 1  // Pasa a X
                Sino
                    Escribir "Movimiento inválido, intente nuevamente"
                FinSi
        FinSegun
    FinMientras
FinAlgoritmo