from conexion import conexion
con=conexion()
mcursor=con.cursor()
mcursor.execute("select * from estado")
estados=mcursor.fetchall()
print("**************Lista de tuplas***********************")
print(estados)
print("***********Tuplas**************************")
for estado in estados:
    print("id ",estado[0])
    print("estado ",estado[1])

print("**********Recorriendo Posicion Tupla y LIsta************************")
for i in range(0,len(estados)):
    print("id ",estados[i][0])
    print("estado ",estados[i][0])
con.close()