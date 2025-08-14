/**
 * Forma tradicional de crear función
 */
/*
function detectarCambios() {
    conocimientos_ti = document.getElementById("conocimientos_ti");
    resultado_conocimientos_ti = document.getElementById("resultado_conocimientos_ti");
    resultado_conocimientos_ti.innerHTML = conocimientos_ti.value;   
}
*/

/**
 * Declaración Arrow Function 
 * */
const detectarCambios = () => {
conocimientos_ti = document.getElementById("conocimientos_ti");
    resultado_conocimientos_ti = document.getElementById("resultado_conocimientos_ti");
    resultado_conocimientos_ti.innerHTML = conocimientos_ti.value;
}

const cambiosProgress = () =>{
    conocimientos_py = document.getElementById("conocimientos_py");
    resultado_conocimientos_py = document.getElementById("resultado_conocimientos_py");
    resultado_conocimientos_py.value = conocimientos_py.value;   
}

const cambiosMeter = () =>{
    conocimientos_ia = document.getElementById("conocimientos_ia");
    resultado_conocimientos_ia = document.getElementById("resultado_conocimientos_ia");
    resultado_conocimientos_ia.value = conocimientos_ia.value;   
}

// Declaración de variables
var conocimientos_ti;
var resultado_conocimientos_ti;
var conocimientos_ia;
var resultado_conocimientos_ia;
var conocimientos_py;
var resultado_conocimientos_py;