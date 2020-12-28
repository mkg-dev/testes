#language: pt
Funcionalidade: Ficha
    Sendo um usuario
    Quero logar no sistema AG Photo
    Para gerencia meu negocio

    @ficha
    Cenario: Cadastro ficha
        Dado que acesso a pagina de login
        Quando entro com minhas credenciais
        Então sou direcionado para home
        Quando submeto o formulario da ficha
        Então vejo a lista de fichas

# @deletar_ficha
# Cenario: Deletar ficha
# Dado que tenho a ficha indesejada
# Quando eu solicito a exclusão dessa ficha
# E confirmo a exclusão
# Entao nao vejo mais a ficha na lista