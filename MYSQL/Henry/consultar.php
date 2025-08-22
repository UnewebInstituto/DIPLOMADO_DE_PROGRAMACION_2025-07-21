<?php
    // Conectarse a la base de datos
    // Parámetros de conexión
    $servidor = "localhost";
    $usuario = "root";
    $clave = "";
    $bd = "bd_copia_profesor";
    // Crear conexión
    try {
        // Intentar conectarse a la base de datos
        $conexion = mysqli_connect($servidor, $usuario, $clave, $bd);
        // Definir la consulta
        $sql = "SELECT * FROM vista_productos";
        // Ejecutar la consulta
        $resultado = mysqli_query($conexion, $sql);
        // Verificar los resultados
        if (mysqli_num_rows($resultado) > 0) {
            // Mostrar los resultados 
            while ($datos = mysqli_fetch_array($resultado)){
                echo $datos['producto'] . ", " . $datos['precio'] . ", " . $datos['cantidad'] . "\n";
            }
        } else {
            // No se obtuvieron resultados
            echo "No se encontraron productos.";
        }
    } catch (\Throwable $th) {
        // Si hay un error, mostrarlo
        echo "ERROR:" . $th->getMessage();
    }
?>