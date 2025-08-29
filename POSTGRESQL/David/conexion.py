# importar dependencia previamente instalada
import psycopg2

# Creacion de objeto para la conexion
conexion = None

try: 
  # Establecer conexión
  conexion = psycopg2.connect(database="bd_david_20250825", user="postgres", password="123456", host="localhost", port="5432")
  # Crear interface para comandos
  cursor = conexion.cursor()
  # Establecer comando que corre sobre ese cursor
  sql = "select * from electrodomesticos.vista_proveedores_productos"
  # Ejecutar el comando
  cursor.execute(sql)
  # Recuperar el resultado de la ejecución del comando
  datos = cursor.fetchall()
  # Mostrar contenido de la información que se recuperó
  for detalle in datos:
    print(detalle)
except (Exception, psycopg2.Error) as error:
  print("Error: ", error)

finally:
 # Cerrar conexión a la base
 if conexion:
    cursor.close() #Cerrar interface de comandos
    conexion.close() #Cerrar conexion a la base de datos
    print("The End")