import mysql.connector
def conexion():
    con=mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="",
        database="bdsena",
        port="3306"
    )

    return con


conexion()