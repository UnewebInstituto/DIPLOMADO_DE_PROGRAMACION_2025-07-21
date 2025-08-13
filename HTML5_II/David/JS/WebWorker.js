//declaracion de la variable contador
var i = 0;

function incrementarContador() {
  i = i + 1;  // Incrementar el contador
  console.warn("Contador enviado desde WebWorker"+ i); // Mostrar el valor del contador en la consola
  postMessage(i); // Enviar el valor del contador al hilo principal
  setTimeout("incrementarContador()", 1000); // Llamar a la función cada segundo
}

// Llamar a la función por primera vez
incrementarContador();