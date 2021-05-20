from conexion import conexion
from busquedafuncion import mostrarestados,mostarclima
import mysql.connector
try:
    con=conexion()
    mcursor=con.cursor()
    codigo=input("digite el codigo del municipio\n")
    clima=mostarclima(con,codigo)
    if(len(clima)==0):
        print("No encontro datos de clima")
    else:
       print(clima)
       codigo=clima[0][0]
       municipio=clima[0][1]
       cent=clima[0][2]
       estado=clima[0][3]
       desm=input("desea actualizar municipio s/n\n")
       if(desm=='s'):
           municipio=input("Digite el Nombre Municipio a Actualizar\n")
       desc=input("desea actualizar centigrados s/n\n")
       if(desc=='s'):
           cent=int(input("Digite centigrados a Actualizar\n"))
       mostrarestados(con)
       dese=input("desea actualizar estado s/n\n")
       if(dese=='s'):
           estado=int(input("Digite centigrados a Actualizar\n"))
    
       print(codigo,municipio,cent,estado)
       sql="update clima set municipio=%s,cent=%s,estado=%s where codigo=%s"
       val=(municipio,cent,estado,codigo)
       mcursor.execute(sql,val)
       con.commit()
       print(mcursor.rowcount,"Registro Actualizado")
       mcursor.close()
       con.close()

      

except mysql.connector.Error as err:
    print(err)
    if(err.errno==1062):
        print("Registro Existe!!")
    elif(err.errno==1452):
        print("Estado No Existe")