#language: pt
Funcionalidade: Contrato
    Sendo um usuario
    Quero logar no sistema AG Photo
    Para gerencia meu negocio

    @contrato
    Cenario: Cadastrar contrato
        Dado que acesso a pagina de login
        Quando entro com minhas credenciais
        Então sou direcionado para home

        Dado que acesso o formulario de cadastro de contrato
            E que eu tenho a seguinte informcao:

            | data      | 20/12/2020       |
            | prestador | 24               |
            | inst      | FACU TESTE       |
            | tip       | Faculdade        |
            | cep       | 17580000         |
            | endereco  | Rua universidade |
            | num       | 321              |
            | bairro    | Universitario    |
            | fone      | 1434529900       |
            | curso     | mecanica         |
            | evento    | 202210           |
            | periodo   | manhã            |
            | tpcon     | Eventos          |
            | fichas    | 30               |
            | partc     | 10               |

        Quando submeto o cadastro
        Então devo ver esse na lista de contrato



