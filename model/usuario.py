from database.conexao import conectar

def adicionar_usuario(nome:str, senha:str):
    """
    Adiciona o usuario e retorna se deu certo ou não
    """
    try:

        conexao, cursor = conectar()

        cursor.execute("INSERT INTO usuario (nome_usuario, senha) VALUES (%s, %s)", [nome, senha])

        conexao.commit()

        conexao.close()

        return True
    
    except Exception as erro:
        print (erro)    
     
