let indice = 0; // Índice para controlar la imagen actual
let imagenes = []; // Array para almacenar las imágenes

function iniciarRotacion() {
  // Obtén todas las imágenes del contenedor secundario
  imagenes = document.querySelectorAll("#secundario img");

  // Si hay imágenes, inicia la rotación
  if (imagenes.length > 0) {
    setInterval(rotarImagen, 3000); // Cambia la imagen cada 3 segundos
  }
}

function rotarImagen() {
  let imagen_principal = document.getElementById("imagen_principal");

  // Cambia la imagen principal al siguiente elemento del array
  imagen_principal.src = imagenes[indice].src;

  // Incrementa el índice y reinícialo si llega al final
  indice = (indice + 1) % imagenes.length;
}

// Llama a la función para iniciar la rotación al cargar la página
window.onload = iniciarRotacion;

function cambiarImagen(argumento){
  let imagen_principal = document.getElementById("imagen_principal");
  imagen_principal.src = argumento.src;
}