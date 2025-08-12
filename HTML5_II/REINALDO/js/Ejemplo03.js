function obtenerCoordenadas(){
  console.log(navigator);
    if (navigator.geolocation){
      resultado.innerHTML = "Atención: Su navegador soporta Geolocalización"
      navigator.geolocation.getCurrentPosition(mostrarCoordenadas, mostrarError)
    } else{
      resultado.innerHTML = "Error: Su navegador no posee soporte para Geolocalización"
    }
  }
  function mostrarCoordenadas(p){
      latitud =p.coords.latitude;
      longitud = p.coords.longitude;
      resultado.innerHTML += "<br>Latitud: " + latitud + "<br>Longitud: " + longitud;
  }
  function mostrarError(e){
      switch(e.code){
        case 1:
          resultado.innerHTML += "<br> Error: Permiso negado por el usuario"
          break;
        case 2:
        resultado.innerHTML += "<br> Error: Posicion no disponible"
        break;
        case 3:
        resultado.innerHTML += "<br> Error: Se excedio del tiempo de espera"
        break;
        case 4:
        resultado.innerHTML += "<br> Error: Se desconoce el motivo del Error"
        break;
      }
  }
  function verMapa(){
    var url = "https://www.openstreetmap.org/#map=15/" + latitud + "/" + longitud;
    window.open(url)
  }

  var resultado = document.getElementById("resultado")
  var latitud, longitud;