function dibujar() {
  /*
      La instrucción document.getElementById() obtiene el elemento del DOM con el id "lienzo".
  */
  var lienzo = document.getElementById("lienzo");
  /*
      La instrucción console.log() muestra el contenido de la variable lienzo en la consola del navegador.
  */
  console.log(lienzo);
  /*
      La instrucción getContext() obtiene el contexto de dibujo del lienzo. En este caso, se usa "2d" para obtener un contexto bidimensional.
  */
  var contexto = lienzo.getContext("2d");
  console.log(contexto);
  // Se asigna color al atributo fillStyle.
  contexto.fillStyle = "red";
  // Se llama al método fillRect() para dibujar un cuadrado en el lienzo.
  contexto.fillRect(0,0,100,100);
  var i = 0;
  var x = 100;
  var y = 100;
  // Equivalente de un repetir
  /*
  do{
      contexto.fillStyle = colores[i];
      contexto.fillRect(x, y, 100, 100);
      x = x + 100;
      y = y + 100;
      i = i + 1;
  }while(i < 6)
  */
  // Mientras
  /*
  while(i < 6){
      contexto.fillStyle = colores[i];
      contexto.fillRect(x, y, 100, 100);
      x = x + 100;
      y = y + 100;
      i = i + 1;
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
// Declaración de variables
var colores = ["yellow", "blue", "red", "green", "orange", "purple"];