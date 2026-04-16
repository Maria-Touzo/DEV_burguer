from flask import Flask, render_template
from model.requisitos import recuperar_requisitos, destaque, recuperar_produto

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
    return render_template("produto.html", produtos = produto)



app.run(debug= True)