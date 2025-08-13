function manejadorInicioArrastre(ev){
  //console.log(ev);
  ev.dataTransfer.setData("text", ev.target.id);
}

function manejadorSoltar(ev){
  ev.preventDefault();
  const data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}

function manejadorArrastrarSobre(ev){
  ev.preventDefault();
}