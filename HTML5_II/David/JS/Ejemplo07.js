/**
 * 1- Dependencias o librerías
 * 2- Definicion de funciones
 * 3- Declaracion de variables
 * 4- Cuerpo principal del programao 
 */

function cambiarImagen(argumento){
  console.log(argumento)
  console.log(argumento.src)
  console.log(argumento.id)
  let imagenPrincipal = document.getElementById("imagenPrincipal");
  tmp_img = imagenPrincipal.src;
  imagenPrincipal.src = argumento.src;
  document.getElementById(argumento.id).src = tmp_img;
  //argumento.src = tmp_img.src
}

// Declaracion de variables
var tmp_img = '';