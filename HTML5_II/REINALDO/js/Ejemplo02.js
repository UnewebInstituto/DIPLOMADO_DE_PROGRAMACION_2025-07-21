function dibujar(){
  var lienzo= document.getElementById("lienzo");
  /*
    La instruccion document.getElementByID("lienzo") obtiene el elemento del DOM con el ID "lienzo"
  */
  console.log(lienzo);
  /* 
    La instruccion console.log muestra el contenido de la variable lienzo en la consola del navegador
  */
  var contexto = lienzo.getContext("2d");
  console.log(contexto);
  // Se asigna color al atributo fillStyle
  contexto.fillStyle = "red"
  // Se llama al metodo fillRect() para dibujar un cuadrado en el lienzo
  
  contexto.fillRect(0,0,100,100);
  /*
  contexto.fillRect(0,100,100,100)
  contexto.fillRect(100,200,100,100)
  contexto.fillRect(200,300,100,100)
  contexto.fillRect(300,400,100,100)
  contexto.fillRect(400,500,100,100)
  contexto.fillRect(500,600,100,100)
  contexto.fillRect(600,700,100,100)
  contexto.fillRect(700,800,100,100)
  */
var i=0
var x=0
var y=100
// Repetir
/*do{
  contexto.fillStyle = color[i];
  contexto.fillRect(x,y,100,100);
  x = x + 100;
  y = y + 100;
  i = i + 1;
}while(i < 6) */


//Mientras
while (i<6){
contexto.fillStyle = color[i];
  contexto.fillRect(x,y,100,100);
  x = x + 100;
  y = y + 100;
  i = i + 1;
}
//Para
/*for(i = 0; i < 6; i = i + 1){
  contexto.fillStyle = colores[i];
    contexto.fillRect(x, y, 100, 100);
    x = x + 100;
    y = y + 100;
    }*/
}
//Declaracion de Variables
var color = ["yellow","blue","red", "green", "orange", "purple"];