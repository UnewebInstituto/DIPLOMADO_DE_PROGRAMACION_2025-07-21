<?php
    // Conectarse a la base de datos
    // Parametros de conexión
  $servidor = "localhost";
  $usuario = "root";
  $clave = ""; 
  $bd = "bd_copia_david";
    // Crear Conexión
  try{
    // Intentar conectar a la base de datos
    $conexion = mysqli_connect($servidor, $usuario, $clave, $bd);
    // Definir la consulta
    $sql = "Select * from vista_productos";
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
    // Si la conexion falla, mostrar error
    echo "ERROR:" . $th->getMessage();
  }






?>