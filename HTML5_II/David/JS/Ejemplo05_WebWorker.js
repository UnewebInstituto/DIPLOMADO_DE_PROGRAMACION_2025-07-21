function iniciarTrabajador(){
  var resultado = document.getElementById("Contador");
   if(typeof(Worker) !== "undefined"){
      if(typeof(w) == "undefined"){
        //Se crea el WebWorker
          w = new Worker("./JS/WebWorker.js");
      }
      w.onmessage = function(event){
        console.error("Mensaje recibido desde el Web Worker: " + event.data);
        //Se muestra el resultado en el elemento HTML
        resultado.innerHTML = event.data;
      }
    }else{
      resultado.innerHTML = "Lo siento, tu navegador no soporta Web Workers...";
    }
}

function detenerTrabajador(){
  w.terminate();
  w = undefined;
  document.getElementById("Contador").innerHTML = "Web Worker detenido.";
}

//Declaracion de variables
var w;