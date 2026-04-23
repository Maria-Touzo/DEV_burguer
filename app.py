from flask import Flask, render_template, request, redirect
from model.requisitos import recuperar_requisitos, destaque, recuperar_produto
from model.usuario import Usuario

app = Flask(__name__)

# rota pra abrir a página index
@app.route("/")
def pag_index():
    produtos = recuperar_requisitos()
    destaques = destaque()
    return render_template("index.html", produtos= produtos, destaques = destaques)

@app.route("/produto/<codigo>")
def pagina_pagina2(codigo):
    produto = recuperar_produto(codigo)
    produto["preco"] = f"{produto['preco']:.2f}"
    return render_template("produto.html", produto = produto)

@app.route("/tela_cadastro", methods=["GET"])
def api_cadastro():
    return render_template("tela_cadastro.html")

@app.route("/tela_cadastro", methods=["POST"])
def pegar_dados():
    nome_usuario = request.form.get("usuario")
    senha = request.form.get("senha")

    novo_usuario = Usuario (nome_usuario, senha)
    if novo_usuario.cadastrar():
        return redirect ("/")
    else:
        return "ERRO"
    



app.run(debug= True)