function iniciarTrabajador() {
  var resultado = document.getElementById("contador");
  if (typeof(Worker) !== "undefined") {
      if (typeof(w) == "undefined"){
          // Se crea el webworker
          w = new Worker("./js/webworker.js");
      }
      w.oonmessage = function(event){
        console.error("Mensaje recibido desde el WebWorker")
        resultado.innerHTML = event.data;
      }
    }else{
        document.innerHTML = "Lo siento. Tu navegador no soporta Web Worker"
      }
    }
function detenerTrabajador() {
    w.terminate()
    w= undefined;
    document.getElementById("contador").innerHTML = "WebWorker detenido"
    
}