<title>Tela-de-login</title

import tkinter as tk
from xml.dom.minidom import DOMImplementation

def login():
    username = entry_username.get()
    password = entry_password.get()

    # Lógica de autenticação aqui (pode ser um banco de dados, API, etc.)
    if username == "usuario" and password == "senha":
        label_result.config(text="Login bem-sucedido!")
    else:
        label_result.config(text="Credenciais inválidas!")

def cadastrar():
    username = entry_username.get()
    password = entry_password.get()

    # Lógica de cadastro aqui (pode ser um banco de dados, API, etc.)
    # Neste exemplo, apenas exibimos uma mensagem
    label_result.config(text=f"Usuário {username} cadastrado com sucesso!")

# Criar a janela principal
root = tk.Tk()
root.title("Tela de Login e Cadastro")

# Widgets
label_username = tk.Label(root, text="Usuário:")
label_password = tk.Label(root, text="Senha:")
entry_username = tk.Entry(root)
entry_password = tk.Entry(root, show="*")
button_login = tk.Button(root, text="Login", command=login)
button_cadastrar = tk.Button(root, text="Cadastrar", command=cadastrar)
label_result = tk.Label(root, text="")

# Posicionamento dos Widgets
label_username.grid(row=0, column=0, sticky=tk.E)
label_password.grid(row=1, column=0, sticky=tk.E)
entry_username.grid(row=0, column=1)
entry_password.grid(row=1, column=1)
button_login.grid(row=2, column=0, columnspan=2, pady=5)
button_cadastrar.grid(row=3, column=0, columnspan=2, pady=5)
label_result.grid(row=4, column=0, columnspan=2)

# Executar a aplicação
root.mainloop()
