from database.conexao import conectar
def recuperar_requisitos():
    conexao, cursor = conectar()
  
    cursor.execute("SELECT codigo, produto, descricao, preco, foto, disponibilidade FROM hamburgueres")
    resultado = cursor.fetchall()
    cursor.close()
    conexao.close()
    return resultado