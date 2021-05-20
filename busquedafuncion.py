def mostrarestados(con):
    mcursor=con.cursor()
    mcursor.execute("select * from estado")
    estados=mcursor.fetchall()
    print("***********Estados********************")
    for estado in estados:
        print(estado[0],estado[1])  
    
def mostarclima(con,codigo):
    sql="select * from clima where codigo=%s"
    param=(codigo,)
    mcursor=con.cursor()
    mcursor.execute(sql,param)
    clima=mcursor.fetchall()
    return clima
