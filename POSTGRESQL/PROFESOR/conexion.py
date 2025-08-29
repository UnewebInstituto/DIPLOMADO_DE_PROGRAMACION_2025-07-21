# Importar dependencia previamente instalada
import psycopg2

# Creación de objeto de para la conexión
conexion = None

try:
    # Establecer conexión
    conexion = psycopg2.connect(database="bd_profesor_20250825", user="postgres", password="123456", host="localhost", port="5432")
    # Crear interface para comandos
    cursor = conexion.cursor()
    # Establecer comando que corre sobre el cursor
    sql = "SELECT * FROM electrodomesticos.vista_proveedores_productos"
    # Ejecutar comando
    cursor.execute(sql)
    # Rescuperar resultado de la ejecución del comando
    datos = cursor.fetchall()
    # Mostrar contenido de la información que se recuperó
    for detalle in datos:
        print(detalle)
        #print(detalle[0])
except (Exception, psycopg2.Error) as error:
    print("Error:", error)
finally:
    # Cerrar conexión a la base de datos
    if conexion:
        cursor.close() # Cerrar interface de comandos
        conexion.close() # Cerrar conexión a la base de datos
        print("Fin...")





