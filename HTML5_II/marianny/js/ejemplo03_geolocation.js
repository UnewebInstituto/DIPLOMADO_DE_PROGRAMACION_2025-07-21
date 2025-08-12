function obtenerCoordenadas(){
    console.log(navigator);
    if (navigator.geolocation){
        resultado.innerHTML = "Atención: Su navegador soporta Geolocalización";
        navigator.geolocation.getCurrentPosition(mostrarCoordenadas, mostrarError)
    }else{
        resultado.innerHTML = "Error: Su navegador no posee soporte para Geolocalización";
    }
}

function mostrarCoordenadas(p){
    console.log(p)
    latitud = p.coords.latitude;
    longitud = p.coords.longitude;
    resultado.innerHTML += "<br>Latitud: " + latitud + "<br>Longitud: " + longitud;
}

function mostrarError(e){
    console.log(e);
    switch(e.code){
        case 1:
            resultado.innerHTML += "<br>Error: Permiso negado por el usuario.";
            break;
        case 2:
            resultado.innerHTML += "<br>Error: Posición no diponible.";
            break;
        case 3:
            resultado.innerHTML += "<br>Error: Se excedió en el tiempo de espera.";
            break;
        default:
            resultado.innerHTML += "<br>Error: Se desconoce el motivo del error.";
            break;
    }
}

var resultado = document.getElementById("resultado");
var latitud, longitud;