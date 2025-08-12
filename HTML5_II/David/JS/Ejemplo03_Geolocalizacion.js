function obtenerCoordenadas() {
  console.log(navigator);
if (navigator.geolocation) {
  resultado.innerHTML = "Geolocalización soportada por el navegador";
  navigator.geolocation.getCurrentPosition(mostrarCoordenadas, mostrarError);
  }
  else {
  resultado.innerHTML = "¡¡ERROR!!: Geolocalización no soportada por el navegador";
  }
}

function mostrarCoordenadas(posicion) {
  console.log(posicion);
  latitud = posicion.coords.latitude;
  longitud = posicion.coords.longitude;
  resultado.innerHTML += "<br>Latitud: " + latitud + "<br>Longitud: " + longitud;


}

function mostrarError(error) {
  console.log(error);
  switch (error.code) {
    case 1:
      resultado.innerHTML += "<br> ERROR: Usuario denegó la solicitud de Geolocalización.";
      break;
    case 2:
      resultado.innerHTML += "<br> ERROR: Posición no disponible.";
      break;
    case 3:
      resultado.innerHTML += "<br> ERROR: Tiempo de espera agotado.";
      break;
    default:
      resultado.innerHTML += "<br> ERROR: Código de error desconocido.";
      break;
  }
}

function verMapa() {
  var url = "https://www.openstreetmap.org/#map=10/" + latitud + "/" + longitud;
  window.open(url);
}

var resultado = document.getElementById("resultado"); //Esto hace que busque el elemento con id resultado en el HTML

var latitud, longitud; //Declaración de variables

