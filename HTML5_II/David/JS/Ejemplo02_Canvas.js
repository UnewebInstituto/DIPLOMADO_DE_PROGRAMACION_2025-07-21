function dibujar() {

      /*
      La instrucción document.getElementById() obtiene el elemento del DOM que tiene el id especificado (en este caso "lienzo").
      */

      var lienzo = document.getElementById("lienzo");
      /* 
      La instrucción console.log() muestra el contenido de la variable en la consola del navegador.
      */

      console.log(lienzo);

      /*
      La instrucción getContext("2d") obtiene el contexto de renderizado 2D para el elemento canvas. Este contexto proporciona métodos y propiedades para dibujar y manipular gráficos en el lienzo.
      Tambien se puede en 3d
      */

      var contexto = lienzo.getContext("2d");
      console.log(contexto);

      contexto.fillStyle = "black";
      contexto.fillRect(0, 0, 100, 100); // Dibuja un rectángulo rojo en el lienzo

      var i = 0; //i por indice
      var x = 100; // Posición x del rectángulo
      var y = 100; // Posición y del rectángulo

      // Equivalente de un repetir

      /*
      do{
        contexto.fillStyle = colores[i]
        contexto.fillRect(x, y, 100, 100); // Dibuja un rectángulo en el lienzo
        
        x = x + 100; // Incrementa la posición x para el siguiente rectángulo
        y = y + 100; // Incrementa la posición y para el siguiente rectángulo
        i= i + 1; // Incrementa el índice para el siguiente color
      }while(i < 6)
      */
    
      /*
      // Mientras
      while (i < 6) {
        contexto.fillStyle = colores[i]; // Asigna un color al rectángulo
        contexto.fillRect(x, y, 100, 100); // Dibuja el rectángulo en el lienzo
        x = x + 100; // Incrementa la posición x para el siguiente rectángulo
        y = y + 100; // Incrementa la posición y para el siguiente rectángulo
        i = i + 1; // Incrementa el índice para el siguiente color
      }
      */

      // Para
      for(i = 0; i < 6; i = i + 1){
        contexto.fillStyle = colores[i];
        contexto.fillRect(x, y, 100, 100);
        x = x + 100;
        y = y + 100;
        }
      }
    //Declaracion de variables
    
    var colores = ["red", "green", "blue", "yellow", "purple", "orange"];