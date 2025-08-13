function iniciarTrabajador() {
  var resultado = document.getElementById("contador");
  if (typeof(Worker) !== "undefined") {
      if (typeof(w) == "undefined"){
          // Se crea el webworker
          w = new Worker("./js/webworker.js");
      }
      w.onmessage = function(event) {
          console.error("Mensaje recibido desde el WebWorker: " + event.data);
          resultado.innerHTML = event.data;
      }
  }else{
      resultado.innerHTML = "Lo siento. Tu navegador no soporta Web Workers...";
  }
}

function detenerTrabajador() {
  w.terminate();
  w = undefined;
  document.getElementById('contador').innerHTML = "WebWorker detenido.";
}

// Declaración de variables
var w;
