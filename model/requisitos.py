from database.conexao import conectar
def recuperar_requisitos():
    conexao, cursor = conectar()
  
    cursor.execute("SELECT codigo, produto, descricao, preco, foto, disponibilidade FROM hamburgueres")
    resultado = cursor.fetchall()
    cursor.close()
    conexao.close()
    return resultado

def destaque():
    conexao, cursor = conectar()
    cursor.execute("SELECT codigo, foto from hamburgueres WHERE destaque = 1;")
    resultado = cursor.fetchall()
    conexao.close()
    return resultado

def recuperar_produto(codigo:int):
    conexao, cursor = conectar()
    cursor.execute("SELECT codigo, produto, descricao, preco, foto, disponibilidade FROM hamburgueres WHERE codigo =%s ", [codigo])
    resultado = cursor.fetchone()
    conexao.close()
    return resultado