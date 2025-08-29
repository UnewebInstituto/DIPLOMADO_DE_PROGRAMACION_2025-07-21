# imprtar dependecnia previamente instalada
import psycopg2
#creacin de objeto para la conexion 
conexion = None
try: 
  #establecer conexion
  conexion=psycopg2.connect(database="bd_henry_20250825", user="postgres", password="123456", host="localhost", port="5432")
  #crear interfaces para comandos
  cursor=conexion.cursor()
  #comando que corre con el cursor 
  sql= "Select * from electrodomesticos.vista_proveedres_productos"
  #ejecutar comando 
  cursor.execute(sql)
  #recuperar resultado de la ejecucion del comando 
  datos= cursor.fetchall()   #traeta todo= fecthall
  #mostrar contenido de la info que se quiere
  for detalle in datos:
    print(detalle)
    #cerrar conexion a la base de datos
    #ejecutar como error
except (Exception,psycopg2.Error) as error:
  print ("Error",error)
finally:
  #cerrar conexion a la base de datos
  if conexion:
    conexion.close()#cerrar interface de comandos 
    cursor.close()#cerrar conexion a la base de datos 
    print ("Fin")