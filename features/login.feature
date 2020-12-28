#language: pt
Funcionalidade: Logar
    Sendo um usuario
    Quero logar no sistema AG Photo
    Para gerencia meu negocio

    @login
    Cenario: Tentativa login
        Dado que acesso a pagina de login
        Quando entro com minhas credenciais
        Então sou direcionado para home
        


