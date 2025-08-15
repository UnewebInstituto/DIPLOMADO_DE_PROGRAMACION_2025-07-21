/** 
 * 1- Dependencias o librerias a incluir    
 * 2- Declaración de funciones
 * 3- Declaración de variables  
 * 4- Cuerpo principal del programa
 * 
*/

function cambiarImagen(argumento){
  let imagen_principal = document.getElementById("imagen_principal");
  imagen_principal.src = argumento.src;
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
  mostrarFechaHora.innerHTML = fechaHoraSistema;

  
}


// Declaración de variables
var fechaHoraSistema;
var mostrarFechaHora = document.getElementById("fecha_hora");
var aa, mm, dd, hr, mi, ss, dia;
var meridiano = "AM";
var diasSemana = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];


// Cuerpo principal del programa
// 1er. Llamado a la función
obtenerFechaHoraSistema();

// 2do. Llamado a la función cada 1 segundo (1000 milisegundos)
// Función 1
//setInterval(obtenerFechaHoraSistema, 1000);
// Función 2
setTimeout("obtenerFechaHoraSistema()", 1000);
