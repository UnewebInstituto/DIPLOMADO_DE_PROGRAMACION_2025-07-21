//Declaracion de la variable contador
var i=0;

function incrementarContador() {
    // Incrementar el contador
    i=i+1;
    // Enviar el valor del contador al hilo principal
    postMessage(i);
    setTimeout("incrementarContador()", 1000);
}

incrementarContador();