from conexion import conexion
from busquedafuncion import mostrarestados
import mysql.connector
try:
    con=conexion()
    mcursor=con.cursor()
    sql="insert into clima values(%s,%s,%s,%s)"
    codigo=input("digite el codigo del municipio\n")
    municipio=input("digite el municipio\n")
    cent=int(input("digite grados Centigrados\n"))
    mostrarestados(con)
    estado=int(input("digite el estado\n"))
    val=(codigo,municipio,cent,estado)
    mcursor.execute(sql,val)
    con.commit()
    print(mcursor.rowcount,"Registro Insertado")
    mcursor.close()
    con.close()

except mysql.connector.Error as err:
    
    if(err.errno==1062):
        print("Registro Existe!!")
    elif(err.errno==1452):
        print("Estado No Existe")


