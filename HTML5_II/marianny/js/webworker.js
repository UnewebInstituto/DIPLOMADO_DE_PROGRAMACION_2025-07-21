// declaración de la variable contador
var i = 0;

function incrementarContador(){
    i = i + 1; // incrementa el contador
    postMessage(i); //envía el valor de i al hilo principal
    setTimeout("incrementarContador()",1000); //vuelve a llamar a la función en 1 segundo
}

// llama a la función por primera vez
incrementarContador();
