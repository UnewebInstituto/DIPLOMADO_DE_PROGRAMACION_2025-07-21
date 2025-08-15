/** 
 * 1- Dependencias o librerias a incluir    
 * 2- Declaración de funciones
 * 3- Declaración de variables  
 * 4- Cuerpo principal del programa
 * 
*/

function cambiarImagen(argumento){
  //let imagen_principal = document.getElementById("imagen_principal");
  imagen_principal = $("#imagen_principal"). attr("src");
  console.log(imagen_principal)
  $("#imagen_principal").attr("src",argumento.src);
}

function obtenerFechaHoraSistema(){
  fechaHoraSistema = new Date();
  aa = fechaHoraSistema.getFullYear();
  mm = fechaHoraSistema.getMonth();
  dd = fechaHoraSistema.getDate();
  hr = fechaHoraSistema.getHours();
  mi = fechaHoraSistema.getMinutes();
  ss = fechaHoraSistema.getSeconds();
  dia = fechaHoraSistema.getDay();
  console.log(aa,mm,dd,hr,mi,ss,dia);
  if (hr > 12){
      hr = hr - 12;
      meridiano = "PM";
  }
  if (mi < 10){
      mi = "0" + mi;
  }
  if (ss < 10){
      ss = "0" + ss;
  }

  fechaHoraSistema = diasSemana[dia] + ", " + dd + " de " + meses[mm] + " de " + aa + " - " + hr + ":" + mi + ":" + ss + " " + meridiano;

  console.log(fechaHoraSistema);
  //mostrarFechaHora.innerHTML = fechaHoraSistema;
  $("#fecha_hora").html(fechaHoraSistema);
  
}


var fechaHoraSistema;
var mostrarFechaHora = $("#fecha_hora");
console.log("Mostrar Fecha y Hora")
console.log(mostrarFechaHora)
var aa, mm, dd, hr, mi, ss, dia;
var meridiano = "AM";
var diasSemana = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];


obtenerFechaHoraSistema();
setInterval(obtenerFechaHoraSistema)