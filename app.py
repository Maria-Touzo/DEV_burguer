from flask import Flask, render_template
from model.requisitos import recuperar_requisitos

app = Flask(__name__)

# rota pra abrir a página index
@app.route("/")
def pag_index():
    produtos = recuperar_requisitos()
    return render_template("index.html", produtos= produtos)

@app.route("/pagina2")
def pagina_pagina2():
    return render_template("pagina2.html")



app.run(debug= True)