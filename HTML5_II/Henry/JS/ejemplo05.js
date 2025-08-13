function iniciarTrabajador() {
    var resultado = document.getElementById("contador");
    if (typeof(Worker) !== "undefined") {
        if (typeof(w) === "undefined") {
            w = new Worker("./JS/webworker.js");
        }
        w.onmessage = function(event) {
            resultado.innerHTML = event.data;
        };
    } else {
        resultado.innerHTML = "El navegador no soporta Web Workers.";
    }
}

function detenerTrabajador() {
    var resultado = document.getElementById("contador");
    if (typeof(w) !== "undefined") {
        w.terminate(); // Detiene el trabajador
        w = undefined; // Reinicia la variable
        resultado.innerHTML = "Web Worker detenido."; // Mensaje al detener
    }
}

// Declaración de la variable
var w;
