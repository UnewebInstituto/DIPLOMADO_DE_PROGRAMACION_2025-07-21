const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');
const path = require('path');

const app = express();
const PORT = 3002;
const DATA_FILE = path.join(__dirname, 'formData.txt'); // Archivo donde se guardarán los datos del formulario

// Middleware para parsear los datos del formulario codificados en URL
app.use(bodyParser.urlencoded({ extended: true }));

// Sirve archivos estáticos (tu formulario HTML)
app.use(express.static(__dirname)); 

// Endpoint para manejar las submisiones del formulario
app.post('/guardar-datos-formulario', (req, res) => {
    const formData = req.body; // Los datos del formulario estarán en req.body

    // Puedes personalizar cómo quieres formatear los datos para tu archivo
    // Por ejemplo, convertir el objeto a una cadena, JSON, o un formato personalizado
    const dataToSave = JSON.stringify(formData, null, 2) + '\n---\n'; // Añade un separador para múltiples envíos

    // Adjunta los datos al archivo
    fs.appendFile(DATA_FILE, dataToSave, (err) => {
        if (err) {
            console.error('Error al escribir en el archivo:', err);
            return res.status(500).send('Error al guardar los datos.');
        }
        console.log('¡Datos del formulario guardados con éxito!');
        // Redirige o envía un mensaje de éxito al cliente
        res.status(200).send('¡Formulario enviado y datos guardados!');
        // Alternativamente, podrías redirigir:
        // res.redirect('/exito.html'); // Crea una página exito.html
    });
});
app.listen(PORT, () => {
  console.log(`Servidor ejecutándose en http://localhost:${PORT}`);
  console.log(`Los datos del formulario se guardarán en: ${DATA_FILE}`);
});